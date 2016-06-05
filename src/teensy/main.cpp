/*
 *  blinky.c for the Teensy 3.1 board (K20 MCU, 16 MHz crystal)
 *
 */

#include <WProgram.h>

#define ARRAY_SIZE_OF(a) (sizeof(a) / sizeof(a[0]))

#define LED    14
#define SYNC   22
#define CLI    23

#define FPGA0  15
#define FPGA1  16
//#define FPGA2  17
//#define FPGA3  15

static bool spi_pin_is_cs(uint8_t pin)
{
	if (pin == 2 || pin == 6 || pin == 9) return true;
	if (pin == 10 || pin == 15) return true;
	if (pin >= 20 && pin <= 23) return true;
	return false;
}

static uint8_t spi_configure_cs_pin(uint8_t pin)
{
	switch (pin) {
		case 10: CORE_PIN10_CONFIG = PORT_PCR_MUX(2); return 0x01; // PTC4
		case 2:  CORE_PIN2_CONFIG  = PORT_PCR_MUX(2); return 0x01; // PTD0
		case 9:  CORE_PIN9_CONFIG  = PORT_PCR_MUX(2); return 0x02; // PTC3
		case 6:  CORE_PIN6_CONFIG  = PORT_PCR_MUX(2); return 0x02; // PTD4
		case 20: CORE_PIN20_CONFIG = PORT_PCR_MUX(2); return 0x04; // PTD5
		case 23: CORE_PIN23_CONFIG = PORT_PCR_MUX(2); return 0x04; // PTC2
		case 21: CORE_PIN21_CONFIG = PORT_PCR_MUX(2); return 0x08; // PTD6
		case 22: CORE_PIN22_CONFIG = PORT_PCR_MUX(2); return 0x08; // PTC1
		case 15: CORE_PIN15_CONFIG = PORT_PCR_MUX(2); return 0x10; // PTC0
	}
	return 0;
}

// SPI_CTAR_LSBFE = LSB first

#define CTAR_24MHz   (SPI_CTAR_PBR(0) | SPI_CTAR_BR(0) | SPI_CTAR_CSSCK(0) | SPI_CTAR_DBR)
#define CTAR_16MHz   (SPI_CTAR_PBR(1) | SPI_CTAR_BR(0) | SPI_CTAR_CSSCK(0) | SPI_CTAR_DBR)
#define CTAR_12MHz   (SPI_CTAR_PBR(0) | SPI_CTAR_BR(0) | SPI_CTAR_CSSCK(0))
#define CTAR_8MHz    (SPI_CTAR_PBR(1) | SPI_CTAR_BR(0) | SPI_CTAR_CSSCK(0))
#define CTAR_6MHz    (SPI_CTAR_PBR(0) | SPI_CTAR_BR(1) | SPI_CTAR_CSSCK(1))
#define CTAR_4MHz    (SPI_CTAR_PBR(1) | SPI_CTAR_BR(1) | SPI_CTAR_CSSCK(1))

class ADDI
{
private:
	uint8_t  cs;    // Chip select pin (LOW means active)
	uint8_t  dta;   // Data pin
	uint8_t  clk;   // Clock pin
	uint8_t  pcs;   // Peripheral chip select bits
	uint32_t ctar;

public:
	ADDI(uint8_t cs_ = 10, uint8_t dta_ = 11, uint8_t clk_ = 13)
		: cs(cs_)
		, dta(dta_)
		, clk(clk_)
		, pcs(0)
		, ctar(0)
	{
	}

	bool init(int bitRate)
	{
		if (cs  == (uint8_t)-1) cs  =  9;
		if (dta == (uint8_t)-1) dta = 11;
		if (clk == (uint8_t)-1) clk = 13;

		if (spi_pin_is_cs(cs) && (dta == 7 || dta == 11) && (clk == 13 || clk == 14))
		{
			if (clk == 13) {
				CORE_PIN13_CONFIG = PORT_PCR_MUX(2) | PORT_PCR_DSE;
				SPCR.setSCK(13);
			} else {
				CORE_PIN14_CONFIG = PORT_PCR_MUX(2);
				SPCR.setSCK(14);
			}
			if (dta == 11) {
				CORE_PIN11_CONFIG = PORT_PCR_MUX(2);
				SPCR.setMOSI(11);
			} else {
				CORE_PIN7_CONFIG = PORT_PCR_MUX(2);
				SPCR.setMOSI(7);
			}

			if (bitRate >= 24) {
				ctar = CTAR_24MHz;
			} else if (bitRate >= 16) {
				ctar = CTAR_16MHz;
			} else if (bitRate >= 12) {
				ctar = CTAR_12MHz;
			} else if (bitRate >= 8) {
				ctar = CTAR_8MHz;
			} else if (bitRate >= 6) {
				ctar = CTAR_6MHz;
			} else {
				ctar = CTAR_4MHz;
			}

			ctar |= SPI_CTAR_LSBFE; // Least bit first
			ctar |= SPI_CTAR_CPOL;  // Clock inactive state is high
			ctar |= SPI_CTAR_CPHA;  //
			ctar |= SPI_CTAR_FMSZ(15);

			pcs = spi_configure_cs_pin(cs);
			SIM_SCGC6 |= SIM_SCGC6_SPI0;  // System clock gating control register, setting up SPI0 gate

			KINETISK_SPI0.MCR = SPI_MCR_MDIS | SPI_MCR_HALT; // Bit 14: MDIS, Bit 0: HALT, disables and halts device (if already running)
			KINETISK_SPI0.CTAR0 = ctar;  // 16-bit frame size
			KINETISK_SPI0.MCR = SPI_MCR_MSTR | /*SPI_MCR_CONT_SCKE |*/ SPI_MCR_PCSIS(0x1F) | SPI_MCR_CLR_TXF | SPI_MCR_DIS_RXF;
			// Master: 1,
			// SPI_MCR_DCONF(0) == 0, so no need
			// SPI_MCR_FRZ: freeze (off)
			// SPI_MCR_MTFE: modified mode (off)
			// SPI_MCR_ROOE: Recieve Overflow Overwrite Enable (off)
			// SPI_MCR_PCSIS(n): Sets inactive state on chip select to high.
			// TX flushed, RX disabled
			return true;
		}
		else {
			return false;
		}
	}

