#include <cstdint>
#include <cstdio>

//
//
//

typedef uint8_t byte;
typedef uint16_t word;
typedef uint32_t dword;
typedef uint64_t qword;


static word code[] = {
	0x1a23,/*irq4addr=irq4_isr;*//*start*/             
	0x0084,
	0x0000,
	0x0000,
	0x1aa3,/*irq5addr=irq5_isr;*/                      
	0x00ac,
	0x0000,
	0x0000,
	0x1b23,/*irq6addr=irq6_isr;*/                      
	0x00f8,
	0x0000,
	0x0000,
	0x05a3,/*isatgstandby=0x000f;*/                    
	0x000f,
	0x0000,
	0x0000,
	0x31a3,/*atimer0_max_hi=17;*/                      
	0x0011,
	0x0000,
	0x0000,
	0x3123,/*atimer0_max_lo=19019;*/                   
	0x4a4b,
	0x0000,
	0x0000,
	0x33a3,/*atimer1_max_hi=0;*/                       
	0x0000,
	0x0000,
	0x0000,
	0x3323,/*atimer1_max_lo=1059;*/                    
	0x0423,
	0x0000,
	0x0000,
	0x40a3,/*gp0_tog0_hi=0;*/                          
	0x0000,
	0x0000,
	0x0000,
	0x4023,/*gp0_tog0_lo=8;*/                          
	0x0008,
	0x0000,
	0x0000,
	0x41a3,/*gp0_tog1_hi=0;*/                          
	0x0000,
	0x0000,
	0x0000,
	0x4123,/*gp0_tog1_lo=1006;*/                       
	0x03ee,
	0x0000,
	0x0000,
	0x44a3,/*gp1_tog0_hi=0;*/                          
	0x0000,
	0x0000,
	0x0000,
	0x4423,/*gp1_tog0_lo=1;*/                          
	0x0001,
	0x0000,
	0x0000,
	0x45a3,/*gp1_tog1_hi=0;*/                          
	0x0000,
	0x0000,
	0x0000,
	0x4523,/*gp1_tog1_lo=1132;*/                       
	0x046c,
	0x0000,
	0x0000,
	0x0d23,/*r10=mode_flag;*/                          
	0x0000,
	0x0000,
	0x0000,
	0x4562,/*r1=[r10+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x4d62,/*r3=[r10+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x02a3,/*r5=mode_table0;*/                         
	0x0001,
	0x0000,
	0x0000,
	0xb8a2,/*r6=[r1+r5];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x0ea3,/*r13=0x3c15;*/                             
	0x3c15,
	0x0000,
	0x0000,
	0x0b23,/*loop_start=irq6_isr_lp0;*/                
	0x0100,
	0x0000,
	0x0000,
	0x0ba3,/*loop_end=irq6_isr_lp1;*/                  
	0x0104,
	0x0000,
	0x0000,
	0x1123,/*ilat=0x0000;*/                            
	0x0000,
	0x0000,
	0x0000,
	0x1023,/*imask=0xffdf;*/                           
	0xffdf,
	0x0000,
	0x0000,
	0x10a3,/*pmask=0x0000;*/                           
	0x0000,
	0x0000,
	0x0000,
	0x05a3,/*isatgstandby=0x03ff;*/                    
	0x03ff,
	0x0000,
	0x0000,
	0x004b,/*rds;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x0013,/*idle;*//*wait_loop*/                      
	0x0000,
	0x0000,
	0x0000,
	0x05a3,/*isatgstandby=0x0007;*//*irq4_isr*/        
	0x0007,
	0x0000,
	0x0000,
	0x1023,/*imask=0xffff;*/                           
	0xffff,
	0x0000,
	0x0000,
	0x0d23,/*r10=mode_flag;*/                          
	0x0000,
	0x0000,
	0x0000,
	0x4562,/*r1=[r10+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x02a3,/*r5=mode_table0;*/                         
	0x0001,
	0x0000,
	0x0000,
	0xb8a2,/*r6=[r1+r5];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x0523,/*reti=wait_loop;*/                         
	0x0080,
	0x0000,
	0x0000,
	0x10a3,/*pmask=0;*/                                
	0x0000,
	0x0000,
	0x0000,
	0x004b,/*rds;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x0043,/*rti;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x0623,/*isatgstatus=0;*//*irq5_isr*/              
	0x0000,
	0x0000,
	0x0000,
	0x1023,/*imask=0xff8f;*/                           
	0xff8f,
	0x0000,
	0x0000,
	0x4562,/*r1=[r10+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x6088,/*r0=r1-r3;*/                               
	0x0000,
	0x0000,
	0x0000,
	0x6405,/*ifeq,jump(no_mode_switch);*/              
	0x0000,
	0x0000,
	0x0000,
	0x4d62,/*r3=[r10+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0xb8a2,/*r6=[r1+r5];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x0362,/*r0=[r6+2];*//*no_mode_switch*/            
	0x0002,
	0x0000,
	0x0000,
	0x0014,/*call(r0);*/                               
	0x0000,
	0x0000,
	0x0000,
	0x1f62,/*r7=[r6+0];*/                              
	0x0000,
	0x0000,
	0x0000,
	0x03e2,/*r0=[r7+1];*/                              
	0x0001,
	0x0000,
	0x0000,
	0x42c2,/*[r13+0]=r0;*/                             
	0x0000,
	0x0000,
	0x0000,
	0x13e2,/*r4=[r7+4];*/                              
	0x0004,
	0x0000,
	0x0000,
	0x9be2,/*r14=[r7+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x9fe2,/*r15=[r7+3];*/                             
	0x0003,
	0x0000,
	0x0000,
	0x1b62,/*r6=[r6+1];*/                              
	0x0001,
	0x0000,
	0x0000,
	0x0523,/*reti=wait_loop;*/                         
	0x0080,
	0x0000,
	0x0000,
	0x004b,/*rds;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x0043,/*rti;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x0623,/*isatgstatus=0;*//*irq6_isr*/              
	0x0000,
	0x0000,
	0x0000,
	0x0227,/*toggle_vector(r4:)(c);*//*irq6_isr_loop*/ 
	0x0000,
	0x0000,
	0x0000,
	0x4314,/*call(r14);*//*irq6_isr_lp0*/              
	0x0000,
	0x0000,
	0x0000,
	0x4389,/*r0=r15-1;*//*irq6_isr_lp1*/               
	0x0001,
	0x0000,
	0x0000,
	0x9c05,/*ifeq,jump(seq_ctrl_eq_1);*/               
	0x0000,
	0x0000,
	0x0000,
	0x4389,/*r0=r15-0;*/                               
	0x0000,
	0x0000,
	0x0000,
	0x8e05,/*ifeq,jump(seq_ctrl_eq_0);*/               
	0x0000,
	0x0000,
	0x0000,
	0xdf89,/*r15=r15-1;*/                              
	0x0001,
	0x0000,
	0x0000,
	0x0043,/*rti;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x1fe2,/*r7=[r7+2];*//*seq_ctrl_eq_0*/             
	0x0002,
	0x0000,
	0x0000,
	0x03e2,/*r0=[r7+1];*/                              
	0x0001,
	0x0000,
	0x0000,
	0x42c2,/*[r13+0]=r0;*/                             
	0x0000,
	0x0000,
	0x0000,
	0x13e2,/*r4=[r7+4];*/                              
	0x0004,
	0x0000,
	0x0000,
	0x9be2,/*r14=[r7+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x9fe2,/*r15=[r7+3];*/                             
	0x0003,
	0x0000,
	0x0000,
	0x7e44,/*jump(irq6_isr_loop);*/                    
	0x0000,
	0x0000,
	0x0000,
	0x1fe2,/*r7=[r7+2];*//*seq_ctrl_eq_1*/             
	0x0002,
	0x0000,
	0x0000,
	0x03e2,/*r0=[r7+1];*/                              
	0x0001,
	0x0000,
	0x0000,
	0x42c2,/*[r13+0]=r0;*/                             
	0x0000,
	0x0000,
	0x0000,
	0x13e2,/*r4=[r7+4];*/                              
	0x0004,
	0x0000,
	0x0000,
	0x9be2,/*r14=[r7+0];*/                             
	0x0000,
	0x0000,
	0x0000,
	0x9fe2,/*r15=[r7+3];*/                             
	0x0003,
	0x0000,
	0x0000,
	0x1123,/*ilat=0;*/                                 
	0x0000,
	0x0000,
	0x0000,
	0x0043,/*rti;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x31a3,/*atimer0_max_hi=17;*//*mode0_field0_vdhd*/ 
	0x0011,
	0x0000,
	0x0000,
	0x3123,/*atimer0_max_lo=19019;*/                   
	0x4a4b,
	0x0000,
	0x0000,
	0x33a3,/*atimer1_max_hi=0;*/                       
	0x0000,
	0x0000,
	0x0000,
	0x3323,/*atimer1_max_lo=1059;*/                    
	0x0423,
	0x0000,
	0x0000,
	0x0003,/*nop;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x000b,/*rts;*/                                    
	0x0000,
	0x0000,
	0x0000,
	0x00e7,/*toggle_vector(1:40)(c);*//*pattern_0*/    
	0x0180,
	0x0000,
	0x0000,
	0x0757, /*toggle_vector(14:48)(r);*/                
	0x0080,
	0x0001,
	0x0000,
	0x06d7, /*toggle_vector(13:30)(r);*/                // 
	0x0000,
	0x0000,
	0x0040,
	0x00d7, /*toggle_vector(1:48)(r);*/                 
	0x0080, 
	0x0001, 
	0x0000, 
	0x0fd7, /*toggle_vector(31:48)(r);*/                
	0x0080, 
	0x0001, 
	0x0000, 
	0x11d7, /*toggle_vector(35:30)(r);*/                
	0x0000, 
	0x0000, 
	0x0040, 
	0x0dd7, /*toggle_vector(27:48)(r);*/                
	0x0080, 
	0x0001, 
	0x0000, 
	0x7157, /*toggle_vector(226:40)(r);*/               
	0x0180, 
	0x0000, 
	0x0000, 
	0x000b, /*rts;*/                                    
	0x0000, 
	0x0000, 
	0x0000, 
};

