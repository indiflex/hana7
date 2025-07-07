public class Ex5 {
	public static void main(String[] args) {
		short dan = 11;
		while (dan <= 19) {
			System.out.printf("%n%6d단%n", dan);
			for (short i = 1; i <= 9; i++) {
				System.out.printf("%2d x %d = %3d%n", dan, i, dan * i);
			}
			dan++;
		}
	}
}
