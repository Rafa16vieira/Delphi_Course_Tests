unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BtnSoma: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Edit1: TEdit;
    Button16: TButton;
    Memo1: TMemo;
    Edit2: TEdit;
    procedure BtnSomaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Total;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


var
  numero1: double;
  numero2: double;
  operacao: string;
  resultado : double;


procedure TForm1.BtnSomaClick(Sender: TObject);
begin
  Total;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '9';
end;


procedure TForm1.Button10Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + '0';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
      numero1 := StrToFloat(Edit1.Text);
      operacao := 'multiplicar';
      Edit2.Text := Edit2.Text + Edit1.Text + ' X' + ' ';
     Edit1.Text := '';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
      numero1 := StrToFloat(Edit1.Text);
      operacao := 'subtrair';
      Edit2.Text := Edit2.Text + Edit1.Text + ' -' + ' ';
     Edit1.Text := '';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
      numero1 := StrToFloat(Edit1.Text);
      operacao := 'somar';
      Edit2.Text := Edit2.Text + Edit1.Text + ' +' + ' ';
     Edit1.Text := '';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if (Edit1.Text = '') then
    Edit1.Text := Edit1.Text + '0,'
  else
    Edit1.Text := Edit1.Text + ','
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
      numero1 := StrToFloat(Edit1.Text);
      operacao := 'dividir';
      Edit2.Text := Edit2.Text + Edit1.Text + ' /' + ' ';
     Edit1.Text := '';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Memo1.Clear;
end;

procedure TForm1.Total;
begin
  numero2 := StrToFloat(Edit1.Text);
  Edit2.Text := Edit2.Text + Edit1.Text + ' = ';
  if operacao = 'multiplicar' then
    begin
      resultado := numero1 * numero2;
      numero1 := numero2;
    end
  else if operacao = 'somar' then
       begin
        resultado := numero1 + numero2;
        numero1 := numero2;
       end
  else if operacao = 'subtrair' then
       begin
         resultado := numero1 - numero2;
         numero1 := numero2;
       end
  else if operacao = 'dividir' then
      begin
        resultado := numero1 / numero2;
        numero1 := numero2;
      end;

  Edit2.Text := Edit2.Text + FloatToStr(resultado);
  Memo1.Lines.Add(Edit2.Text);
  Edit2.Clear;
  Edit1.Clear;
end;

end.
