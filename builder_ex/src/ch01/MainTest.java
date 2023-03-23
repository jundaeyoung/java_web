package ch01;

import ch01.Todo.MyBuilder;

public class MainTest {
	public static void main(String[] args) {
		
		Todo todo = new MyBuilder().build();
	}
}
