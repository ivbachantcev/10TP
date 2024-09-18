begin
  //var N: BigInteger;
  var N := ReadInteger('Entry N:');
  var (sum_left, sum_right, count_d, copy_N) := (0, 0, 0, N);
  while (copy_N <> 0) do 
    (copy_N, count_d) := (copy_N div 10, count_d + 1);
  if count_d mod 2 = 0 then begin
    copy_N := N;
    var copy_count_d := count_d;
    while copy_count_d <> 0 do begin
      if copy_count_d <= (count_d div 2) then
        sum_right += copy_N mod 10
      else
        sum_left += copy_N mod 10;
      copy_count_d -= 1;
      copy_N := copy_N div 10;
    end;
    if sum_left = sum_right then
      println($'Число {N} счастливое')
    else
      println($'Число {N} не счастливое');
  end
  else
    println($'Число {N} не счастливое');
end.