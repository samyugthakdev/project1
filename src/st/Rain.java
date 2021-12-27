package st;
import java.io.*;
public class Rain {
	public static void main(String args[]) throws NumberFormatException, IOException
	{
		DataInputStream in =new DataInputStream(System.in);
		System.out.println("Enter the mm value");
		int num=Integer.parseInt(in.readLine());
		if(num>=1 && num<=5)
		{
			System.out.println("NO RAIN");
		}
		else if(num>5 && num<=10)
		{
			System.out.println("Moderate rain");
		}
		else if(num>10)
		{
			System.out.println("Heavy rain");
		}
		else
		{
			System.out.println("Enter valid input");
		}
	}
}
