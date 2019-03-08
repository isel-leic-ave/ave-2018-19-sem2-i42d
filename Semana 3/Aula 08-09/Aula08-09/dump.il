
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula08-09'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 09 41 75 6C 61 30 38 2D 30 39 00 00 )       // ...Aula08-09..
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
  .ver 1:0:7006:34370
}
.module 'Aula08-09.exe'
// MVID: {0811DA58-8113-4A51-98A0-05BF5E403546}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit MyArrayList
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .field private int32[] a
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.s   10
    IL_000b:  newarr     [mscorlib]System.Int32
    IL_0010:  stfld      int32[] MyArrayList::a
    IL_0015:  ret
  } // end of method MyArrayList::.ctor

  .method public hidebysig specialname instance int32 
          get_Item(int32 idx) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] MyArrayList::a
    IL_0007:  ldarg.1
    IL_0008:  ldelem.i4
    IL_0009:  stloc.0
    IL_000a:  br.s       IL_000c

    IL_000c:  ldloc.0
    IL_000d:  ret
  } // end of method MyArrayList::get_Item

  .method public hidebysig specialname instance void 
          set_Item(int32 idx,
                   int32 'value') cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] MyArrayList::a
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  stelem.i4
    IL_000a:  ret
  } // end of method MyArrayList::set_Item

  .method public hidebysig specialname instance int32 
          get_Item(int32 idx1,
                   int32 idx2) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] MyArrayList::a
    IL_0007:  ldarg.1
    IL_0008:  ldelem.i4
    IL_0009:  stloc.0
    IL_000a:  br.s       IL_000c

    IL_000c:  ldloc.0
    IL_000d:  ret
  } // end of method MyArrayList::get_Item

  .method public hidebysig specialname instance void 
          set_Item(int32 idx1,
                   int32 idx2,
                   int32 'value') cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] MyArrayList::a
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  stelem.i4
    IL_000a:  ret
  } // end of method MyArrayList::set_Item

  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  3
    .locals init (class MyArrayList V_0,
             int32 V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  newobj     instance void MyArrayList::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   10
    IL_000b:  callvirt   instance void MyArrayList::set_Item(int32,
                                                             int32)
    IL_0010:  nop
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.1
    IL_0013:  ldc.i4.s   20
    IL_0015:  callvirt   instance void MyArrayList::set_Item(int32,
                                                             int32)
    IL_001a:  nop
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.1
    IL_001d:  br.s       IL_0030

    IL_001f:  ldloc.0
    IL_0020:  ldloc.1
    IL_0021:  callvirt   instance int32 MyArrayList::get_Item(int32)
    IL_0026:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_002b:  nop
    IL_002c:  ldloc.1
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  ldc.i4.s   10
    IL_0033:  clt
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  brtrue.s   IL_001f

    IL_0039:  ret
  } // end of method MyArrayList::Main1

  .property instance int32 Item(int32)
  {
    .get instance int32 MyArrayList::get_Item(int32)
    .set instance void MyArrayList::set_Item(int32,
                                             int32)
  } // end of property MyArrayList::Item
  .property instance int32 Item(int32,
                                int32)
  {
    .get instance int32 MyArrayList::get_Item(int32,
                                              int32)
    .set instance void MyArrayList::set_Item(int32,
                                             int32,
                                             int32)
  } // end of property MyArrayList::Item
} // end of class MyArrayList

