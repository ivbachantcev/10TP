begin
  var (A, B, C) := ReadReal3('Введите коэф-ты А В С через пробел');
  Println($'Ваше уравнение имеет вид: {A}x^2+{B}x+{C} = 0');
  var D := B ** 2 - 4 * A * C;
  if D < 0 then Println('Действительных корней нет')
  else if D = 0 then Println($'Два совпадающих корня x1=x2={-B / (2 * A)}')
  else Println($'x1 = {(-B + D**0.5) / (2*a)}; x2 = {(-B - D**0.5) / (2*a)}');
end.