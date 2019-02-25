

// Branches (ramificacoes)

//-> br Offset         //Or use the br.s instead of br. br.s use an offset of 8-bit (short form) whereas br uses an 32-bit offset.

//Other code here which will be skipped after getting br statement.

//

//-> Offset:
//The statements here will be executed     



.assembly extern mscorlib {}

.assembly Branches
{
    .ver 1:0:1:0
}
.module Branches.exe

.method static void main() cil managed
{
    .maxstack 2
    .entrypoint
    //Takes First value from the User

    ldstr "Enter First Number"
    call void [mscorlib]System.Console::WriteLine (string)
    
    call  string [mscorlib]System.Console::ReadLine ()
    call int32 [mscorlib]System.Int32::Parse(string)
    
    //Takes Second value from the User

    ldstr "Enter Second Number"
    call void [mscorlib]System.Console::WriteLine (string)
    
		
    call  string [mscorlib]System.Console::ReadLine ()
    call int32 [mscorlib]System.Int32::Parse(string)
    
    ble Smaller
    ldstr "Second Number is smaller than first."    
    call void [mscorlib]System.Console::WriteLine (string)
    
    br Exit
    
Smaller:
    ldstr "First number is smaller than second."    
    call void [mscorlib]System.Console::WriteLine (string)
Exit:    
    ret
}
