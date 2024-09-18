begin
  var (a, b) := ReadInteger2('Entry a and b');
  var (sum_d, copy_N, k) := (1, 0, 0);
  for var i := a to b do begin
    copy_N := i;
    sum_d := 1;
    k := 2;
    while (k*k <= copy_N) do begin
      if copy_N mod k = 0 then begin
        sum_d += k;
        if k <> copy_N div k then
          sum_d += copy_N div k;
      end;
      k += 1;
    end;
    if (sum_d = i) and (i > 1) then
      println(i);
  end; 
end.