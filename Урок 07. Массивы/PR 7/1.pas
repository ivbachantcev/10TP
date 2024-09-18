begin
  var arr := ArrRandomInteger(ReadInteger('Кол-во эл-в'), 0, 100);
  arr.Print;
  var M := ReadInteger('введите М:');
  var multi :BigInteger;
  multi := 1;
  for var i := 0 to arr.Length - 1 do
    if arr[i] > M then
      multi *= arr[i];
  if multi <> 1 then
    println(multi)
  else
    println('Таких чисел нет');
end.