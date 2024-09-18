function palindrom(number: integer): boolean;
begin
  var (copy_n, res) := (number, 0);
  while (copy_n <> 0) do begin
    res := res*10 + copy_n mod 10;
    copy_n := copy_n div 10;
  end;
  result := res = number;
end;
begin
  for var i:= ReadInteger('Entry a:') to ReadInteger('Entry b:') do begin
    if palindrom(i) then
      println(i)
  end;
end.