	void write_16(uint16_t x, uint32_t cont)
	{
		KINETISK_SPI0.PUSHR = x | (pcs << 16) | SPI_PUSHR_CTAS(0) | cont; //SPI_PUSHR_CONT;
		while (((KINETISK_SPI0.SR) & (15 << 12)) > (3 << 12))
			/*wait if fifo full*/;
	}

	void write_buffer(uint16_t *buffer, uint16_t size, int16_t delay = 10)
	{
		uint16_t *cur = buffer;
		uint16_t *end = buffer + size;

		for (;cur < end; cur += 2)
		{
			uint16_t addr = cur[0];
			if (addr == 0xFFFF)
			{
				delayMicroseconds(cur[1]);
			}
			else 
			{
				write_16(addr, SPI_PUSHR_CONT);

#if 1
				while (cur + 2 < end && cur[2] == addr + 1)
				{
					write_16(cur[1], SPI_PUSHR_CONT);
					cur += 2;
					addr += 1;
				}
#endif

				write_16(cur[1], 0);

				if (delay >= 0)
					delayMicroseconds(delay);
			}
		}
	}
};

#include "reginit.dat"

int main()
{
	pinMode(SYNC, OUTPUT);
	pinMode(CLI, OUTPUT);
	pinMode(LED, OUTPUT);

	pinMode(FPGA0, OUTPUT);

	digitalWrite(FPGA0, HIGH);

	analogWriteFrequency(CLI, 24 * 1000 * 1000); // 24 MHz max
	analogWriteResolution(4);
	analogWrite(CLI, 8);

	digitalWrite(SYNC, LOW);
	delayMicroseconds(500);

	pinMode(SYNC, INPUT);

	// Make sure SYNC is high
	uint32_t count = 0;
	while (true)
	{
		bool sync = digitalRead(SYNC);

		if (sync) {
			//Serial.write("Initializing transfer.\r\n");
			break;
		}

		//delay(1);

		++count;
		if (count == 20000) {
			Serial.write("Timed out while waiting on SYNC.\r\n");
			return 0;
		}

		if ((count & 31) == 0)
			digitalWrite(LED, HIGH);
		else if ((count & 31) == 16)
			digitalWrite(LED, LOW);

		yield();
	}

	yield();

	ADDI addi(10, 11, 13);

	if (!addi.init(16))
		return 0;

#if 1
	for (int j = 0; j < 8; ++j)
	{
		digitalWrite(LED, HIGH);
		delay(100);
		digitalWrite(LED, LOW);
		delay(100);
		yield();
	}
#endif

#if 1
	uint8_t cmdDelay = 0;
	uint8_t addDelay = 0;

	addi.write_buffer(afestartup, ARRAY_SIZE_OF(afestartup), cmdDelay);
	delayMicroseconds(addDelay);
	addi.write_buffer(code, ARRAY_SIZE_OF(code), cmdDelay);
	delayMicroseconds(addDelay);
	addi.write_buffer(data, ARRAY_SIZE_OF(data), cmdDelay);
	delayMicroseconds(addDelay);
	addi.write_buffer(tgstartup, ARRAY_SIZE_OF(tgstartup), cmdDelay);
	delayMicroseconds(addDelay);

	while (true)
	{
		digitalWrite(LED, HIGH);
		delay(1000);
		digitalWrite(LED, LOW);
		delay(100);
		yield();
	}
#else
	static uint16_t test[] = {
		0x4321, 0x8765,
		0xC002, 0x00F0,
#if 0
		0xFFFF, 0x0002,
		0xC003, 0x0F00,
		0xC004, 0xF000,
		0xC005, 0x5555,
		0xC006, 0x9999,
		0xC007, 0x8888,
#endif
	};

	while (1)
	{
		addi.write_buffer(test, 4 /*ARRAY_SIZE_OF(test)*/, 5);
		delayMicroseconds(10000);
	}
#endif
}
