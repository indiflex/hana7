package oop;

public interface Alarm {
	void playMusic(String title);

	abstract public void beep();
}

class SmartPhone implements Alarm {
	private String phoneNumber;

	void call() {
	}

	@Override
	public void playMusic(String title) {
		System.out.printf("[%s] 재생%n", title);
	}

	@Override
	public void beep() {
		for (int i = 0; i < 3; i++) {
			System.out.print("삐이익 ~ \007");
			System.out.flush();
		}
	}

	public static void main(String[] args) {
		Alarm a = new SmartPhone();
		a.playMusic("비의 랩소디");
		a.beep();
	}
}
