
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly InitobjVsNewobj
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0F 49 6E 69 74 6F 62 6A 56 73 4E 65 77 6F   // ...InitobjVsNewo
                                                                                              62 6A 00 00 )                                     // bj..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 1:0:7032:35043
}
.module InitobjVsNewobj.exe
// MVID: {1915AECD-6237-4BA2-BCA9-BA934999A6D1}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private sequential ansi sealed beforefieldinit InitobjVsNewobj.Point
       extends [mscorlib]System.ValueType
{
  .field public float64 x
  .field public float64 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float64 x,
                               float64 y) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      float64 InitobjVsNewobj.Point::x
    IL_0008:  ldarg.0
    IL_0009:  ldarg.2
    IL_000a:  stfld      float64 InitobjVsNewobj.Point::y
    IL_000f:  ret
  } // end of method Point::.ctor

} // end of class InitobjVsNewobj.Point

.class private auto ansi beforefieldinit InitobjVsNewobj.PointClass
       extends [mscorlib]System.Object
{
  .field public float64 x
  .field public float64 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method PointClass::.ctor

} // end of class InitobjVsNewobj.PointClass

.class public auto ansi beforefieldinit InitobjVsNewobj.Initobj_and_newobj
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       88 (0x58)
    .maxstack  3
    .locals init (valuetype InitobjVsNewobj.Point V_0,
             class InitobjVsNewobj.PointClass V_1)
    IL_0000:  nop
    IL_0001:  ldloca.s   V_0
    IL_0003:  ldc.r8     2
    IL_000c:  ldc.r8     3
    IL_0015:  call       instance void InitobjVsNewobj.Point::.ctor(float64,
                                                                    float64)
    IL_001a:  ldstr      "(p.x, p.y) = ({0},{1})"
    IL_001f:  ldloc.0
    IL_0020:  ldfld      float64 InitobjVsNewobj.Point::x
    IL_0025:  box        [mscorlib]System.Double
    IL_002a:  ldloc.0
    IL_002b:  ldfld      float64 InitobjVsNewobj.Point::y
    IL_0030:  box        [mscorlib]System.Double
    IL_0035:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_003a:  nop
    IL_003b:  newobj     instance void InitobjVsNewobj.PointClass::.ctor()
    IL_0040:  stloc.1
    IL_0041:  ldstr      "p2.x = {0}"
    IL_0046:  ldloc.1
    IL_0047:  ldfld      float64 InitobjVsNewobj.PointClass::x
    IL_004c:  box        [mscorlib]System.Double
    IL_0051:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0056:  nop
    IL_0057:  ret
  } // end of method Initobj_and_newobj::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Initobj_and_newobj::.ctor

} // end of class InitobjVsNewobj.Initobj_and_newobj


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
