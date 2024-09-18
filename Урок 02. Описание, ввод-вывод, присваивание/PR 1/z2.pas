begin
  var (X, Y) := ReadInteger2('Введите два целых числа через пробел');
  Println($'X={X};Y={Y}');
  (X, Y) := (Min(X, Y)*2, Max(X, Y) div 2);
  Println($'X={X};Y={Y}');
end.