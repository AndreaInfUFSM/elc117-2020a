import java.util.Arrays;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class SharedArray {

  private Character[] array;
  private int index = 0;

  public SharedArray(int n) {
    array = new Character[n];
    Arrays.fill(array, '-');
  }

  public void addChar(char c) {
    array[index] = c;
    spendSomeTime();
    index++;
  }

  // Length of filtered array (functional approach, using stream and lambda)
  public int countOccurrences(char c) {
    return Arrays.asList(array).stream().filter(i -> (i == c)).collect(Collectors.toList()).size();
  }

  // Same as above (imperative approach)
  public int oldCountOccurrences(char c) {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      if (array[i] == c) {
        count++;
      }
    }
    return count;
  }

  private void spendSomeTime() {
    for (int i = 0; i < 10000; i++) {
      for (int j = 0; j < 100; j++) {
      }
    }
  }

  @Override
  public String toString() {
    return Arrays.stream(array).map(Object::toString).collect(Collectors.joining());
  }
}
