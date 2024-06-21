<?php

$ENTRY_DATA = array(9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2);

$N = count($ENTRY_DATA);

for ($i = 0; $i < $N; $i++) {
  for ($j = 0; $j < $N; $j++) {
    if ($ENTRY_DATA[$j] > $ENTRY_DATA[$j + 1]) {
      $temp = $ENTRY_DATA[$j];
      $ENTRY_DATA[$j] = $ENTRY_DATA[$j + 1];
      $ENTRY_DATA[$j + 1] = $temp;
    }
  }
}

echo "SORTED: ";
var_dump($ENTRY_DATA);
