begin
  var N := ReadInteger('Entry N:');
  var start := 2;
  var copy_start : integer;
   while N <> 0 do begin
     copy_start := start;
     while copy_start mod 2 = 0 do
       copy_start := copy_start div 2;
     while copy_start mod 3 = 0 do
       copy_start := copy_start div 3;
     while copy_start mod 5 = 0 do
       copy_start := copy_start div 5;
     if copy_start = 1 then begin
       println(start);
       N -= 1;
     end;
     start += 1;
   end;
end.