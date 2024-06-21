import java.util.Arrays;

public class Main {
  public static void main(String[] args) {
    int[] ENTRY_DATA = { 9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2 };

    for (int i = 0; i < ENTRY_DATA.length; i++) {
      for (int j = 0; j < (ENTRY_DATA.length - 1); j++) {
        if (ENTRY_DATA[j] > ENTRY_DATA[j + 1]) {
          int temp = ENTRY_DATA[j];
          ENTRY_DATA[j] = ENTRY_DATA[j + 1];
          ENTRY_DATA[j + 1] = temp;
        }
      }
    }

    System.out.println("SORTED: " + Arrays.toString(ENTRY_DATA));
  }

}