#define ARRAY_SIZE_OF(a) (sizeof(a) / sizeof(a[0]))

const char *reg_name(word r)
{
	switch (r) {
		case 0x00: return "r0";
		case 0x01: return "r1";
		case 0x02: return "r2";
		case 0x03: return "r3";
		case 0x04: return "r4";
		case 0x05: return "r5";
		case 0x06: return "r6";
		case 0x07: return "r7";
			//
		case 0x08: return "pc";			
		case 0x09: return "rets"; // subroutine ret
		case 0x0a: return "reti"; // interrupt ret 
		case 0x0b: return "isatg_standby";          
		case 0x0c: return "isatg_status";          
		case 0x0d: return "reserved$0d";
		case 0x0e: return "reserved$0e";
		case 0x0f: return "reserved$0f";
			//
		case 0x10: return "stimer";
		case 0x11: return "stimer_max";
		case 0x12: return "reserved$12";
		case 0x13: return "reserved$13";
		case 0x14: return "reserved$14";
		case 0x15: return "tmp0";
		case 0x16: return "tmp1";
		case 0x17: return "tmp2";
			//
		case 0x18: return "r8";			
		case 0x19: return "r9";
		case 0x1a: return "r10";
		case 0x1b: return "r11";          
		case 0x1c: return "r12";          
		case 0x1d: return "r13";
		case 0x1e: return "r14";
		case 0x1f: return "r15";
			//
		case 0x20: return "imask";
		case 0x21: return "pmask";
		case 0x22: return "ilat";
			//
		case 0x32: return "irq2addr";
		case 0x34: return "irq4addr";
		case 0x35: return "irq5addr";
		case 0x36: return "irq6addr";
			//
		case 0x41: return "outreg1";
		case 0x42: return "outreg2";
		case 0x44: return "outreg4";
		case 0x45: return "outreg5";
		case 0x46: return "outreg6";
		case 0x49: return "outen1";
		case 0x4a: return "outen2";
		case 0x4c: return "outen4";
		case 0x4d: return "outen5";
		case 0x4e: return "outen6";
		case 0x51: return "outstandby1";
		case 0x52: return "outstandby2";
		case 0x54: return "outstandby4";
		case 0x55: return "outstandby5";
		case 0x56: return "outstandby6";
			//			
		case 0x60: return "atimer0_lo";
		case 0x61: return "atimer0_hi";
		case 0x62: return "atimer0_max_lo";
		case 0x63: return "atimer0_max_lo";
		case 0x64: return "atimer1_lo";
		case 0x65: return "atimer1_hi";
		case 0x66: return "atimer1_max_lo";
		case 0x67: return "atimer1_max_lo";
		case 0x68: return "atimer2_lo";
		case 0x69: return "atimer2_hi";
		case 0x6a: return "atimer2_max_lo";
		case 0x6b: return "atimer2_max_lo";
		case 0x6c: return "atimer0_valid";
		case 0x6d: return "atimer1_valid";
		case 0x6e: return "atimer2_valid";
		case 0x6f: return "_$6f";
			//
		case 0x70: return "atimer_sticky0";
		case 0x71: return "atimer_sticky1";
		case 0x72: return "atimer_sticky2";
		case 0x74: return "atimer_sel1";
		case 0x75: return "atimer_sel2";
		case 0x76: return "gp_update_sel";
		case 0x79: return "line_counter";
		case 0x7a: return "gp_valid";
			//
		case 0x80: return "vd_tog0_lo";
		case 0x81: return "vd_tog0_hi";
		case 0x82: return "vd_tog1_lo";
		case 0x83: return "vd_tog1_hi";
		case 0x84: return "vd_tog2_lo";
		case 0x85: return "vd_tog2_hi";
		case 0x86: return "vd_tog3_lo";
		case 0x87: return "vd_tog3_hi";

		case 0x88: return "hd_tog0_lo";
		case 0x89: return "hd_tog0_hi";
		case 0x8a: return "hd_tog1_lo";
		case 0x8b: return "hd_tog1_hi";
		case 0x8c: return "hd_tog2_lo";
		case 0x8d: return "hd_tog2_hi";
		case 0x8e: return "hd_tog3_lo";
		case 0x8f: return "hd_tog3_hi";
			//
		case 0x90: return "gpo1_tog0_lo";
		case 0x91: return "gpo1_tog0_hi";
		case 0x92: return "gpo1_tog1_lo";
		case 0x93: return "gpo1_tog1_hi";
		case 0x94: return "gpo1_tog2_lo";
		case 0x95: return "gpo1_tog2_hi";
		case 0x96: return "gpo1_tog3_lo";
		case 0x97: return "gpo1_tog3_hi";

		case 0x98: return "gpo2_tog0_lo";
		case 0x99: return "gpo2_tog0_hi";
		case 0x9a: return "gpo2_tog1_lo";
		case 0x9b: return "gpo2_tog1_hi";
		case 0x9c: return "gpo2_tog2_lo";
		case 0x9d: return "gpo2_tog2_hi";
		case 0x9e: return "gpo2_tog3_lo";
		case 0x9f: return "gpo2_tog3_hi";
			//
		case 0xa0: return "gpo3_tog0_lo";
		case 0xa1: return "gpo3_tog0_hi";
		case 0xa2: return "gpo3_tog1_lo";
		case 0xa3: return "gpo3_tog1_hi";
		case 0xa4: return "gpo3_tog2_lo";
		case 0xa5: return "gpo3_tog2_hi";
		case 0xa6: return "gpo3_tog3_lo";
		case 0xa7: return "gpo3_tog3_hi";

		case 0xa8: return "gpo4_tog0_lo";
		case 0xa9: return "gpo4_tog0_hi";
		case 0xaa: return "gpo4_tog1_lo";
		case 0xab: return "gpo4_tog1_hi";
		case 0xac: return "gpo4_tog2_lo";
		case 0xad: return "gpo4_tog2_hi";
		case 0xae: return "gpo4_tog3_lo";
		case 0xaf: return "gpo4_tog3_hi";
			//
		case 0xb8: return "clpob_tog0_lo";
		case 0xb9: return "clpob_tog0_hi";
		case 0xba: return "clpob_tog1_lo";
		case 0xbb: return "clpob_tog1_hi";
		case 0xbc: return "clpob_tog2_lo";
		case 0xbd: return "clpob_tog2_hi";
		case 0xbe: return "clpob_tog3_lo";
		case 0xbf: return "clpob_tog3_hi";
			//
		case 0xc0: return "pblk_tog0_lo";
		case 0xc1: return "pblk_tog0_hi";
		case 0xc2: return "pblk_tog1_lo";
		case 0xc3: return "pblk_tog1_hi";
		case 0xc4: return "pblk_tog2_lo";
		case 0xc5: return "pblk_tog2_hi";
		case 0xc6: return "pblk_tog3_lo";
		case 0xc7: return "pblk_tog3_hi";
			//
		default: {
			static char name[80];
			sprintf(name, "$%02x", r);
			return name;
		}
	}
}

				// 30: 31    -- 
				// 40: 0, 1
				// 48: 0, 9
