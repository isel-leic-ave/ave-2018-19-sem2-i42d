using System;
using System.Reflection;
using CodeReflection;

namespace Reflection.ReflectedType
{
    // MSDN:
    // The ReflectedType property retrieves the Type object that was used to 
    // obtain this instance of MemberInfo. This may differ from the value of the 
    // DeclaringType property if this MemberInfo object represents a member 
    // that is inherited from a base class.
    class Base
    {
        public void Foo(int i) { }
    }
    class Derived : Base
    {
        public void Inspector()
        {
            MemberInfo bf = typeof(Base).GetMethod("Foo");
            MemberInfo df = typeof(Derived).GetMethod("Foo");

            Console.WriteLine("Base    Declaring = {0}, Reflected = {1}", 
                              bf.DeclaringType, bf.ReflectedType); 
            Console.WriteLine("Derived    Declaring = {0}, Reflected = {1}", 
                              df.DeclaringType, df.ReflectedType); 
        }
    }

    public class ReflectedTypeExample
    {
        public ReflectedTypeExample()
        {
            Student s = new Student(12, "Ana");
            // Get type
            Type type = s.GetType();
            // Get Number property
            PropertyInfo pi = type.GetProperty("Number");
            // Property name
            Console.WriteLine("Name = {0}", pi.Name);
            // Declaring type
            Console.WriteLine("DeclaringType = {0}", pi.DeclaringType); // Student
            // Reflected type
            Console.WriteLine("ReflectedType = {0}", pi.ReflectedType); // Student

            // In order to know the executing method:
            MethodBase m = MethodBase.GetCurrentMethod();
            Console.WriteLine("Executing {0}.{1}",
                              m.ReflectedType.Name, m.Name);
        }

        public static void Main()
        {
            // 1.
            new ReflectedTypeExample();
            // 2.
            //(new Derived()).Inspector();
        }
    }

}












