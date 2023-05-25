import java.net.Socket;
import java.util.Scanner;

public class TimeClient {
	public static void main(String args[]) throws Exception {
		String msgFromServer;
		Socket clisock = new Socket("127.0.0.1", 1342);

		// (Optional) To confirm Client is communicating through the port
		System.out.println(
				"Client " + clisock.getInetAddress() + " is communicating with port No.: " + clisock.getPort());

		Scanner s2 = new Scanner(clisock.getInputStream());
		msgFromServer = s2.nextLine();

		System.out.println(msgFromServer);

		clisock.close();
		s2.close();
	}
}


/* OUTPUT -

Client /127.0.0.1 is communicating with port No.: 1342
Thu May 25 16:22:02 IST 2023

 */