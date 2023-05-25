import java.net.*;
import java.util.Scanner;

public class EchoClient {

    public static void main(String[] args) throws Exception {

        System.out.println("Server Time >>>>");

        DatagramSocket cs = new DatagramSocket();

        InetAddress ip = InetAddress.getByName("localhost");

        byte[] rd = new byte[100];
        byte[] sd = new byte[100];

        Scanner s1 = new Scanner(System.in);
        System.out.println("Greet the Server...\n");
        sd = s1.nextLine().getBytes();
        
        DatagramPacket sp = new DatagramPacket(sd, sd.length, ip, 1234);
        cs.send(sp);

        DatagramPacket rp = new DatagramPacket(rd, rd.length);
        cs.receive(rp);

        String mssg = new String(rp.getData());

        System.out.println(mssg);

        cs.close();

    }

}

/* OUTPUT -

Server is up....
Done !!
Server is up....

 */