#if 0
#define HBLKMASKLEVEL1 40
#define HBLKMASKLEVEL2 41
#define HBLKMASKLEVEL3 42
#define HBLKMASKLEVEL4 43
#define HBLKMASKLEVEL5 44
#define HBLKMASKLEVEL6 45
#define HBLKMASKLEVEL7 46
#define HBLKMASKLEVEL8 47
#define HBLK1 48
#define HBLK2 49
#define HBLK3 50
#define HBLK4 51
#define HBLK5 52
#define HBLK6 53
#define HBLK7 54
#define HBLK8 55
#define CLPOB 56
#define PBLK 57
#endif

void print_lst(qword bits, byte bank)
{
	bool first = true;
	for (int bit = 0; bit < 40; bit++)
		if ((bits & (1ULL<<bit)) != 0)
		{
			if (!first) printf(",");
			printf("%d", bit + bank * 40);
			first = false;
		}
}

int main()
{
	for (int i = 0; i < ARRAY_SIZE_OF(code); i+= 4)
	{
		printf("%04x ", i+12);
		printf("%04x_", code[i+3]);
		printf("%04x_", code[i+2]);
		printf("%04x_", code[i+1]);
		printf("%04x: ", code[i+0]);
		
		byte opcode = code[i] & 0x7F;

		// patent: bit 1 & 2 implies toggle
		bool isToggle = ((opcode & 6) == 6);
		
		// Logic:
		//   fetch/decode inst
		//   toggle?
		//      no:  execute program flow
		//      yes: wait until toggle match
		//           toggle output pins
		//
		
		if (isToggle)
		{
			// qword: 64 bits, dword: 32 bits, word: 16 bits
			// qword toggle: {W3,W2,W1,W0}: From high bits, M vector bits, 16 imm bits, 7 opcode bits  M = 64-16-7 = 41
			// dword toggle: { 0, 0,W1,W0}: 8 bits for byte, 3 bits byte select, 14 imm bits, 7 opcode bits
			//  word toggle: { 0, 0, 0,W0}: 0 bit, 4 nibble bits, 4 nibble select, 7 opcode bits
			
			// Using 64 bits (C) clear/(R) relative
			// qword:
			// V{9}_X{13}_R{3}_0C00_110 = force_vector(RM:*)(C);     RM = (RRR) = reg
			// V{9}_I{16}     _1C00_110 = force_vector(IMM16:*)(C);  IMM16 
			// V{9}_X{13}_R{3}_0CR0_111 = toggle vector(RM:*)(C)(R);
			// V{9}_I{16}     _1CR0_111 = toggle_vector(IMM16:*)(C);
			// dword:
			// V{7}_B{3}_X{11}_0CR1_111 = toggle_vector(RM:*)(C)(R); B = B2,B1,B0 byte select
			// V{7}_B{3}_I{14}_1CR1_111 = toggle_vector(IMM14:*)(C)(R);
			// word:
			// I{1}_V{4}_N{4} _0111_111 = toggle_vector(R0:*); N = N3,N2,N1,N0 nibble select

			qword qw = code[i] | ((qword)code[i+1] << 16) | ((qword)code[i+2] << 32) | ((qword)code[i+3] << 48);

			bool isForce = (opcode & 1) == 0;
			bool isShort = (opcode & 8) == 1;
			bool isWord  = ~isForce & isShort & ((opcode & 0x18) == 0x18);
			bool isImm = (opcode & (1<<6)) != 0;
			bool isClear = (opcode & (1<<5)) != 0;
			bool isRelative = (opcode & (1<<4)) != 0;

			byte reg = (qw >> 7) & 0x7;
			word imm16 = (qw >> 7) & 0xFFFF;
			
			if ((opcode & 0x7) == 6)
			{
				qword vec = qw >> (7+16);
				if (isImm)				
					printf("force_vector(%3d:", imm16);
				else
					printf("force_vector(r%d:", reg);
				
				print_lst(vec >> 1, vec & 1);
				printf(")%s; \t", isClear ? "(c)" : "");
			}
			else if ((opcode & 0xF) == 0x7)
			{
				qword vec = qw >> (7+16); // 41 bits is 10 nibbles and a bit.

				if (isImm)				
					printf("toggle_vector(%3d:", imm16);
				else
					printf("toggle_vector(r%d:", reg);
				print_lst(vec >> 1, vec & 1);				
				printf(")%s%s\n", isClear ? "(c)" : "", isRelative ? "(r)" : "");
			}
			else if ((opcode & 0xF) == 0xF)
			{
				//:TODO: Byte/nibble patterns
				dword dw = qw & 0xFFFFFFFF;
				dword vec = dw >> (7+16);
				if (isImm)
					printf("toggle_vectord(%3d:%08x)%s%s\n", imm16, vec, isClear ? "(c)" : "", isRelative ? "(r)" : "");
				else
					printf("toggle_vectord(r%d:%08x)%s%s\n", reg, vec, isClear ? "(c)" : "", isRelative ? "(r)" : "");				
			}
			else
			{
				dword w = code[i];
				byte n = (w >> 8) & 0xF;
				byte v = (w >> 12) & 0xF;
				printf("toggle_vectorw(R0:%08x)\t; n=%d\n", v, n);
			}
		}
		else
		{
		switch (opcode)
		{
			case 0x00:
			{
				word opd = code[i]>>7;
				
				byte a = (opd>>3) & 7;
				byte b = (opd>>0) & 7;
				byte c = (opd>>6) & 7;
				
				printf("r%d = r%d + r%d\n",
				       a, b, c);
				break;
			}
				
			case 0x01:
			{
				word opd = code[i]>>7;
				byte a = ((opd>>3) & 7) | ((opd >> (8-3)) & 8);
				byte b = ((opd>>0) & 7) | ((opd >> (7-3)) & 8);

				printf("r%d = r%d + %d\n", a, b, code[i+1]);
				break;
			}
			
			case 0x03: 
				printf("nop\n");
				break;

			case 0x08:
			{
				word opd = code[i]>>7;
				
				byte a = (opd>>3) & 7;
				byte b = (opd>>0) & 7;
				byte c = (opd>>6) & 7;
				
				printf("r%d = r%d - r%d\n",
				       a, b, c);
				break;
			}
				
			case 0x09:
			{
				word opd = code[i]>>7;
				byte a = ((opd>>3) & 7) | ((opd >> (8-3)) & 8);
				byte b = ((opd>>0) & 7) | ((opd >> (7-3)) & 8);

				printf("r%d = r%d - %d\n", a, b, code[i+1]);
				break;
			}

			case 0x50:
			{
				word opd = code[i]>>7;
				
				byte a = (opd>>3) & 7;
				byte b = (opd>>0) & 7;
				byte c = (opd>>6) & 7;
				
				printf("r%d = r%d * r%d\n",
				       a, b, c);
				break;
			}
				
			case 0x51:
			{
				word opd = code[i]>>7;
				byte a = ((opd>>3) & 7) | ((opd >> (8-3)) & 8);
				byte b = ((opd>>0) & 7) | ((opd >> (7-3)) & 8);

				printf("r%d = r%d * %d\n", a, b, code[i+1]);
				break;
			}
			
			case 0x0b: 
				printf("rts\n");
				break;
			case 0x4b: 
				printf("rds\n");
				break;
			case 0x13: 
				printf("idle\n");
				break;
			case 0x43: 
				printf("rti\n");
				break;
		
			case 0x22:
			{
				word opd = code[i]>>7;

				byte a = (opd>>3) & 7;
				byte b = (opd>>0) & 7;
				byte c = (opd>>6) & 7;
				
				printf("r%d = [r%d+r%d]\n",
				       a, b, c);
				break;
			}

			case 0x05:
			{
				//word opd = code[i]>>7;
				
				//byte a = (opd>>3) & 7;
				//byte b = (opd>>0) & 7;
				//byte c = (opd>>6) & 7;
				
				printf("jeq 0x%04x\n",
				       code[i]>>7);
				break;
			}

			case 0x14:
			{
				word opd = code[i]>>7;
				byte a = ((opd>>0) & 7) | ((opd >> (7-3)) & 8);
				
				printf("call r%d\n", a); 
				break;
			}

			
			case 0x44:
			{
				//word opd = code[i]>>7;
				
				//byte a = (opd>>3) & 7;
				//byte b = (opd>>0) & 7;
				//byte c = (opd>>6) & 7;
				
				printf("jump 0x%04x\n", code[i]>>7);
				break;
			}
			
			case 0x23:
			{
				word opd = code[i]>>7;

				printf("%s = 0x%04x\n", reg_name(opd), code[i+1]);
				break;
			}
			case 0x62:
			{
				word opd = code[i]>>7;
				byte a = ((opd>>3) & 7) | ((opd >> (8-3)) & 8); // bit 3,4,5 & 8?
				byte b = ((opd>>0) & 7) | ((opd >> (7-3)) & 8); // bit 0,1,2 & 7?

				if (code[i+1])
					printf("r%d = [r%d+%d]\n",
					       a,
					       b,
					       code[i+1]);
				else
					printf("r%d = [r%d]\n",
					       a,
					       b);
					
				break;
			}

			
			case 0x42:
			{
				word opd = code[i]>>7;
				byte a = ((opd>>3) & 7) | ((opd >> (8-3)) & 8);
				byte b = ((opd>>0) & 7) | ((opd >> (7-3)) & 8);

				if (code[i+1])
					printf("[r%d+%d] = r%d\n",
					       b, code[i+1], a);
				else
					printf("[r%d] = r%d\n",
					       b, a);
					
				break;
			}


			
			default:		
				printf("code %02x 0x%04x\n", code[i] & 0x7F, code[i]>>7); 
		}
		}
	}
}


