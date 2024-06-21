let ENTRY_DATA = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2]

const N = ENTRY_DATA.length
for (i = 0; i < N; i++) {
  for (j = 0; j < N - 1; j++) {
    if (ENTRY_DATA[j] > ENTRY_DATA[j + 1]) {
      const temp = ENTRY_DATA[j]
      ENTRY_DATA[j] = ENTRY_DATA[j + 1]
      ENTRY_DATA[j + 1] = temp
    }
  }
}

console.log("SORTED:", ENTRY_DATA)