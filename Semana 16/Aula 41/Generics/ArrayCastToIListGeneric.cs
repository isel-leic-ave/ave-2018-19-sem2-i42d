using System;
using System.Collections.Generic;

namespace Aula33.Generics
{
    public class ArrayCastToIListGeneric
    {
        public ArrayCastToIListGeneric()
        {
        }

        public static void Main() {
            // int[] deriva de System.Array que, por sua vez, apenas implementa IList nao generica.
            // De modo a simplificar o desenho, em vez de suportar IList<T> em System.Array,
            // O que implicaria System.Array implementar todo o codigo de IEnumerable<T> e
            // IList<T>.
            // Optou-se antes por suportar diretamente IList<int> em int[], IList<string> em string[],
            // etc. em tempo de execucao, por questoes de eficiencia (ver ligacoes no sumario da aula).
            // Os arrays suportam IList devido a ser a unica interface que suporta indexacao. 
            // Optou-se por um desenho "implement a single fat interface instead of multiple thin interfaces".
            // Os metodos nao suportados (e.g., Add) lancam excecao.
            //
            Array array = Array.CreateInstance(typeof(int), 4);
            array.SetValue(10, 0);
            //array.SetValue("10", 1);
            int[] iarr = (int[])array;
            Array.ForEach(iarr, Console.WriteLine);
            // 
            object[] oarr = new object[] {12, 1, 2, 3};
            //int[] iarr2 = (int[])oarr; // cast nao possivel porque implicaria
            // verificar todos os elementos em runtime
            int[] iarr2 = Array.ConvertAll(oarr, (input) => (int)input);
            Array.ForEach(iarr2, Console.WriteLine);

            int[] arr = { 1, 2, 3, 4, 5 }; // Deriva de System.Array
            //arr. ... // Interface generica suportada em tempo de execucao por questoes de eficiencia da implementacao,
                       // ou seja, metodos genericos nao sao visiveis na API de Array
            IList<int> list = arr; 
            list.Add(6); // Excecao, array tem dimensao fixa e e' readonly
            list.IndexOf(2); // OK
            foreach (int i in list) { // IList<int> implementa IEnumerable<int>
                Console.WriteLine(i);
            }

        }
    }
}
