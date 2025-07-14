package oop;

import java.util.Arrays;

@FunctionalInterface
interface InterFace {
	public abstract void print(String k);
}

// () => {}
class Outer {
	InterFace inter = (k) ->
		System.out.println("true = " + true);

	void print() {
		inter.print("K");
	}
}

public class Inners {
	public static void main(String[] args) {
		Outer o = new Outer();
		o.print();

		String[] strs = {"1", "002", "03"};
		Arrays.sort(strs, (String o1, String o2) ->
			o1.length() - o2.length()
		);
		System.out.println("strs = " + Arrays.toString(strs));

		Arrays.sort(strs, (o1, o2) -> Integer.parseInt(o1) - Integer.parseInt(o2));
		System.out.println("strs = " + Arrays.toString(strs));
	}
}
