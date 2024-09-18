unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure pictureBox1_Paint(sender: Object; e: PaintEventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    pictureBox1: PictureBox;
    groupBox1: GroupBox;
    textBox1: TextBox;
    groupBox2: GroupBox;
    label2: &Label;
    label1: &Label;
    textBox3: TextBox;
    textBox2: TextBox;
    button1: Button;
    button2: Button;
    button3: Button;
    button4: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

const
  size = 10;

var
  arr: array[1..size] of integer;

var
  w, h, stw, sth: integer;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  w := pictureBox1.Size.Width;
  h := pictureBox1.Size.Height;
  stw := w div 10;
  sth := h div 10;
  pictureBox1.Refresh();
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  var start := StrToInt(textBox2.Text);
  var endn := StrToInt(textBox3.Text);
  textBox1.Text := '';
  for var i := 1 to 10 do
  begin
    arr[i] := PABCSystem.Random(endn - start + 1) + start;
    textBox1.Text := TextBox1.Text + IntToStr(arr[i]) + ' ';
  end;
end;

procedure Form1.pictureBox1_Paint(sender: Object; e: PaintEventArgs);
begin
  var graph := e.Graphics;
  for var i := 1 to 9 do
  begin
    graph.DrawLine(new Pen(Color.Black, 1), 0, i * sth, w, i * sth);
    graph.DrawLine(new Pen(Color.Black, 1), i * stw, 0, i * stw, h);
  end;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  var graph: System.Drawing.Graphics;
  graph := pictureBox1.CreateGraphics;
  pictureBox1.Refresh();
  for var i := 0 to 8 do
  begin
    graph.DrawLine(new Pen(Color.Red, 2), i * stw, h - arr[i + 1], (i + 1) * stw, h - arr[i + 2]);
    graph.FillEllipse(System.Drawing.Brushes.Green, i * stw - 5, h - arr[i + 1] - 5, 10, 10);
  end;
  graph.FillEllipse(System.Drawing.Brushes.Green, 9 * stw - 5, h - arr[10] - 5, 10, 10);
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
  var graph: System.Drawing.Graphics;
  graph := pictureBox1.CreateGraphics;
  var f := new System.Drawing.Font( 'Times New Roman', 12, System.Drawing.FontStyle.Bold);
  var f1 := System.Drawing.Brushes.Green;
  pictureBox1.Refresh();
  for var i := 1 to 10 do
  begin
    // закрашеный прямоугольник
    graph.FillRectangle(System.Drawing.Brushes.Blue, (i - 1) * stw + 5, h - arr[i], stw - 10, arr[i]);
    graph.DrawString(IntToStr(i), f, f1, (i - 1) * stw + 5, h - arr[i] - 20);
  end;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  pictureBox1.Refresh();
end;
end.
