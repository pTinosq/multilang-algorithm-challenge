program Main;
const
  N = 11;
type
  TIntArray = array[1..N] of integer;
const
  ENTRY_DATA: TIntArray = (9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2);
var
  i: integer;
  j: integer;
  temp: integer;
begin
  for i := 1 to N do
  begin
    for j:= 1 to N-1 do
    begin
      if (ENTRY_DATA[j] > ENTRY_DATA[j + 1]) then
      begin
        temp := ENTRY_DATA[j];
        ENTRY_DATA[j] := ENTRY_DATA[j + 1];
        ENTRY_DATA[j + 1] := temp;
      end;
    end;
  end;

  { Begin preparing output }
  write('SORTED: ');
  for i := 1 to N do
  begin
    write(ENTRY_DATA[i]);
    { I have also included the if logic for prettier printing in Pascal (like in my FORTRAN90 code) }
    if (i = N) then
      write('')
    else 
      write(', ')
  end;
  writeln;
end.
