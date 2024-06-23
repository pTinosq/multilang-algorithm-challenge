const print = @import("std").debug.print;

pub fn main() void {
    var ENTRY_DATA: [11]i32 = [11]i32{ 9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2 };

    for (0..ENTRY_DATA.len) |_| {
        for (0..ENTRY_DATA.len - 1) |j| {
            if (ENTRY_DATA[j] > ENTRY_DATA[j + 1]) {
                const temp: i32 = ENTRY_DATA[j];
                ENTRY_DATA[j] = ENTRY_DATA[j + 1];
                ENTRY_DATA[j + 1] = temp;
            }
        }
    }

    print("SORTED: {any}\n", .{ENTRY_DATA});
}
