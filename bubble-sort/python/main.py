ENTRY_DATA = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2]


def main():
    """Solution to the bubble sort Python challenge

    by Tinos :)
    """
    N = len(ENTRY_DATA)
    for _ in range(N):
        for j in range(N - 1):
            if ENTRY_DATA[j] > ENTRY_DATA[j + 1]:
                temp = ENTRY_DATA[j]
                ENTRY_DATA[j] = ENTRY_DATA[j + 1]
                ENTRY_DATA[j + 1] = temp

    print(f"SORTED: {ENTRY_DATA}")


if __name__ == "__main__":
    main()
