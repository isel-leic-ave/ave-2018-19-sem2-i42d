using System;
namespace DelegatesIntro
{

    // Define a delegate type
    delegate void Action(int i);

    public class DelegateIntro
    {
        public DelegateIntro()
        {
        }

        private static void MStatic(int x) {
            Console.WriteLine("DelegateIntro::MStatic, x = {0}", x);
        }
        private void MInstance(int x)
        {
            Console.WriteLine("DelegateIntro::MInstance, x = {0}", x);
        }

        public static void Main1() {
            //
            // Create delegate
            //
            Action action = new Action(DelegateIntro.MStatic);
            Action action1 = new Action(new DelegateIntro().MInstance);
            // Or:
            Action action2 = DelegateIntro.MStatic;
            Action action3 = new DelegateIntro().MInstance;
            //
            // Invoke
            //
            action.Invoke(10);
            action1.Invoke(20);
            // Or:
            action(10);
            action1(20);
            //
            // Associate lambda
            //
            Action lambda = (int i) => Console.WriteLine("Lambda, i = {0}", i);
            // Invoke
            lambda(30);
            // Or:
            lambda.Invoke(30);
        }
    }
}












