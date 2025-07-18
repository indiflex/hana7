package io.socket;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {
	public static final int PORT = 9999;

	public static void main(String[] args) throws IOException {
		try (ServerSocket server = new ServerSocket(PORT)) {
			Socket client = server.accept();
			System.out.println("client = " + client);
			DataInputStream in = new DataInputStream(client.getInputStream());
			DataOutputStream out = new DataOutputStream(client.getOutputStream());
			System.out.println("client: " + in.readUnsignedByte());
			out.writeUTF("Hello~");

			in.close();
			out.close();
		} catch (Exception e) {
			System.out.println("Server down!!");
		}
	}

}