#if 0
data:
0000 0x0000, /*mode_flag*/
0001 0x0002, /*mode_table0*/
0002 0x0006, /*mode0_field0[0]*/
0003 0x0002, /*mode0_field0[1]*/
0004 0x0158, /*mode0_field0[2]*/       -- mode0_field0_vdhd
0005 0x0000, /*mode0_field0[3]*/
0006 0x0170, /*mode0_field0_seq0[0]*/  -- pattern0
0007 0x0001, /*mode0_field0_seq0[1]*/
0008 0x0006, /*mode0_field0_seq0[2]*/
0009 0x0000, /*mode0_field0_seq0[3]*/
000a 0x0000, /*mode0_field0_seq0[4]*/
000b 0x0000, /*padaddr[0]*/

start:
000c 1a23_0084_0000_0000: irq4 = 0x0084               -- irq4_isr
0010 1aa3_00ac_0000_0000: irq5 = 0x00ac               -- irq5_isr
0014 1b23_00f8_0000_0000: irq6 = 0x00f8               -- irq6_isr
0018 05a3_000f_0000_0000: isatg_standby = 0x000f
001c 31a3_0011_0000_0000: atimer0_max_lo = 0x0011
0020 3123_4a4b_0000_0000: atimer0_max_lo = 0x4a4b
0024 33a3_0000_0000_0000: atimer1_max_lo = 0x0000
0028 3323_0423_0000_0000: atimer1_max_lo = 0x0423
002c 40a3_0000_0000_0000: vd_tog0_hi = 0x0000
0030 4023_0008_0000_0000: vd_tog0_lo = 0x0008
0034 41a3_0000_0000_0000: vd_tog1_hi = 0x0000
0038 4123_03ee_0000_0000: vd_tog1_lo = 0x03ee
003c 44a3_0000_0000_0000: hd_tog0_hi = 0x0000
0040 4423_0001_0000_0000: hd_tog0_lo = 0x0001
0044 45a3_0000_0000_0000: hd_tog1_hi = 0x0000
0048 4523_046c_0000_0000: hd_tog1_lo = 0x046c
004c 0d23_0000_0000_0000: r10 = 0x0000                 -- a pointer (address 0) [= mode_flag]
0050 4562_0000_0000_0000: r1 = [r10]                   -- r1 = [0] = 6 
0054 4d62_0000_0000_0000: r3 = [r10]                   -- r3 = [0] = 6 
0058 02a3_0001_0000_0000: r5 = 0x0001                  -- r5 =       1  -- table = 1 [r5 == table number]
005c b8a2_0000_0000_0000: r6 = [r1+r5]                 -- r6 = [7] = 1  -- field = 6 [r6 == field]
0060 0ea3_3c15_0000_0000: r13 = 0x3c15
0064 0b23_0100_0000_0000: _$16 = 0x0100                -- loop_start  [ never used? ]
0068 0ba3_0104_0000_0000: _$17 = 0x0104                -- loop_end    [ never used? ]
006c 1123_0000_0000_0000: ilat = 0x0000
0070 1023_ffdf_0000_0000: imask = 0xffdf
0074 10a3_0000_0000_0000: pmask = 0x0000
0078 05a3_03ff_0000_0000: isatg_standby = 0x03ff       
007c 004b_0000_0000_0000: rds

