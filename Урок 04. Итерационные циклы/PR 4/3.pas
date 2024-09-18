begin
  var (a1, b1) := ReadInteger2('Введите числитель и знаменатель первой дроби');
  var (a2, b2) := ReadInteger2('Введите числитель и знаменатель первой дроби');
  var (b1_copy, b2_copy) := (max(b1, b2), min(b1, b2));
  while b2_copy <> 0 do
    (b1_copy, b2_copy) := (b2_copy, b1_copy mod b2_copy);
  var nok := b1*b2 / b1_copy;
  Println($'{a1}/{b1} + {a2}/{b2} = {a1 * nok / b1 + a2 * nok / b2}/{nok}');
end.