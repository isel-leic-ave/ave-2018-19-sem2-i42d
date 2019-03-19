using System;
using System.Reflection;

namespace Exercicios
{
    class Student
    {
        [Validator("NumberGreaterThan20000")]
        public int Nr { get; set; }

        public string Name { get; private set; }
        public Student()
        {
        }

        public Student(int number, string name) {
            Nr = number;
            Name = name;
        }
    }

    class NumberValidator {
        private static ValidatorAttribute att;
        private static bool Created { get; set; }

        public static bool SetValidNumber(Student student, int nr) {
            // Verifica se propriedade Nr de student tem atributo o Validator aplicado. 
            // Se sim, verifica se studentNum é um argumento válido, executando o método
            // NumberGreaterThan20000. Se o número for válido, faz set do número ao student.

            // Realize o método NumberGreaterThan20000, que se encontra na classe ValidatorAttribute
            // Otimize o código para criar o atributo apenas uma vez.
            if (!Created)
            {
                // Get student type
                Type type = student.GetType();
                // Get Nr property
                PropertyInfo pi = type.GetProperty("Nr");
                // Get custom attribute - parameters: attribute type, inherit = false
                att = (ValidatorAttribute)pi.GetCustomAttribute(typeof(ValidatorAttribute), false);
                // Change Created
                Created = true;
            }
            bool result = true;
            if (att != null)
            {
                result = att.IsValidNumber(nr);
                if (result)
                {
                    student.Nr = nr;
                }
            }
            return result;
        }
    }


    class App {
        public static void Main() {
            Student s = new Student();
            bool validArg = NumberValidator.SetValidNumber(s, 19000); // false
            Console.WriteLine("Number {0} is valid? {1}", 1900, validArg);
            Console.WriteLine("Student number: {0}", s.Nr);
        
            validArg = NumberValidator.SetValidNumber(s, 25000); // true
            Console.WriteLine("Number {0} is valid? {1}", 25000, validArg);
            Console.WriteLine("Student number: {0}", s.Nr);
        }
    }
}
