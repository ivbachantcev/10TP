procedure InitializeComponent;
    begin
        self.pictureBox1 := new System.Windows.Forms.PictureBox();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.groupBox2 := new System.Windows.Forms.GroupBox();
        self.label2 := new System.Windows.Forms.Label();
        self.label1 := new System.Windows.Forms.Label();
        self.textBox3 := new System.Windows.Forms.TextBox();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.button4 := new System.Windows.Forms.Button();
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).BeginInit();
        self.groupBox1.SuspendLayout();
        self.groupBox2.SuspendLayout();
        self.SuspendLayout();
        // 
        // pictureBox1
        // 
        self.pictureBox1.BackColor := System.Drawing.Color.White;
        self.pictureBox1.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.pictureBox1.Location := new System.Drawing.Point(12, 67);
        self.pictureBox1.Name := 'pictureBox1';
        self.pictureBox1.Size := new System.Drawing.Size(500, 500);
        self.pictureBox1.TabIndex := 0;
        self.pictureBox1.TabStop := false;
        self.pictureBox1.Paint += pictureBox1_Paint;
        // 
        // groupBox1
        // 
        self.groupBox1.Controls.Add(self.textBox1);
        self.groupBox1.Location := new System.Drawing.Point(12, 13);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(500, 48);
        self.groupBox1.TabIndex := 1;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Массив';
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(6, 19);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(488, 20);
        self.textBox1.TabIndex := 0;
        // 
        // groupBox2
        // 
        self.groupBox2.Controls.Add(self.label2);
        self.groupBox2.Controls.Add(self.label1);
        self.groupBox2.Controls.Add(self.textBox3);
        self.groupBox2.Controls.Add(self.textBox2);
        self.groupBox2.Location := new System.Drawing.Point(519, 13);
        self.groupBox2.Name := 'groupBox2';
        self.groupBox2.Size := new System.Drawing.Size(140, 48);
        self.groupBox2.TabIndex := 2;
        self.groupBox2.TabStop := false;
        self.groupBox2.Text := 'Диапазон';
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(69, 20);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(21, 23);
        self.label2.TabIndex := 1;
        self.label2.Text := 'до';
        self.label2.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(7, 19);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(21, 23);
        self.label1.TabIndex := 1;
        self.label1.Text := 'от';
        self.label1.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // textBox3
        // 
        self.textBox3.Location := new System.Drawing.Point(93, 20);
        self.textBox3.Name := 'textBox3';
        self.textBox3.Size := new System.Drawing.Size(41, 20);
        self.textBox3.TabIndex := 0;
        // 
        // textBox2
        // 
        self.textBox2.Location := new System.Drawing.Point(28, 21);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(35, 20);
        self.textBox2.TabIndex := 0;
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(518, 67);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(141, 23);
        self.button1.TabIndex := 3;
        self.button1.Text := 'Заполнить массив';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Location := new System.Drawing.Point(519, 97);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(140, 23);
        self.button2.TabIndex := 4;
        self.button2.Text := 'Очистить поле';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // button3
        // 
        self.button3.Location := new System.Drawing.Point(519, 127);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(140, 23);
        self.button3.TabIndex := 5;
        self.button3.Text := 'Построить график';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // button4
        // 
        self.button4.Location := new System.Drawing.Point(519, 157);
        self.button4.Name := 'button4';
        self.button4.Size := new System.Drawing.Size(140, 23);
        self.button4.TabIndex := 6;
        self.button4.Text := 'Построить гистограмму';
        self.button4.UseVisualStyleBackColor := true;
        self.button4.Click += button4_Click;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(737, 610);
        self.Controls.Add(self.button4);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.groupBox2);
        self.Controls.Add(self.groupBox1);
        self.Controls.Add(self.pictureBox1);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.Load += Form1_Load;
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).EndInit();
        self.groupBox1.ResumeLayout(false);
        self.groupBox1.PerformLayout();
        self.groupBox2.ResumeLayout(false);
        self.groupBox2.PerformLayout();
        self.ResumeLayout(false);
    end;
