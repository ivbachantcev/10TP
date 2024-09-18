begin
  var (m, n, k) := ReadInteger3('Введите m n k через пробел'); 
  var (p, q, r) := ReadInteger3('Введите m n k через пробел');
  var new_time := (p + m) * 3600 + (q + n) * 60 + k + r;
  var new_m := (new_time div 3600) mod 24;
  var new_n := ((q + n) + k + r) mod 60;
  var new_k := new_time mod 60;
  
  Println($'Old time: {m}:{n}:{k}');
  Println($'New time: {new_m}:{new_n}:{new_k}');
end.