class MyThread extends Thread {
	private char id;
	public MyThread(char id) {
		this.id = id;
	}
	public void run() {
		for (int count = 0; count < 10; count++) {
			System.out.println("Thread " + id + " counting: " + count);
		}
	}
}
class MyRunnable implements Runnable {
	private char id;
	public MyRunnable(char id) {
		this.id = id;
	}
	public void run() {
		for (int count = 0; count < 10; count++) {
			System.out.println("Runnable " + id + " counting: " + count);
		}
	}
}
class MainThread {
  public static void main(String[] args) {
		MyThread t1 = new MyThread('A');
		Thread t2 = new Thread(new MyRunnable('B'));
		t1.start();
		t2.start();
  }
}
