#include <stdio.h>

int main()
{
  int N = 11;
  int ENTRY_DATA[11] = {9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2};

  for (int i = 0; i < N; i++)
  {
    for (int j = 0; j < N - 1; j++)
    {
      if (ENTRY_DATA[j] > ENTRY_DATA[j + 1])
      {
        int temp = ENTRY_DATA[j];
        ENTRY_DATA[j] = ENTRY_DATA[j + 1];
        ENTRY_DATA[j + 1] = temp;
      }
    }
  }

  printf("SORTED: ");
  for (int i = 0; i < N; i++)
  {
    printf("%d ", ENTRY_DATA[i]);
  }
}
