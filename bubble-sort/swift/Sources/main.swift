var ENTRY_DATA = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2]

let N = ENTRY_DATA.count

for _ in 0..<N {
  for j in 0..<(N-1) {
    if (ENTRY_DATA[j] > ENTRY_DATA[j + 1]) {
      let temp = ENTRY_DATA[j]
      ENTRY_DATA[j] = ENTRY_DATA[j + 1]
      ENTRY_DATA[j + 1] = temp
      }
  }
}

print("SORTED:", ENTRY_DATA)