fn main() {
    let mut entry_data: [i16; 11] = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2];
    let n: i16 = 11;

    for _ in 0..n {
        for j in 0..(n - 1) as usize {
            if entry_data[j] > entry_data[j + 1] {
                let temp: i16 = entry_data[j];
                entry_data[j] = entry_data[j + 1];
                entry_data[j + 1] = temp;
            }
        }
    }

    println!("SORTED: {:?}", entry_data)
}
