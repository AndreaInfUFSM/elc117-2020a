import java.io.PrintStream;
import java.util.Arrays;

public class ThreadABC {

  private static final int WriterCount = 20;
  private static final char[] WriterChars = {'A', 'B', 'C'};

  public static void main(String[] args) {
       
    SharedArray array = new SharedArray(WriterCount * WriterChars.length);
    ArrayWriter[] threads = new ArrayWriter[WriterChars.length];
    try {
      
      for (int i = 0; i < WriterChars.length; i++) {
        threads[i] = new ArrayWriter(array, WriterCount, WriterChars[i]);
      }
      for (Thread t: threads) {
        t.start();
      }
      for (Thread t: threads) {
        t.join();
      }

    } catch (InterruptedException e) {
      System.out.println(e.getMessage());
    }

    String strOccur = "";
    for (int i = 0; i < WriterChars.length; i++) {
      strOccur += String.format("%c=%d ",
                  WriterChars[i], array.countOccurrences(WriterChars[i]));
    }
    System.out.println(array);
    System.out.println(strOccur);

  }
}
