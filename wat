using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Napis co chces zasifrovat: ");
            string vstup = Console.ReadLine();
            Console.WriteLine("Napis kod: ");
            int kod = Console.ReadLine();
            string vystup = "";
            char znak =' ';
            vstup = vstup.ToUpper();

            for (int i =0; i<vstup.Length; i++)
            {
                znak = vstup[i];
                kod = (int)znak;
                if (kod>= 65 && kod <= 90)
                {
                    //ABC
                    znak = (char)(kod + 3);
                    if (znak > 'Z')
                    {
                        znak = (char)(kod + 3 - 26);
                    }
                }
                vystup += znak;
            }
            Console.WriteLine('\n' + "Vysledek: " + '\n' + vystup);
            Console.ReadKey();
        }
    }
}
