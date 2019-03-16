using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

namespace TypeManipulation
{
    // Comment/uncomment public keyword and analyse the results 
    // Execute this program in the command line in the bin/Debug directory
	///*public*/ class TypeLoader
	
    public class TypeLoader
    {
		public static IList<Type> LoadTypes()
		{
			string path = Directory.GetCurrentDirectory();
			Console.WriteLine("Current directory: " + path);
			string[] fileNames = Directory.GetFiles(path, "*.dll");
			Assembly a = null;
			List<Type> types = new List<Type>();
			foreach (string fileName in fileNames)
			{
				try
				{
					a = Assembly.LoadFrom(fileName);
					types.AddRange(a.GetExportedTypes()); 
				}
				catch(Exception e)
				{
					// For the case that it isn't a managed assembly
				}
			}
			fileNames = Directory.GetFiles(path, "*.exe");
			foreach (string fileName in fileNames)
			{
				try
				{
					a = Assembly.LoadFrom(fileName);
					types.AddRange(a.GetExportedTypes());
				}
				catch (Exception e)
				{
					// For the case that it isn't a managed assembly
				}
			}
			return types;
		}

		public static void Main1() {
			IList<Type> types = LoadTypes();
			foreach (Type t in types)
				Console.WriteLine (t);
		}

	}
}

