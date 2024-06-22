fun main(args: Array<String>) {
    val ENTRY_POINT = mutableListOf(9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2)

    val N = ENTRY_POINT.size

    for (_i in 0..ENTRY_POINT.lastIndex) {
        for (j in 0..ENTRY_POINT.lastIndex-1) {
            if (ENTRY_POINT[j] > ENTRY_POINT[j + 1]) {
                val temp = ENTRY_POINT[j]
                ENTRY_POINT[j] = ENTRY_POINT[j + 1]
                ENTRY_POINT[j + 1] = temp
            }
        }
    }

    println("SORTED: "+ENTRY_POINT)
}