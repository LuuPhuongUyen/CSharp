﻿using System;

namespace Sum1toN
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter n: ");
            int n = int.Parse(Console.ReadLine());
            int sum = 0;
            for (int i = 0; i <= n; i++)
            {
                sum += i;
            }
            Console.WriteLine($"Sum = {sum}");
        }
    }
}
