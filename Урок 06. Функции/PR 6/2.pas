function simpleNumb(number: integer):boolean;
begin
  var k := 2;
  while (k*k <= number) and (number mod k <> 0) do
    k += 1;
  result := (k*k > number) and (number <> 1);
end;
begin
  var N := ReadInteger('Entry N:');
  var end_N := 2*N;
  while N < end_N do begin
    if simpleNumb(N) and simpleNumb(N + 2) then
      println(N, N + 2);
    N += 1;
  end;
  
end.