package io;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

public class SteamEx {
	public static void main(String[] args) throws IOException {
		// sysout();

		// FileOutputStream fos = new FileOutputStream("./tmp.txt");
		// for (int i = 0; i < 1024 * 1024; i++) {
		// 	fos.write(65);
		// }
		// fos.close();

		int BS = 256;
		long start = System.currentTimeMillis();
		try (FileOutputStream fos = new FileOutputStream("./tmp.txt")) {
			byte[] buf = new byte[BS];
			for (int i = 0; i < 2 * 1024 * 1024; i++) {
				fos.write(65);
			}
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
		System.out.println(System.currentTimeMillis() - start);
	}

	private static void sysout() throws IOException {
		byte[] buf = new byte[] {97, 98, 99};
		PrintStream out = System.out;
		out.println("PrintLN");
		out.write(65);
		out.write(1024);
		out.write('\n');
		out.write(buf);
		out.write('\n');
		out.write('!');
		out.close();
	}
}
