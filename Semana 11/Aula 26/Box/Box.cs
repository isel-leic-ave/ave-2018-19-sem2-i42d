
using System;

public class MyTest
{
    public static void Main()
    {
        int i = Int32.Parse("123");
        object o = i; // box
        int i1 = (int)o; // unbox 
        double j = (int)o; // unbox seguido de conv (para converter int em double)
        Console.WriteLine(j);
        //
        // IL (compilado em modo Release):
        // 
        //IL_0000:  ldstr      "123"
        //IL_0005:  call int32[mscorlib]System.Int32::Parse(string)
        //IL_000a:  box[mscorlib]System.Int32
        //IL_000f:  dup
        //IL_0010:  unbox.any[mscorlib]System.Int32
        //IL_0015:  pop
        //IL_0016:  unbox.any[mscorlib]System.Int32
        //IL_001b:  conv.r8
        //IL_001c:  call       void [mscorlib]System.Console::WriteLine(float64)
        //IL_0021:  ret
    }
}

