begin
  var arr := ArrRandomInteger(ReadInteger('Кол-во эл-в'), 0, 100);
  arr.Println;
  var new_arr := new integer[0];
  var min_e := arr.Min;
  for var i := 0 to arr.Length - 1 do
    if arr[i] <> min_e then 
      new_arr := new_arr + |arr[i]|;
  println('Новый массив:');
  new_arr.Print;
end.