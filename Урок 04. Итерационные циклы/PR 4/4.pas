begin
  var count := 0;
  var number := ReadInteger('Entry number:');
  while number <> 0 do begin
    count += if (number mod 2 = 0) then 1 else -1;
    number := ReadInteger('Entry number:');
  end;
  println(if count > 0 then 'Чётных больше' else if count < 0 then 'Нечетных больше' else 'Одинаково');
end.