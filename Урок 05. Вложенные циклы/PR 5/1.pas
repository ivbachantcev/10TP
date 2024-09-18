begin
  var (a, b) := ReadInteger2('Entry a and b:');
  var k, n: integer;
  for var i := a to b do begin
    n := i;
    k := 2;
    while (k*k <= n) and (n mod k <> 0) do
      k += 1;
    if (k*k > n) and (n <> 1) then
      println(i);
  end;
end.