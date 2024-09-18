begin
  var (a, b) := ReadInteger2('Entry a and b');
  var  ab := a * b;
  while b <> 0 do begin
    (a, b) := (b, a mod b);
  end;
  print($'НОД={a};НОК={ab / a}');
end.