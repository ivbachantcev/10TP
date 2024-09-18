function simpleNumb(number: integer): boolean;
begin
  var k := 2;
  while (k * k <= number) and (number mod k <> 0) do
    k += 1;
  result := (k * k > number) and (number <> 1);
end;

begin
  var N := ReadInteger('Entry N:');
  var p := 1;
  while (2 ** p - 1 < N) do
  begin
    if simpleNumb(integer(2 ** p - 1)) and simpleNumb(p) then
      println(2 ** p - 1); 
    p += 1;
  end;
end.