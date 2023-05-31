import java.net.*;
import java.io.*;
public class ServerchatTCP{
    public static void main(String[] args) throws IOException{
        try{
            ServerSocket serverSocket = new ServerSocket(3000);
            Socket clientSocket = serverSocket.accept();
            DataInputStream din = new DataInputStream(clientSocket.getInputStream());
            DataOutputStream dout = new DataOutputStream(clientSocket.getOutputStream());
    
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            String msgin="", msgout="";
    
            while(!msgin.equalsIgnoreCase("exit")){
                msgin = din.readUTF();
                System.out.println("Client:-"+msgin);
                msgout = br.readLine();
                dout.writeUTF(msgout);
                dout.flush();
            }
            clientSocket.close();
            }
            catch(IOException e){
    
            }


    }
}


/*  OUTPUT - 

Client:-hello
hi
Client:-nice to meet you
same from this side
Client:-bye
bye


*/