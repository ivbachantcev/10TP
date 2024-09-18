begin
  var (X, Y, Z) := ReadInteger3('Введите 3 целых числа через пробел');
  Println($'X={X};Y={Y};Z={Z}');
  (X, Y, Z) := (Min(X, Y, Z), X + Y + Z - Min(X, Y, Z) - Max(X, Y, Z),Max(X, Y, Z));
  Println($'X={X};Y={Y};Z={Z}');
end.