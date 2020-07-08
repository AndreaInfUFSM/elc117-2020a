public class ArrayWriter extends Thread {

  private SharedArray array;
  private int count;
  private char c;

  ArrayWriter(SharedArray array, int count, char c) {
    this.array = array;
    this.count = count;
    this.c = c;
  }

  @Override
  public void run() {
    for (int i = 0; i < count; i++) {
      array.addChar(c);
    }
  }

}
