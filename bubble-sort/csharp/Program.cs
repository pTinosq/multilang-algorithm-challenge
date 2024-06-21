int[] ENTRY_DATA = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2];


int N = ENTRY_DATA.Length;
for (int i = 0; i < N; i++)
{
    for (int j = 0; j < N - 1; j++)
    {
        if (ENTRY_DATA[j] > ENTRY_DATA[j + 1])
        {
            (ENTRY_DATA[j + 1], ENTRY_DATA[j]) = (ENTRY_DATA[j], ENTRY_DATA[j + 1]);
        }
    }
}

Console.WriteLine("SORTED: " + string.Join(", ", ENTRY_DATA));