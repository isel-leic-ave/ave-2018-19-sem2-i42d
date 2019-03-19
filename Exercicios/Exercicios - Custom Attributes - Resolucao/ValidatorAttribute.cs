using System;
using System.Reflection;

namespace Exercicios
{
    internal class ValidatorAttribute : Attribute
    {
        private MethodInfo Method { get; set; }

        public ValidatorAttribute(string methodName)
        {
            // Get MethodInfo
            Method = this.GetType().GetMethod(methodName, BindingFlags.NonPublic | BindingFlags.Static);
        }
        private static bool NumberGreaterThan20000(int nr) {
            return nr > 20000;
        }
        public bool IsValidNumber(int nr) {
            return (bool)Method.Invoke(null, new object[] { nr });
        }
    }
}