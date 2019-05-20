using System;
using System.Collections.Generic;

/*
 * Based on: DotNetPearls
 */ 
namespace Delegates.Demos.Demo03
{
    class Program
    {
        static void Main1()
        {
            List<int> elements = new List<int>() { 10, 20, 31, 40 };
            // ... Find index of first odd element.
            int oddIndex = elements.FindIndex(x => x % 2 != 0);
            Console.WriteLine(oddIndex);
            // Output:
            // 2
/*
Lambda details

x          The argument name.
=>         Separates argument list from result expression.
x % 2 !=0  Returns true if x is not even.
*/ 
        }
    }

    class AnotherProgram
    {
        static void Main()
        {
            //
            // Use implicitly-typed lambda expression.
            // ... Assign it to a Func instance.
            //
            Func<int, int> func1 = x => x + 1;
            //
            // Use lambda expression with statement body.
            //
            Func<int, int> func2 = x => { return x + 1; };
            //
            // Use formal parameters with expression body.
            //
            Func<int, int> func3 = (int x) => x + 1;
            //
            // Use parameters with a statement body.
            //
            Func<int, int> func4 = (int x) => { return x + 1; };
            //
            // Use multiple parameters.
            //
            Func<int, int, int> func5 = (x, y) => x * y;
            //var f5 = (x, y) => x * y;
            var exp = 2 + 1; // tipo int
            Console.WriteLine(exp.GetType());
            var exp1 = (double)2 + (byte)1;
            Console.WriteLine(exp1.GetType());

            //
            // Use no parameters in a lambda expression.
            //
            Action func6 = () => Console.WriteLine();
            //
            // Use delegate method expression.
            //
            Func<int, int> func7 = delegate (int x) { return x + 1; };
            //
            // Use delegate expression with no parameter list.
            //
            Func<int> func8 = delegate { return 1 + 1; };
            //
            // Invoke each of the lambda expressions and delegates we created.
            // ... The methods above are executed.
            //
            Console.WriteLine(func1.Invoke(1));
            Console.WriteLine(func2.Invoke(1));
            Console.WriteLine(func3.Invoke(1));
            Console.WriteLine(func4.Invoke(1));
            Console.WriteLine(func5.Invoke(2, 2));
            func6.Invoke();
            Console.WriteLine(func7.Invoke(1));
            Console.WriteLine(func8.Invoke());
        }
    }
/*
Output
2
2
2
2
4

2
2
*/

    class YetAnotherProgram
    {
        static void Main1()
        {
            Predicate<int> predicate = value => value == 5;
            Console.WriteLine(predicate.Invoke(4));
            Console.WriteLine(predicate.Invoke(5));
        }
    }
/*
Output

False
True
*/

}