.class public auto ansi beforefieldinit Point
       extends [mscorlib]System.Object
{
  .field private float64 _x
  .field private float64 _y
  .field public float64 _phase
  .method public hidebysig specialname instance float64 
          get_X() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float64 Point::_x
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Point::get_X

  .method public hidebysig specialname instance float64 
          get_Y() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float64 Point::_y
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Point::get_Y

  .method public hidebysig specialname instance float64 
          get_Phase() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float64 Point::_phase
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Point::get_Phase

  .method public hidebysig specialname instance void 
          set_Phase(float64 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      float64 Point::_phase
    IL_0008:  ret
  } // end of method Point::set_Phase

  .method public hidebysig specialname instance float64 
          get_Abs() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float64 Point::_x
    IL_0007:  ldarg.0
    IL_0008:  ldfld      float64 Point::_x
    IL_000d:  mul
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float64 Point::_y
    IL_0014:  ldarg.0
    IL_0015:  ldfld      float64 Point::_y
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  call       float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method Point::get_Abs

  .method public hidebysig specialname instance void 
          set_Abs(float64 'value') cil managed
  {
    // Code size       37 (0x25)
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance float64 Point::get_Phase()
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldloc.0
    IL_000b:  call       float64 [mscorlib]System.Math::Cos(float64)
    IL_0010:  mul
    IL_0011:  stfld      float64 Point::_x
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldloc.0
    IL_0019:  call       float64 [mscorlib]System.Math::Sin(float64)
    IL_001e:  mul
    IL_001f:  stfld      float64 Point::_y
    IL_0024:  ret
  } // end of method Point::set_Abs

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Point::.ctor

  .property instance float64 X()
  {
    .get instance float64 Point::get_X()
  } // end of property Point::X
  .property instance float64 Y()
  {
    .get instance float64 Point::get_Y()
  } // end of property Point::Y
  .property instance float64 Phase()
  {
    .get instance float64 Point::get_Phase()
    .set instance void Point::set_Phase(float64)
  } // end of property Point::Phase
  .property instance float64 Abs()
  {
    .get instance float64 Point::get_Abs()
    .set instance void Point::set_Abs(float64)
  } // end of property Point::Abs
} // end of class Point

.class public auto ansi beforefieldinit Prog
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       148 (0x94)
    .maxstack  2
    .locals init (class Point V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void Point::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.r8     3.1415926535897931
    IL_0011:  callvirt   instance void Point::set_Phase(float64)
    IL_0016:  nop
    IL_0017:  ldloc.0
    IL_0018:  ldc.r8     1
    IL_0021:  callvirt   instance void Point::set_Abs(float64)
    IL_0026:  nop
    IL_0027:  ldstr      "p.x = "
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance float64 Point::get_X()
    IL_0032:  box        [mscorlib]System.Double
    IL_0037:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_003c:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0041:  nop
    IL_0042:  ldstr      "p.y = "
    IL_0047:  ldloc.0
    IL_0048:  callvirt   instance float64 Point::get_Y()
    IL_004d:  box        [mscorlib]System.Double
    IL_0052:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0057:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_005c:  nop
    IL_005d:  ldstr      "p.Phase = "
    IL_0062:  ldloc.0
    IL_0063:  callvirt   instance float64 Point::get_Phase()
    IL_0068:  box        [mscorlib]System.Double
    IL_006d:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0072:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  ldstr      "p.Abs = "
    IL_007d:  ldloc.0
    IL_007e:  callvirt   instance float64 Point::get_Abs()
    IL_0083:  box        [mscorlib]System.Double
    IL_0088:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_008d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0092:  nop
    IL_0093:  ret
  } // end of method Prog::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Prog::.ctor

} // end of class Prog

