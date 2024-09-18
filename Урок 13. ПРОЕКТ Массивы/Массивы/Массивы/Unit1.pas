Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure group3();
    procedure group2();
    procedure group1();
    
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    groupBox1: GroupBox;
    textBox10: TextBox;
    label10: &Label;
    textBox9: TextBox;
    label9: &Label;
    textBox8: TextBox;
    label8: &Label;
    textBox7: TextBox;
    label7: &Label;
    textBox6: TextBox;
    label6: &Label;
    textBox5: TextBox;
    label5: &Label;
    textBox4: TextBox;
    label4: &Label;
    textBox3: TextBox;
    label3: &Label;
    textBox2: TextBox;
    label2: &Label;
    textBox1: TextBox;
    label1: &Label;
    groupBox2: GroupBox;
    textBox12: TextBox;
    textBox11: TextBox;
    label12: &Label;
    label11: &Label;
    groupBox3: GroupBox;
    label18: &Label;
    label15: &Label;
    textBox16: TextBox;
    textBox14: TextBox;
    textBox15: TextBox;
    textBox13: TextBox;
    label17: &Label;
    label14: &Label;
    label16: &Label;
    label13: &Label;
    groupBox4: GroupBox;
    textBox20: TextBox;
    textBox19: TextBox;
    textBox18: TextBox;
    textBox17: TextBox;
    label22: &Label;
    label21: &Label;
    label20: &Label;
    label19: &Label;
    groupBox5: GroupBox;
    textBox21: TextBox;
    textBox22: TextBox;
    textBox23: TextBox;
    textBox24: TextBox;
    label23: &Label;
    label24: &Label;
    label25: &Label;
    label26: &Label;
    button2: Button;
    label27: &Label;
    textBox25: TextBox;
    button3: Button;
    button4: Button;
    groupBox6: GroupBox;
    textBox26: TextBox;
    label28: &Label;
    textBox27: TextBox;
    label29: &Label;
    textBox28: TextBox;
    label30: &Label;
    textBox29: TextBox;
    label31: &Label;
    textBox30: TextBox;
    label32: &Label;
    textBox31: TextBox;
    label33: &Label;
    textBox32: TextBox;
    label34: &Label;
    textBox33: TextBox;
    label35: &Label;
    textBox34: TextBox;
    label36: &Label;
    textBox35: TextBox;
    label37: &Label;
    button1: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
      
    end;
  end;

implementation
 var arr: array of textbox;
 var arr1: array of textbox;
procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  var startD := StrToInt(textBox11.Text);
  var endD := StrToInt(textBox12.Text);
  for var i := 0 to 9 do begin
    arr[i].Text := IntToStr(PABCSystem.Random(endD - startD + 1) + startD); 
  end;
end;
// группа 3
procedure Form1.group3();
begin
  var countPositive := 0;
  var countPositiveCnet := 0;
  var countNegativeChet := 0;
    var number := 0;
  for var i := 0 to 9 do begin
    number := StrToInt(arr[i].Text);
    if number >= 0 then begin
      countPositive += 1;
      if number mod 2 = 0 then
        countPositiveCnet += 1;
    end
    else if number mod 2 = 0 then
      countNegativeChet += 1;
  end;
  textBox24.Text := IntToStr(countPositiveCnet); // + четные
  textBox23.Text := IntToStr(countPositive - countPositiveCnet); // + нечётные
  textBox22.Text := IntToStr(countNegativeChet); // - чётные
  textBox21.Text := IntToStr(10 - countPositive - countNegativeChet); // - нечётные
end;

// группа 2
procedure Form1.group2();
begin
  var summAll := 0; 
  var sumPositive := 0; 
  var number := 0;
  for var i := 0 to 9 do begin
    number := StrToInt(arr[i].Text);
    summAll += number;
    if number >= 0 then 
      sumPositive += number;
  end;
  textBox17.Text := IntToStr(summAll);// сумма всех
  textBox18.Text := FloatToStr(summAll / 10); // среднее арифметическое
  textBox19.Text := IntToStr(sumPositive); // сумма положительных
  textBox20.Text := IntToStr(summAll - sumPositive);// сумма отрицательных
end;

procedure Form1.group1();
begin
  var minNumber := StrToInt(textBox12.Text);
  var minIndex := 0;
  var maxNumber := StrToInt(textBox11.Text);
  var maxIndex := 0;
  var number := 0;
  var multiNumber: int64;
  multiNumber := 1;
  for var i := 0 to 9 do begin
    number := StrToInt(arr[i].Text);
    multiNumber *= number;
    if number < minNumber then begin
      minNumber := number;
      minIndex := i;
    end;
    if number > maxNumber then begin
      maxNumber := number;
      maxIndex := i;
    end;
  end;
  textBox13.Text := IntToStr(minIndex + 1);
  textBox14.Text := IntToStr(minNumber);
  textBox15.Text := IntToStr(maxIndex + 1);
  textBox16.Text := IntToStr(maxNumber);
  textBox25.Text := IntToStr(multiNumber);
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  group1();
  group2();
  group3();
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  arr := |textBox1, textBox2, textBox3, textBox4, textBox5, textBox6, textBox7, textBox8, textBox9, textBox10|;
  arr1 := |textBox35, textBox34, textBox33, textBox32, textBox31, textBox30, textBox29, textBox28, textBox27, textBox26|;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  for var i := 0 to 9 do begin
    arr1[i].Text := arr[10-i-1].Text;
  end;
end;
procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
  var sortArr : array of integer;
  sortArr := new integer[10];
  for var i := 0 to 9 do begin
    sortArr[i] := StrToInt(arr[i].Text);
  end;
  Sort(sortArr);
  for var i := 0 to 9 do begin
    arr1[i].Text := IntToStr(sortArr[i]);
  end;
end;
end.
