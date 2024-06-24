ENTRY_DATA <- list(9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2)

N <- length(ENTRY_DATA)

for (i in 1:N) {
    for (j in 1:(N-1)) {
        if (ENTRY_DATA[[j]] > ENTRY_DATA[[j+1]]) {
            temp <- ENTRY_DATA[[j]]
            ENTRY_DATA[[j]] <- ENTRY_DATA[[j+1]]
            ENTRY_DATA[[j+1]] <- temp
        }
    }
}

cat("SORTED:", unlist(ENTRY_DATA))
