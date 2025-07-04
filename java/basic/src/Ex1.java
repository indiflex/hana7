import java.util.Scanner;

public class Ex1 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("name: ");
		String name = scanner.next();
		System.out.print("addr=");
		scanner.nextLine();
		String addr = scanner.nextLine();
		System.out.print("age=");
		short age = scanner.nextShort();
		System.out.print("height=");
		float height = scanner.nextFloat();

		System.out.printf("- name: %s%n - addr: %s%n - age: %d%n", name, addr, age);
	}
}
