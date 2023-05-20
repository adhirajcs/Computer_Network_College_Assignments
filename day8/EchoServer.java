import java.io.*;
import java.net.*;
import java.util.*;

public class EchoServer 
{
	public static void main(String args[]) throws Exception
    	{
	
        		ServerSocket sersock = null;
        		String line;
			Scanner is=null;   
        		PrintStream os=null;
        		Socket clisock = null;        		     
	
	        	try 
			{
           			sersock = new ServerSocket(1342);
        		}
        		catch (IOException e) 
			{
           			System.out.println(e);
       	 		}   

			//(Optional)To confirm Server Reserved specified port or not
        		System.out.println("The Server has reserved port No.: "+sersock.getLocalPort()+" for this Service");  

	    		try 
			{
           			clisock = sersock.accept();
			
				//To confirm Server communicated through the socket or not        
        			System.out.println("Client with IP Address "+clisock.getInetAddress());  
 
           			is = new Scanner(clisock.getInputStream());   
           			os = new PrintStream(clisock.getOutputStream());

	   			//  we receive data, echo that data back to the client
           			
             				line = is.nextLine();
             				os.println(line); 
           			
        		}   
    			catch (IOException e) 
			{
           			System.out.println(e);
        		}
			sersock.close();
			clisock.close();
     			is.close();
     			os.close();
    	}
}
