package collection;

import java.util.HashMap;
import java.util.Map;

public class Book {
	public Book(int id, String title, String author, int quantity) {
		this.id = id;
		this.title = title;
		this.author = author;
		this.quantity = quantity;
	}

	public int id;
	public String title;
	public String author;
	public int quantity;

	@Override
	public String toString() {
		return "Book{" +
			"id=" + id +
			", title='" + title + '\'' +
			", author='" + author + '\'' +
			", quantity=" + quantity +
			'}';
	}

	public static void main(String[] args) {
		Map<Integer, Book> map = new HashMap<>();
		map.put(100, new Book(100, "어린왕자", "쌩떽쥐베리", 5));
		map.put(50, new Book(200, "행복한왕자", "오스카와일드", 8));
		map.put(5, new Book(300, "셜록홈즈", "코난도일", 10));

		for (Map.Entry<Integer, Book> entry : map.entrySet()) {
			int key = entry.getKey();
			Book val = entry.getValue();
			System.out.println(val);
		}

		System.out.println("map = " + map);
	}
}
