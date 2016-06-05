#![allow(dead_code)]

macro_rules! name {
    (enum $name:ident {
        $($variant_name:ident = $variant_expr:expr,)*
    }) => {

        #[derive(Copy,Clone)]
        enum $name {
            $($variant_name = $variant_expr,)*
        }
        
        impl $name {
            fn all_variants() -> Vec<$name> {
                vec![$($name::$variant_name),*]
            }

            fn get_variants() -> Vec<&'static str> {
                vec![$(stringify!($variant_name)),*]
            }

            fn parse(nm: &'static str) -> Option<u32> {
                match nm {
                    $(stringify!($variant_name) => Some($variant_expr)),*,
                    _ => None
                }
            }

            fn cast(v: u32) -> Option<$name> {
                match v {
                    $($variant_expr => Some($name::$variant_name)),*,
                    _ => None
                }                
            }

            fn name(self) -> &'static str {
                match self {
                    $($name::$variant_name => stringify!($variant_name)),*
                }
            }

            fn code(self) -> u32 {
                self as u32
            }                
        }
    }
}

name!{
    enum OPC { 
        NOP  = 0x03,
        RTS  = 0x0B,
        RDS  = 0x4B,
        IDLE = 0x13,
        RTI  = 0x43,
        LDO  = 0x22,
        JEQ  = 0x05,
        CALL = 0x14,
        JUMP = 0x44,
        SUB  = 0x08,
        LDIM = 0x23,
        LDOF = 0x62,
        TOGC = 0x27,
        VTGR = 0x57,
        VTGC = 0x67,
        STO  = 0x42,
        SUB2 = 0x09,
    }
}

fn main()
{
    //println!("{}", OPC::get_variants().len());
    //println!("{}", OPC::all_variants().len());
    
    for n in OPC::get_variants() {
        println!("{:10} : 0x{:02x}", n, OPC::parse(n).unwrap())
    }

    for v in OPC::all_variants() {
        println!("0x{:02x} : {:10}", v.code(), v.name())
    }
    
    //println!("0x{:02x} : {:10}", t.code(), v.name());
}