.class private auto ansi beforefieldinit PropertiesCSharp3_0.Point
       extends [mscorlib]System.Object
{
  .field private float64 '<X>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private float64 '<Y>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private float64 '<Phase>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance float64 
          get_X() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PropertiesCSharp3_0.Point::'<X>k__BackingField'
    IL_0006:  ret
  } // end of method Point::get_X

  .method private hidebysig specialname instance void 
          set_X(float64 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 PropertiesCSharp3_0.Point::'<X>k__BackingField'
    IL_0007:  ret
  } // end of method Point::set_X

  .method public hidebysig specialname instance float64 
          get_Y() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PropertiesCSharp3_0.Point::'<Y>k__BackingField'
    IL_0006:  ret
  } // end of method Point::get_Y

  .method private hidebysig specialname instance void 
          set_Y(float64 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 PropertiesCSharp3_0.Point::'<Y>k__BackingField'
    IL_0007:  ret
  } // end of method Point::set_Y

  .method public hidebysig specialname instance float64 
          get_Phase() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PropertiesCSharp3_0.Point::'<Phase>k__BackingField'
    IL_0006:  ret
  } // end of method Point::get_Phase

  .method public hidebysig specialname instance void 
          set_Phase(float64 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 PropertiesCSharp3_0.Point::'<Phase>k__BackingField'
    IL_0007:  ret
  } // end of method Point::set_Phase

  .method public hidebysig specialname instance float64 
          get_Abs() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance float64 PropertiesCSharp3_0.Point::get_X()
    IL_0007:  ldarg.0
    IL_0008:  call       instance float64 PropertiesCSharp3_0.Point::get_X()
    IL_000d:  mul
    IL_000e:  ldarg.0
    IL_000f:  call       instance float64 PropertiesCSharp3_0.Point::get_Y()
    IL_0014:  ldarg.0
    IL_0015:  call       instance float64 PropertiesCSharp3_0.Point::get_Y()
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  call       float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method Point::get_Abs

  .method public hidebysig specialname instance void 
          set_Abs(float64 'value') cil managed
  {
    // Code size       39 (0x27)
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance float64 PropertiesCSharp3_0.Point::get_Phase()
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldloc.0
    IL_000b:  call       float64 [mscorlib]System.Math::Cos(float64)
    IL_0010:  mul
    IL_0011:  call       instance void PropertiesCSharp3_0.Point::set_X(float64)
    IL_0016:  nop
    IL_0017:  ldarg.0
    IL_0018:  ldarg.1
    IL_0019:  ldloc.0
    IL_001a:  call       float64 [mscorlib]System.Math::Sin(float64)
    IL_001f:  mul
    IL_0020:  call       instance void PropertiesCSharp3_0.Point::set_Y(float64)
    IL_0025:  nop
    IL_0026:  ret
  } // end of method Point::set_Abs

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Point::.ctor

  .property instance float64 X()
  {
    .get instance float64 PropertiesCSharp3_0.Point::get_X()
    .set instance void PropertiesCSharp3_0.Point::set_X(float64)
  } // end of property Point::X
  .property instance float64 Y()
  {
    .get instance float64 PropertiesCSharp3_0.Point::get_Y()
    .set instance void PropertiesCSharp3_0.Point::set_Y(float64)
  } // end of property Point::Y
  .property instance float64 Phase()
  {
    .get instance float64 PropertiesCSharp3_0.Point::get_Phase()
    .set instance void PropertiesCSharp3_0.Point::set_Phase(float64)
  } // end of property Point::Phase
  .property instance float64 Abs()
  {
    .get instance float64 PropertiesCSharp3_0.Point::get_Abs()
    .set instance void PropertiesCSharp3_0.Point::set_Abs(float64)
  } // end of property Point::Abs
} // end of class PropertiesCSharp3_0.Point

.class public auto ansi beforefieldinit PropertiesCSharp3_0.Prog
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       148 (0x94)
    .maxstack  2
    .locals init (class PropertiesCSharp3_0.Point V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void PropertiesCSharp3_0.Point::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.r8     3.1415926535897931
    IL_0011:  callvirt   instance void PropertiesCSharp3_0.Point::set_Phase(float64)
    IL_0016:  nop
    IL_0017:  ldloc.0
    IL_0018:  ldc.r8     1
    IL_0021:  callvirt   instance void PropertiesCSharp3_0.Point::set_Abs(float64)
    IL_0026:  nop
    IL_0027:  ldstr      "p.x = "
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance float64 PropertiesCSharp3_0.Point::get_X()
    IL_0032:  box        [mscorlib]System.Double
    IL_0037:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_003c:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0041:  nop
    IL_0042:  ldstr      "p.y = "
    IL_0047:  ldloc.0
    IL_0048:  callvirt   instance float64 PropertiesCSharp3_0.Point::get_Y()
    IL_004d:  box        [mscorlib]System.Double
    IL_0052:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0057:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_005c:  nop
    IL_005d:  ldstr      "p.Phase = "
    IL_0062:  ldloc.0
    IL_0063:  callvirt   instance float64 PropertiesCSharp3_0.Point::get_Phase()
    IL_0068:  box        [mscorlib]System.Double
    IL_006d:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0072:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  ldstr      "p.Abs = "
    IL_007d:  ldloc.0
    IL_007e:  callvirt   instance float64 PropertiesCSharp3_0.Point::get_Abs()
    IL_0083:  box        [mscorlib]System.Double
    IL_0088:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_008d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0092:  nop
    IL_0093:  ret
  } // end of method Prog::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Prog::.ctor

} // end of class PropertiesCSharp3_0.Prog


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
