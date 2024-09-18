begin
  var arr := ArrRandomInteger(readInteger('Кол-во эл-в'), 0, 10);
  arr.Println;
  var m := ReadInteger('Введите m:');
  for var i := 0 do arr.Length - 1 do 
    for var J := i + 1 do arr.Length - 1 do
      if arr[i] + arr[j] = m then
        println($'a[{i}]={arr[i]} a[{j}]={arr[j]}');
end.