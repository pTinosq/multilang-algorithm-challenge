# Running this algorithm

Yes, I do mean scratch as in scratch.mit.edu.

You can find the project [here](https://scratch.mit.edu/projects/1041010457/). Press the <kbd>space</kbd> key to run the algorithm.

I asked ChatGPT to convert a screenshot of the project into text so that you can just read it here. Here's what it said:

Initialisation code:
```
when [green flag] clicked
delete all of [ENTRY_DATA]
add (9) to [ENTRY_DATA]
add (3) to [ENTRY_DATA]
add (5) to [ENTRY_DATA]
add (2) to [ENTRY_DATA]
add (6) to [ENTRY_DATA]
add (10) to [ENTRY_DATA]
add (7) to [ENTRY_DATA]
add (6) to [ENTRY_DATA]
add (0) to [ENTRY_DATA]
add (-2) to [ENTRY_DATA]
```

Sorting code:
```
when [space] key pressed
set [i] to (1)
repeat (length of [ENTRY_DATA])
    set [j] to (1)
    repeat (length of [ENTRY_DATA] - 1)
        if <(item (j) of [ENTRY_DATA]) > (item (j + 1) of [ENTRY_DATA])> then
            set [temp] to (item (j) of [ENTRY_DATA])
            replace item (j) of [ENTRY_DATA] with (item (j + 1) of [ENTRY_DATA])
            replace item (j + 1) of [ENTRY_DATA] with (temp)
        end
        change [j] by (1)
    end
    change [i] by (1)
end
```

A.I was only used to convert the screenshot into text - not during the development process.