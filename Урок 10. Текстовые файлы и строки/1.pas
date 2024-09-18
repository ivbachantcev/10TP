begin
  var F: Text;
  var F1: Text;
  var s: string;
  var score := 0;
  var max_score := 0;
  var read_info := |''| * 0;
  var info_prizers := |''| * 0;
  
  Reset(F, 'rezult.csv');
  while not eof(F) do
  begin
    readln(F, s);
    read_info := s.Trim().Split(' ');
    score := 0;
    for var i := 2 to 6 do
      score += StrToInt(read_info[i]);
    if score >= 250 then
      info_prizers := info_prizers + |read_info[0] + ' ' + read_info[1] + ' ' + IntToStr(score)|;
    if (score > 250) and (score > max_score) then
        max_score := score;
  end;
  F.Close();
  Rewrite(F, 'gold.txt');
  if max_score = 0 then begin
    Writeln(F, 'Победителей нет');
  end;
  Rewrite(F1, 'priz.txt');
  if info_prizers.Length = 0 then
    Writeln(F1, 'Призёров нет');
  
  for var i := 0 to info_prizers.Length - 1 do begin
    read_info := info_prizers[i].Split();
    if StrToInt(read_info[2]) = max_score then
      Writeln(F, read_info[0] + ' ' + read_info[1])
    else 
      Writeln(F1, read_info[0] + ' ' + read_info[1])
  end;
  F.Close();
  F1.Close();
end.