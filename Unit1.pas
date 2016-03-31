unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    UpDown1: TUpDown;
    Label1: TLabel;
    UpDown2: TUpDown;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    TabControl1: TTabControl;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure TabControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  matrix: array [0..100] of array [0..100] of integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i:integer;
begin
//������������� �������
memo1.Lines.Add('��������� ��������������������.');
for i:=1 to 100{stringgrid1.ColCount} do
  stringgrid1.Cells[0,i] := '��������� #' + inttostr(i);
for i:=1 to 100{stringgrid1.RowCount} do
  stringgrid1.Cells[i,0] := '���������� #' + inttostr(i);
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  label1.Caption := '���������� �����������: ' + inttostr(updown1.Position);
  stringgrid1.ColCount := updown1.Position + 1;
  memo1.Lines.Add('���������� ����������� ��������.');
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  label2.Caption := '���������� �����������: ' + inttostr(updown2.Position);
  stringgrid1.RowCount := updown2.Position + 1;
  memo1.Lines.Add('���������� ����������� ��������.');
end;

procedure TForm1.TabControl1Change(Sender: TObject);
var
  i,j: integer;
  error: boolean;
begin
  error := false;

   //�������� ������ ��� � ��� ���� ����
  for i:=1 to stringgrid1.ColCount-1 do
    for j:=1 to stringgrid1.RowCount-1 do
      try
        matrix[i,j] := strtoint(stringgrid1.Cells[i,j]);
      except
        memo1.Lines.Add('������: �� ������� ������������� ������� ['+inttostr(i)+','+inttostr(j)+'] �������� ������� � �����.');
        stringgrid1.Cells[i,j] := '!!!';
        error := true;
        //break;
      end;

  if (error) then
  begin
    memo1.Lines.Add('���������� ���� ��������� � ���� ������������� ������ ��������������.');
    messagebox(Form1.ActiveControl.Handle,'������� ������� ��������� �����','������',MB_ICONWARNING);
    tabcontrol1.TabIndex := 0;
  end
  else
  begin
    memo1.Lines.Add('�������� ������� ������� ���������� � �������� �������.');



  ///��������
  end;
end;

end.
