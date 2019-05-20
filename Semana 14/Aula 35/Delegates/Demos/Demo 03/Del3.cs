using System;
using System.IO;
using System.Windows.Forms;

namespace Del3
{
    // Richter CLR via C# example

    // Declare a delegate type; instances refer to a method that
    // takes an Int32 parameter and returns void.
    internal delegate void Feedback(Int32 value);

    public sealed class Program
    {
        private static void FeedbackToConsole(Int32 value)
        {
            Console.WriteLine("Item = " + value.ToString());
        }

        private static void FeedbackToMsgBox(Int32 value)
        {
            MessageBox.Show("Item = " + value.ToString());
        }

        private void FeedbackToFile(Int32 value)
        {
            StreamWriter sw = new StreamWriter("Status", true);
            sw.WriteLine("Item = " + value.ToString());
            sw.Close();
        }

        private static void Counter(Int32 from, Int32 to, Feedback fb)
        {
            if (fb == null) return;

            // If any callbacks are specified, call them
            for (Int32 val = from; val <= to; val++)
            {
                fb(val);
                //<=>
                //fb.Invoke(val);
            }
        }

        private static void StaticDelegateDemo()
        {
            Console.WriteLine("----- Static Delegate Demo -----");
            Counter(1, 3, null);
            Counter(1, 3, new Feedback(Program.FeedbackToConsole));
            Counter(1, 3, new Feedback(FeedbackToMsgBox)); // "Program." is optional
            // Forma simplificada 
            Counter(1, 3, FeedbackToConsole);

            Console.WriteLine();
        }

        private static void InstanceDelegateDemo()
        {
            Console.WriteLine("----- Instance Delegate Demo -----");
            Program p = new Program();
            //Counter(1, 3, new Feedback(p.FeedbackToFile));
            // Forma simplificada 
            Counter(1, 3, p.FeedbackToFile);

            Console.WriteLine();
        }


        //
        // VER CODIGO IL
        //
        private static void AnonymousDelegateDemo()
        {
            Console.WriteLine("----- Anonymous Delegate Demo -----");

            //Counter(1, 3, delegate (int value)
            //{
            //    Console.WriteLine("Item = " + value.ToString());
            //});
            //Console.WriteLine();

            // Ou:
            Feedback anonymous = delegate(int value) {
                Console.WriteLine("Item = " + value);
            };

            Counter(1, 3, anonymous);
            Console.WriteLine();

            // Ou:
            Feedback anonymous1 = (int value) => Console.WriteLine("[anonymous1] Item = " + value);

            Counter(1, 3, anonymous1);
            Console.WriteLine();
        }

        public static void Main1()
        {
            //StaticDelegateDemo();
            //InstanceDelegateDemo();
            AnonymousDelegateDemo();
        }

    }
}
