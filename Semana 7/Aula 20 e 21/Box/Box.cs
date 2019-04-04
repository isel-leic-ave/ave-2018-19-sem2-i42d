
using System;

public class MyTest
{
    public static void Main()
    {
        int i = Int32.Parse("123");
        object o = i; // box
        double j = (int)o; // unbox  
        Console.WriteLine(j);
        //
        // IL (compilado em modo Release):
        // 
        //IL_0000: ldstr "123"
        //IL_0005: call int32[mscorlib]System.Int32::Parse(string)
        //IL_000a: box [mscorlib]System.Int32
        //IL_000f: unbox.any [mscorlib]System.Int32
        //IL_0014: conv.r8
        //IL_0015: call void [mscorlib]System.Console::WriteLine(float64)
        //IL_001a: ret
    }
}

