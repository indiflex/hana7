package io;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

public class SteamEx {
	public static void main(String[] args) throws IOException {
		// sysout();
		// bufFos();

		int b = 0;
		int len = 0;
		int[] buf = new int[100];
		System.out.println("---input stream---");
		while ((b = System.in.read()) != '\n') {
			System.out.printf("%c %d%n", (char)b, b);
			buf[len++] = b;
		}

		System.out.println("---output stream---");
		for (int i = 0; i < len; i++) {
			System.out.write(buf[i]);
		}
		System.out.close();
	}

	private static void bufFos() {
		// FileOutputStream fos = new FileOutputStream("./tmp.txt");
		// for (int i = 0; i < 1024 * 1024; i++) {
		// 	fos.write(65);
		// }
		// fos.close();
		int BS = 512;
		long start = System.currentTimeMillis();
		try (FileOutputStream fos = new FileOutputStream("./tmp.txt")) {
			byte[] buf = new byte[BS];
			int idx = 0;
			for (int i = 0; i < 2 * 1024 * 1024; i++) {
				buf[idx++] = 65;
				if (idx == BS) {
					fos.write(buf);
					idx = 0;
				}
			}

			// flush
			if (idx > 0) {
				fos.write(buf, 0, idx);
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
