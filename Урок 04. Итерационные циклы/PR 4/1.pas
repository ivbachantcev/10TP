begin
  var number := ReadInteger('Введите число');
  var (digit_system, sum_digit, digit) := (0, 0, 0);
  while number <> 0 do begin
    digit := number mod 10;
    if digit > digit_system then
      digit_system := digit;
    sum_digit += digit;
    number := number div 10;
  end;
  println($'Минимальная система счисления: {digit_system + 1}; Кратность основанию: {sum_digit mod (digit_system + 1) = 0}');
end.