wait_loop:	
0080 0013_0000_0000_0000: idle
	
	irq4_isr:	
0084 05a3_0007_0000_0000: isatg_standby = 0x0007
0088 1023_ffff_0000_0000: imask = 0xffff
008c 0d23_0000_0000_0000: r10 = 0x0000
0090 4562_0000_0000_0000: r1 = [r10]
0094 02a3_0001_0000_0000: r5 = 0x0001
0098 b8a2_0000_0000_0000: r6 = [r1+r5]
009c 0523_0080_0000_0000: reti = 0x0080
00a0 10a3_0000_0000_0000: pmask = 0x0000
00a4 004b_0000_0000_0000: rds
00a8 0043_0000_0000_0000: rti

	irq5_isr:
00ac 0623_0000_0000_0000: isatg_status = 0x0000
00b0 1023_ff8f_0000_0000: imask = 0xff8f
00b4 4562_0000_0000_0000: r1 = [r10]
00b8 6088_0000_0000_0000: r0 = r1 - r3
00bc 6405_0000_0000_0000: jeq 0x00c8      -- no_mode_switch
00c0 4d62_0000_0000_0000: r3 = [r10]
00c4 b8a2_0000_0000_0000: r6 = [r1+r5]
	no_mode_switch:
00c8 0362_0002_0000_0000: r0 = [r6+2]
00cc 0014_0000_0000_0000: call r0
00d0 1f62_0000_0000_0000: r7 = [r6]
00d4 03e2_0001_0000_0000: r0 = [r7+1]
00d8 42c2_0000_0000_0000: [r13] = r0
00dc 13e2_0004_0000_0000: r4 = [r7+4]
00e0 9be2_0000_0000_0000: r14 = [r7]
00e4 9fe2_0003_0000_0000: r15 = [r7+3]
00e8 1b62_0001_0000_0000: r6 = [r6+1]
00ec 0523_0080_0000_0000: reti = 0x0080
00f0 004b_0000_0000_0000: rds
00f4 0043_0000_0000_0000: rti

	irq6_isr:
00f8 0623_0000_0000_0000: isatg_status = 0x0000
	irq6_loop:
00fc 0227_0000_0000_0000: togglec r4
	irq6_isr_lp0:
0100 4314_0000_0000_0000: call r14
	irq6_isr_lp1:
0104 4389_0001_0000_0000: r0 = r15 - 1
0108 9c05_0000_0000_0000: jeq 0x0138          -- if r15 == 0 goto seq_ctrl_eq_1;
010c 4389_0000_0000_0000: r0 = r15 - 0
0110 8e05_0000_0000_0000: jeq 0x011c          -- if r15 == 1 goto seq_ctrl_eq_0;
0114 df89_0001_0000_0000: r15 = r15 - 1
0118 0043_0000_0000_0000: rti

	seq_ctrl_eq_0:
011c 1fe2_0002_0000_0000: r7 = [r7+2]
0120 03e2_0001_0000_0000: r0 = [r7+1]
0124 42c2_0000_0000_0000: [r13] = r0
0128 13e2_0004_0000_0000: r4 = [r7+4]
012c 9be2_0000_0000_0000: r14 = [r7]
0130 9fe2_0003_0000_0000: r15 = [r7+3]
0134 7e44_0000_0000_0000: jump 0x00fc        -- goto irq6_loop

	seq_ctrl_eq_1:
