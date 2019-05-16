using System;
namespace DelegatesIntro
{
    // Define a predicate delegate (Note: this delegate already exists in the library)
    public delegate bool Predicate<T>(T elem);

    public class Filter<T>
    {
        public static int Count(T[] arr, Predicate<T> pred) {
            int c = 0;
            foreach (T item in arr)
            {
                if (pred(item))
                {
                    ++c;
                }
            }
            return c;
        }
    }

    public class App
    {
        public static bool isEven(int elem) {
            return elem % 2 == 0;
        }
        public static void Main()
        {
            int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            int c = Filter<int>.Count(arr, (int elem) => elem % 2 == 0);
            Console.WriteLine("Count even elems with lambda, c = {0}", c);

            Predicate<int> pred = App.isEven;
            int c1 = Filter<int>.Count(arr, pred);
            Console.WriteLine("Count even elems with delegate, c1 = {0}", c1);
        }
    }
}








