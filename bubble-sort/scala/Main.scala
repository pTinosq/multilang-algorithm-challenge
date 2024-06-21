object Main {
    def main(args: Array[String]) = {
      val ENTRY_DATA = Array(9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2)
      val N = ENTRY_DATA.length

      for (i <- 0 until N) {
        for (j <- 0 until (N-1)) {
          if (ENTRY_DATA(j) > ENTRY_DATA(j+1)) {
            val temp = ENTRY_DATA(j)
            ENTRY_DATA(j) = ENTRY_DATA(j+1)
            ENTRY_DATA(j+1) = temp
          }
        }
      }

      println(s"SORTED: ${ENTRY_DATA.mkString(", ")}")
    }
} 