0138 1fe2_0002_0000_0000: r7 = [r7+2]
013c 03e2_0001_0000_0000: r0 = [r7+1]
0140 42c2_0000_0000_0000: [r13] = r0
0144 13e2_0004_0000_0000: r4 = [r7+4]
0148 9be2_0000_0000_0000: r14 = [r7]
014c 9fe2_0003_0000_0000: r15 = [r7+3]
0150 1123_0000_0000_0000: ilat = 0x0000
0154 0043_0000_0000_0000: rti

	mode0_field0_vdhd:
0158 31a3_0011_0000_0000: atimer0_max_lo = 0x0011
015c 3123_4a4b_0000_0000: atimer0_max_lo = 0x4a4b
0160 33a3_0000_0000_0000: atimer1_max_lo = 0x0000
0164 3323_0423_0000_0000: atimer1_max_lo = 0x0423
0168 0003_0000_0000_0000: nop
016c 000b_0000_0000_0000: rts

	pattern_0:
0170 00e7_0180_0000_0000: vtogglec 1    -- 40
0174 0757_0080_0001_0000: vtoggler 14   -- 48
0178 06d7_0000_0000_0040: vtoggler 13   -- 30
017c 00d7_0080_0001_0000: vtoggler 1    -- 48   -- bit 
0180 0fd7_0080_0001_0000: vtoggler 31   -- 48
0184 11d7_0000_0000_0040: vtoggler 35   -- 30
0188 0dd7_0080_0001_0000: vtoggler 27   -- 48
018c 7157_0180_0000_0000: vtoggler 226  -- 40
0190 000b_0000_0000_0000: rts

	30: 0000_0000_0040  -- one bit  (00000000, 00000000, 00000000, 00000000, 00000000, 01000000) : Bit 5:6
	40: 0180_0000_0000  -- two bits (00000001, 10000000, 00000000, 00000000, 00000000, 00000000) : Bit 0:1 & 1:7
	48: 0080_0001_0000  -- two bits (00000000, 10000000, 00000000, 00000001, 00000000, 00000000) : Bit 1:7 & 3:1
	

#endif
