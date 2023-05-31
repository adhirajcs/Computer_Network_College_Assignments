import java.io.*;
import java.net.*;

public class ClientchatTCP {
    public static void main(String args[])
	{
        try{
            Socket clientSocket = new Socket("localhost",3000);
            DataInputStream din = new DataInputStream(clientSocket.getInputStream());
            DataOutputStream dout = new DataOutputStream(clientSocket.getOutputStream());

            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            String msgin="", msgout="";

            while (!msgin.equalsIgnoreCase("exit")) {
	            msgout = br.readLine();
                dout.writeUTF(msgout);
                msgin = din.readUTF();
                System.out.println("Server:-"+msgin);

		    }
            clientSocket.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
	}
}


/* OUTPUT -

hello
Server:-hi
nice to meet you
Server:-same from this side
bye
Server:-bye


 */