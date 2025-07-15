package lambda;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Reflection extends Parent {
	private String name;

	public Reflection(int id, String name) {
		super(id);
		this.name = name;
	}

	public static void main(String[] args) {
		Reflection inst = new Reflection(1, "Hong");
		System.out.println("inst.getName() = " + inst.getName());

		try {
			Class<?> rc2 = Class.forName("lambda.Reflection");
			System.out.println("rc2 = " + rc2);
		} catch (ClassNotFoundException e) {
			e.printStackTrace(System.out);
		}

		Class<Reflection> rc = Reflection.class;
		System.out.println("rc = " + rc);
	}
}

@AllArgsConstructor
@NoArgsConstructor
class Parent {
	private int id;
}
