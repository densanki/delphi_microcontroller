unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils, Math, Unit2, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Label2: TLabel;
    Shape9: TShape;
    Label3: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Label4: TLabel;
    Shape17: TShape;
    Label5: TLabel;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Label6: TLabel;
    Memo1: TMemo;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Button1: TButton;
    Label7: TLabel;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Label8: TLabel;
    Shape36: TShape;
    Label9: TLabel;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Label10: TLabel;
    Shape45: TShape;
    Label11: TLabel;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Label12: TLabel;
    Shape54: TShape;
    Label13: TLabel;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape62: TShape;
    Label14: TLabel;
    Shape63: TShape;
    ListBox1: TListBox;
    Button2: TButton;
    Timer1: TTimer;
    Button3: TButton;
    Button4: TButton;
    TrackBar1: TTrackBar;
    Label15: TLabel;
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Info1: TMenuItem;
    DemoProgramme1: TMenuItem;
    Assembler1: TMenuItem;
    Compilen1: TMenuItem;
    Start1: TMenuItem;
    Reset1: TMenuItem;
    ffnen1: TMenuItem;
    Speichern1: TMenuItem;
    Beenden1: TMenuItem;
    Neu1: TMenuItem;
    Lauflicht1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Info1Click(Sender: TObject);
    procedure Lauflicht1Click(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
    procedure Neu1Click(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure Compilen1Click(Sender: TObject);
    procedure Start1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
  private
    procedure Ausgabe;
    procedure Befehl(Code: String);
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

function Constant(Daten: String): String;
function P(Daten: String): String;

var
  Form1: TForm1;
  P1: String;
  P4: String;
  P5: String;
  A: String;
  B: String;
  R0: String;
  R1: String;
  Programm: Integer;

  DPTR: String[16];

  LOWINTERNRAM: ARRAY[1..255] of String[9];
  UPPERINTERNRAM: ARRAY[1..255] of String[9];
  SFR: ARRAY[1..255] of String[9];
  EXTERNDATA: ARRAY[1..65536] of String[9];

implementation

{$R *.dfm}

procedure TForm1.Ausgabe;
var X: Integer;
begin

  cplColor(P1[1],Shape25);
  FOR X := 1 TO 8 DO cplColor(P1[X+1],(FindComponent('Shape'+INTtoSTR(X)) as TShape));

  cplColor(P4[1],Shape26);
  FOR X := 1 TO 8 DO cplColor(P4[X+1],(FindComponent('Shape'+INTtoSTR(X+8)) as TShape));

  cplColor(P5[1],Shape27);
  FOR X := 1 TO 8 DO cplColor(P5[X+1],(FindComponent('Shape'+INTtoSTR(X+16)) as TShape));

  cplColor(A[1],Shape36);
  FOR X := 1 TO 8 DO cplColor(A[X+1],(FindComponent('Shape'+INTtoSTR(X+27)) as TShape));

  cplColor(B[1],Shape45);
  FOR X := 1 TO 8 DO cplColor(B[X+1],(FindComponent('Shape'+INTtoSTR(X+36)) as TShape));

  cplColor(R0[1],Shape54);
  FOR X := 1 TO 8 DO cplColor(R0[X+1],(FindComponent('Shape'+INTtoSTR(X+45)) as TShape));

  cplColor(R1[1],Shape63);
  FOR X := 1 TO 8 DO cplColor(R1[X+1],(FindComponent('Shape'+INTtoSTR(X+54)) as TShape));


end;

procedure TForm1.FormCreate(Sender: TObject);
var X: Integer;
    Ok: longbool;
begin

  Form1.KeyPreview   := True;

  FOR X := 1 TO 63 DO (FindComponent('Shape'+INTtoSTR(X)) as TShape).Tag := X;

  try
    IF NOT FileExists('Text.txt') THEN Memo1.Lines.SaveToFile('Text.txt');
  except
    Showmessage('IO Filesystem ERROR Text.txt konnte nicht geschrieben werden, verwenden sie ein Medium auf dem Schreiben gestattet ist');
    Application.Terminate;
  end;

  Memo1.Lines.LoadFromFile('Text.txt');

  P1 := '000000000';
  P4 := '000000000';
  P5 := '000000000';
  A  := '000000000';
  B  := '000000000';
  R0 := '000000000';
  R1 := '000000000';

  DPTR := '0000000000000000';

  FOR X := 1 TO 255 DO LOWINTERNRAM[X] := '000000000';
  FOR X := 1 TO 255 DO UPPERINTERNRAM[X] := '000000000';
  FOR X := 1 TO 255 DO SFR[X] := '000000000';
  FOR X := 1 TO 255 DO EXTERNDATA[X] := '000000000';

end;

procedure TForm1.Button1Click(Sender: TObject);
var Daten: String;
    List: TStringList;
    X: Integer;
    Scan: String;
    Temp: String;
    Bit: Char;
begin

  IF Timer1.Enabled THEN Exit;

  List := TStringList.Create;

  Daten := Memo1.Text;
  List := Compliler(Daten);

  Programm := 0;

  Listbox1.Items := List;

end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var W: Integer;
begin

  W := (Sender as TShape).Tag;

  Case w of
     1..8 : CPL(P1[w+1]);
     25: CPL(P1[1]);

     9..16: CPL(P4[(w+1)-8]);
     26: CPL(P4[1]);

     17..24: CPL(P5[(w+1)-16]);
     27: CPL(P5[1]);

     28..35: CPL(A[(w+1)-27]);
     36: CPL(A[1]);

     37..44: CPL(B[(w+1)-36]);
     45: CPL(B[1]);

     46..53: CPL(R0[(w+1)-45]);
     54: CPL(R0[1]);

     55..62: CPL(R1[(w+1)-54]);
     63: CPL(R1[1]);
  end;

  Ausgabe;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  Programm := 0;
  IF Timer1.Enabled THEN
  begin
    Timer1.Enabled := False;
    Button2.Caption := 'Programm Start (F9)'
  end
  ELSE
    IF Listbox1.Items.Count <> 0 THEN
    begin
      Ausgabe;
      Timer1.Enabled := True;
      Button2.Caption := 'Programm Stop (F9)'
    end;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('Text.txt');
end;

//##############################################################################

procedure TForm1.Befehl(Code: String);
var Daten: String;
    X: Integer;
    Scan: String;
    Temp: String;
    Bit: Char;
begin

  Scan :=  UpperCase(Code);

  IF LeftStr(Scan,3) = 'MOV' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN A := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
    IF Copy(Scan,1,Pos(',',Scan)-1) = 'B' THEN B := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      
    IF Copy(Scan,1,Pos(',',Scan)-1) = 'R0' THEN R0 := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
    IF Copy(Scan,1,Pos(',',Scan)-1) = 'R1' THEN R1 := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'P1' THEN P1 := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
    IF Copy(Scan,1,Pos(',',Scan)-1) = 'P4' THEN P4 := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
    IF Copy(Scan,1,Pos(',',Scan)-1) = 'P5' THEN P5 := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));

  end;

  IF LeftStr(Scan,3) = 'CLR' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Scan[1] = 'A' THEN A := '000000000';

    IF Scan = 'P1.0' THEN P1[9] := '0';
    IF Scan = 'P1.1' THEN P1[8] := '0';
    IF Scan = 'P1.2' THEN P1[7] := '0';
    IF Scan = 'P1.3' THEN P1[6] := '0';
    IF Scan = 'P1.4' THEN P1[5] := '0';
    IF Scan = 'P1.5' THEN P1[4] := '0';
    IF Scan = 'P1.6' THEN P1[3] := '0';
    IF Scan = 'P1.7' THEN P1[2] := '0';

    IF Scan = 'P4.0' THEN P4[9] := '0';
    IF Scan = 'P4.1' THEN P4[8] := '0';
    IF Scan = 'P4.2' THEN P4[7] := '0';
    IF Scan = 'P4.3' THEN P4[6] := '0';
    IF Scan = 'P4.4' THEN P4[5] := '0';
    IF Scan = 'P4.5' THEN P4[4] := '0';
    IF Scan = 'P4.6' THEN P4[3] := '0';
    IF Scan = 'P4.7' THEN P4[2] := '0';

    IF Scan = 'P5.0' THEN P5[9] := '0';
    IF Scan = 'P5.1' THEN P5[8] := '0';
    IF Scan = 'P5.2' THEN P5[7] := '0';
    IF Scan = 'P5.3' THEN P5[6] := '0';
    IF Scan = 'P5.4' THEN P5[5] := '0';
    IF Scan = 'P5.5' THEN P5[4] := '0';
    IF Scan = 'P5.6' THEN P5[3] := '0';
    IF Scan = 'P5.7' THEN P5[2] := '0';

  end;

  IF LeftStr(Scan,3) = 'NOP' THEN Sleep(1000);

  IF LeftStr(Scan,5) = 'SWAPA' THEN
  begin
    A := A[1] + A[6] + A[7] + A[8] + A[9] + A[2] + A[3] + A[4] + A[5];
  end;

  IF LeftStr(Scan,3) = 'RLA' THEN
  begin
    A := A[1] + A[3] + A[4] + A[5] + A[6] + A[7] + A[8] + A[9] + '0';
  end;

  IF LeftStr(Scan,3) = 'RRA' THEN
  begin
    A := A[1] + '0' + A[2] + A[3] + A[4] + A[5] + A[6] + A[7] + A[8];
  end;

  IF LeftStr(Scan,4) = 'RLCA' THEN
  begin
    A := A[2] + A[3] + A[4] + A[5] + A[6] + A[7] + A[8] + A[9] + '0';
  end;

  IF LeftStr(Scan,4) = 'RRCA' THEN
  begin
    A := '0' + A[1] + A[2] + A[3] + A[4] + A[5] + A[6] + A[7] + A[8];
  end;

  IF LeftStr(Scan,3) = 'CPL' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Scan[1] = 'A' THEN A := A[1] + CPLx(A[2]) + CPLx(A[3]) + CPLx(A[4]) + CPLx(A[5]) + CPLx(A[6]) + CPLx(A[7]) + CPLx(A[8]) + CPLx(A[9]);

    IF Scan = 'P1.0' THEN CPL(P1[9]);
    IF Scan = 'P1.1' THEN CPL(P1[8]);
    IF Scan = 'P1.2' THEN CPL(P1[7]);
    IF Scan = 'P1.3' THEN CPL(P1[6]);
    IF Scan = 'P1.4' THEN CPL(P1[5]);
    IF Scan = 'P1.5' THEN CPL(P1[4]);
    IF Scan = 'P1.6' THEN CPL(P1[3]);
    IF Scan = 'P1.7' THEN CPL(P1[2]);

    IF Scan = 'P4.0' THEN CPL(P4[9]);
    IF Scan = 'P4.1' THEN CPL(P4[8]);
    IF Scan = 'P4.2' THEN CPL(P4[7]);
    IF Scan = 'P4.3' THEN CPL(P4[6]);
    IF Scan = 'P4.4' THEN CPL(P4[5]);
    IF Scan = 'P4.5' THEN CPL(P4[4]);
    IF Scan = 'P4.6' THEN CPL(P4[3]);
    IF Scan = 'P4.7' THEN CPL(P4[2]);

    IF Scan = 'P5.0' THEN CPL(P5[9]);
    IF Scan = 'P5.1' THEN CPL(P5[8]);
    IF Scan = 'P5.2' THEN CPL(P5[7]);
    IF Scan = 'P5.3' THEN CPL(P5[6]);
    IF Scan = 'P5.4' THEN CPL(P5[5]);
    IF Scan = 'P5.5' THEN CPL(P5[4]);
    IF Scan = 'P5.6' THEN CPL(P5[3]);
    IF Scan = 'P5.7' THEN CPL(P5[2]);
  end;

  IF LeftStr(Scan,3) = 'ANL' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN
    begin
      Temp := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      A := A[1] + UND(A[2],Temp[2]) + UND(A[3],Temp[3]) + UND(A[4],Temp[4]) + UND(A[5],Temp[5]) + UND(A[6],Temp[6]) + UND(A[7],Temp[7]) + UND(A[8],Temp[8]) + UND(A[9],Temp[9]);
    end;
      
  end;

  IF LeftStr(Scan,3) = 'ORL' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN
    begin
      Temp := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      A := A[1] + ODER(A[2],Temp[2]) + ODER(A[3],Temp[3]) + ODER(A[4],Temp[4]) + ODER(A[5],Temp[5]) + ODER(A[6],Temp[6]) + ODER(A[7],Temp[7]) + ODER(A[8],Temp[8]) + ODER(A[9],Temp[9]);
    end;

  end;

  IF LeftStr(Scan,3) = 'XRL' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN
    begin
      Temp := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      A := A[1] + XODER(A[2],Temp[2]) + XODER(A[3],Temp[3]) + XODER(A[4],Temp[4]) + XODER(A[5],Temp[5]) + XODER(A[6],Temp[6]) + XODER(A[7],Temp[7]) + XODER(A[8],Temp[8]) + XODER(A[9],Temp[9]);
    end;

  end;

  IF LeftStr(Scan,3) = 'ADD' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN
    begin
      Temp := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      A := Addition(A,Temp);
    end;

  end;

  IF LeftStr(Scan,4) = 'ADDC' THEN
  begin
    Scan := Copy(Scan,5,Length(Scan)-4);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN
    begin
      Temp := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      Bit := A[1];
      A := Addition(A,Temp);
      A[1] := Bit;
    end;

  end;

  IF LeftStr(Scan,4) = 'SUBB' THEN
  begin
    Scan := Copy(Scan,5,Length(Scan)-4);

    IF Copy(Scan,1,Pos(',',Scan)-1) = 'A' THEN
    begin
      Temp := Constant(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1));
      A := Subtrahieren(A,Temp);
    end;

  end;

  IF LeftStr(Scan,3) = 'INC' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Scan[1] = 'A' THEN A := INC(A);
    IF Scan[1] = 'B' THEN B := INC(B);
    IF Copy(Scan,1,2) = 'R0' THEN B := INC(R0);
    IF Copy(Scan,1,2) = 'R1' THEN B := INC(R1);
    IF Copy(Scan,1,2) = 'P1' THEN B := INC(P1);
    IF Copy(Scan,1,2) = 'P4' THEN B := INC(P4);
    IF Copy(Scan,1,2) = 'P5' THEN B := INC(P5);
  end;

  IF LeftStr(Scan,3) = 'DEC' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF Scan[1] = 'A' THEN A := DEC(A);
    IF Scan[1] = 'B' THEN B := DEC(B);
    IF Copy(Scan,1,2) = 'R0' THEN B := DEC(R0);
    IF Copy(Scan,1,2) = 'R1' THEN B := DEC(R1);
    IF Copy(Scan,1,2) = 'P1' THEN B := DEC(P1);
    IF Copy(Scan,1,2) = 'P4' THEN B := DEC(P4);
    IF Copy(Scan,1,2) = 'P5' THEN B := DEC(P5);

  end;

  IF LeftStr(Scan,4) = 'SETB' THEN
  begin
    Scan := Copy(Scan,5,Length(Scan)-4);

    IF Scan = 'P1.0' THEN P1[9] := '1';
    IF Scan = 'P1.1' THEN P1[8] := '1';
    IF Scan = 'P1.2' THEN P1[7] := '1';
    IF Scan = 'P1.3' THEN P1[6] := '1';
    IF Scan = 'P1.4' THEN P1[5] := '1';
    IF Scan = 'P1.5' THEN P1[4] := '1';
    IF Scan = 'P1.6' THEN P1[3] := '1';
    IF Scan = 'P1.7' THEN P1[2] := '1';

    IF Scan = 'P4.0' THEN P4[9] := '1';
    IF Scan = 'P4.1' THEN P4[8] := '1';
    IF Scan = 'P4.2' THEN P4[7] := '1';
    IF Scan = 'P4.3' THEN P4[6] := '1';
    IF Scan = 'P4.4' THEN P4[5] := '1';
    IF Scan = 'P4.5' THEN P4[4] := '1';
    IF Scan = 'P4.6' THEN P4[3] := '1';
    IF Scan = 'P4.7' THEN P4[2] := '1';

    IF Scan = 'P5.0' THEN P5[9] := '1';
    IF Scan = 'P5.1' THEN P5[8] := '1';
    IF Scan = 'P5.2' THEN P5[7] := '1';
    IF Scan = 'P5.3' THEN P5[6] := '1';
    IF Scan = 'P5.4' THEN P5[5] := '1';
    IF Scan = 'P5.5' THEN P5[4] := '1';
    IF Scan = 'P5.6' THEN P5[3] := '1';
    IF Scan = 'P5.7' THEN P5[2] := '1';

  end;

  IF LeftStr(Scan,4) = 'SJMP' THEN
  begin
    Scan := Copy(Scan,5,Length(Scan)-4);

    IF Listbox1.Items.IndexOf(Scan) <> - 1 THEN
    begin
      Programm := Listbox1.Items.IndexOf(Scan)-1;
    end;
  end;

  IF LeftStr(Scan,4) = 'LJMP' THEN
  begin
    Scan := Copy(Scan,5,Length(Scan)-4);

    IF Listbox1.Items.IndexOf(Scan) <> - 1 THEN
    begin
      Programm := Listbox1.Items.IndexOf(Scan)-1;
    end;
  end;

  IF LeftStr(Scan,2) = 'JZ' THEN
  begin
    Scan := Copy(Scan,3,Length(Scan)-2);

    IF BIN2DEZ(A) = 0 THEN
    begin

      IF Listbox1.Items.IndexOf(Scan) <> - 1 THEN
      begin
        Programm := Listbox1.Items.IndexOf(Scan)-1;
      end;

    end;

  end;

  IF LeftStr(Scan,3) = 'JNZ' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF BIN2DEZ(A) <> 0 THEN
    begin

      IF Listbox1.Items.IndexOf(Scan) <> - 1 THEN
      begin
        Programm := Listbox1.Items.IndexOf(Scan)-1;
      end;

    end;

  end;

  IF LeftStr(Scan,2) = 'JC' THEN
  begin
    Scan := Copy(Scan,3,Length(Scan)-2);

    IF A[1] = '1' THEN
    begin

      IF Listbox1.Items.IndexOf(Scan) <> - 1 THEN
      begin
        Programm := Listbox1.Items.IndexOf(Scan)-1;
      end;

    end;

  end;

  IF LeftStr(Scan,3) = 'JNC' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF A[1] = '0' THEN
    begin

      IF Listbox1.Items.IndexOf(Scan) <> - 1 THEN
      begin
        Programm := Listbox1.Items.IndexOf(Scan)-1;
      end;

    end;

  end;

  IF LeftStr(Scan,2) = 'JB' THEN
  begin
    Scan := Copy(Scan,3,Length(Scan)-2);

    IF P(Copy(Scan,1,Pos(',',Scan)-1)) = '1' THEN
    begin
      IF Listbox1.Items.IndexOf(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1)) <> - 1 THEN
      begin
        Programm := Listbox1.Items.IndexOf(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1))-1;
      end;

    end;

  end;

  IF LeftStr(Scan,3) = 'JNB' THEN
  begin
    Scan := Copy(Scan,4,Length(Scan)-3);

    IF P(Copy(Scan,1,Pos(',',Scan)-1)) = '0' THEN
    begin
      IF Listbox1.Items.IndexOf(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1)) <> - 1 THEN
      begin
        Programm := Listbox1.Items.IndexOf(COPY(Scan,Pos(',',Scan)+1,Length(Scan) - Pos(',',Scan)+1))-1;
      end;

    end;

  end;

  Ausgabe;

end;

function Constant(Daten: String): String;
begin

  Daten := UpperCase(Daten);

  IF COPY(Daten,1,1) = 'A' THEN
  begin
    Result := A;
  end;

  IF COPY(Daten,1,1) = 'B' THEN
  begin
    Result := B;
  end;

  IF COPY(Daten,1,2) = 'R0' THEN
  begin
    Result := R0;
  end;

  IF COPY(Daten,1,2) = 'R1' THEN
  begin
    Result := R1;
  end;

  IF COPY(Daten,1,2) = 'P1' THEN
  begin
    Result := P1;
  end;

  IF COPY(Daten,1,2) = 'P4' THEN
  begin
    Result := P4;
  end;

  IF COPY(Daten,1,2) = 'P5' THEN
  begin
    Result := P5;
  end;

  IF Daten[1] = '#' THEN
  begin
    Daten := Copy(Daten, 2 , length(Daten)-1);

    IF RightStr(Daten,1) = 'B' THEN
    begin
      Daten := Copy(Daten,1, length(Daten)-1);

      repeat
        Daten := '0' + Daten;
      until Length(Daten) >= 9;

      Daten := RightStr(Daten,9);

      Result := Daten;

    end;

    IF RightStr(Daten,1) = 'D' THEN
    begin
      Daten := Copy(Daten,1, length(Daten)-1);

      Daten := DEZ2BIN(STRtoINT(Daten));

      repeat
        Daten := '0' + Daten;
      until Length(Daten) >= 9;

      Daten := RightStr(Daten,9);

      Result := Daten;

    end;

    IF RightStr(Daten,1) = 'H' THEN
    begin
      Daten := Copy(Daten,1, length(Daten)-1);

      Daten := INTtoSTR(HEX2DEZ(Daten));
      Daten := DEZ2BIN(STRtoINT(Daten));

      repeat
        Daten := '0' + Daten;
      until Length(Daten) >= 9;

      Daten := RightStr(Daten,9);

      Result := Daten;

    end;

  end;

end;

function P(Daten: String): String;
begin

    Result := '0';

    IF Daten = 'P1.0' THEN Result := P1[9];
    IF Daten = 'P1.1' THEN Result := P1[8];
    IF Daten = 'P1.2' THEN Result := P1[7];
    IF Daten = 'P1.3' THEN Result := P1[6];
    IF Daten = 'P1.4' THEN Result := P1[5];
    IF Daten = 'P1.5' THEN Result := P1[4];
    IF Daten = 'P1.6' THEN Result := P1[3];
    IF Daten = 'P1.7' THEN Result := P1[2];

    IF Daten = 'P4.0' THEN Result := P4[9];
    IF Daten = 'P4.1' THEN Result := P4[8];
    IF Daten = 'P4.2' THEN Result := P4[7];
    IF Daten = 'P4.3' THEN Result := P4[6];
    IF Daten = 'P4.4' THEN Result := P4[5];
    IF Daten = 'P4.5' THEN Result := P4[4];
    IF Daten = 'P4.6' THEN Result := P4[3];
    IF Daten = 'P4.7' THEN Result := P4[2];

    IF Daten = 'P5.0' THEN Result := P5[9];
    IF Daten = 'P5.1' THEN Result := P5[8];
    IF Daten = 'P5.2' THEN Result := P5[7];
    IF Daten = 'P5.3' THEN Result := P5[6];
    IF Daten = 'P5.4' THEN Result := P5[5];
    IF Daten = 'P5.5' THEN Result := P5[4];
    IF Daten = 'P5.6' THEN Result := P5[3];
    IF Daten = 'P5.7' THEN Result := P5[2];

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  IF Listbox1.Items.Strings[Programm] = 'ENDE' THEN
  begin
    Timer1.Enabled := False;
    Button2.Caption := 'Programm Start (F9)'
  end;

  Listbox1.Selected[Programm] := True;

  Try
    Befehl(Listbox1.Items.Strings[Programm]);
  except
  end;

  Programm := Programm + 1;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin

  IF Timer1.Enabled THEN Exit;

  P1 := '000000000';
  P4 := '000000000';
  P5 := '000000000';
  A  := '000000000';
  B  := '000000000';
  R0 := '000000000';
  R1 := '000000000';

  Ausgabe;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Timer1.Interval := TrackBar1.Position;
  Label15.Caption := INTtoSTR(TrackBar1.Position);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  IF KEY = VK_F5 THEN
  begin
    Button1Click(Self);
  end;

  IF KEY = VK_F8 THEN
  begin
    Button4Click(Self);
  end;

  IF KEY = VK_F9 THEN
  begin
    Button2Click(Self);
  end;

end;

procedure TForm1.Info1Click(Sender: TObject);
begin
  Showmessage( 'Wurde von Gerlando Caldara' + #10#13 +
               'während der Prüfungsvorbereitung geschrieben' + #10#13 + #10#13 +
               'Eine Simulation von 8051 Befehlen' + #10#13 +
               'Unterstützte Befehle'  + #10#13 +
               'ANL, ORL, XRL, CPL, RL, RLC, RR, RRC, SWAP,' + #10#13 +
               'ADD, ADDC, SUBB, INC, DEC, ' + #10#13 +
               'SJMP, LJMP, NOP, JZ, JC, JNC, JB, JNB,JNZ,' + #10#13 +
               'CLR, SETB, CPL,' + #10#13 +               
               'MOV'+ #10#13 + #10#13 +
               'Nicht Unterstütze Funktionen oder Befehle' + #10#13 +
               'SJMP und LJMP identisch jeweils Sprungdistanz unbegrenzt' + #10#13 +
               'Rechnen Operationen bis 255 und 0 möglich' + #10#13 +
               'CARRY Bits werden nicht gesetzt' + #10#13 +
               'DPTR und Direct Befehle nicht möglich' + #10#13 +
               'MOVC, MOVX, XCH,' + #10#13 +
               'Mul, DIV, Da' + #10#13 +
               'ACALL, LCALL, RET, RETI, AJMP, LJMP, SJMP, JMP, ' + #10#13 +
               'CJNE, DJNZ, JBC' + #10#13 +  #10#13 +
               'Vor jedem Befehl % Anfangen und mit % Beenden wegen des Simplens Parsen' +  #10#13 +
               'Viel Spaß' );
end;

procedure TForm1.Lauflicht1Click(Sender: TObject);
begin

Memo1.Text := '#ANFANG#' + #13#10 + #13#10 +
              '     %  MOV P1,  #1d   %' + #13#10 +
              '     %  M1             %' + #13#10 +
              '     %  MOV A,   P1    %' + #13#10 +
              '     %  RL  A          %' + #13#10 +
              '     %  MOV P1,  A     %' + #13#10 +
              '     %  cpl P5.0       %' + #13#10 +
              '     %  JNB P1.7,M1    %' + #13#10 + #13#10 +
              '#ENDE#';

end;

procedure TForm1.Beenden1Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.ffnen1Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.Neu1Click(Sender: TObject);
begin
  Memo1.Text := '';
end;

procedure TForm1.Speichern1Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Compilen1Click(Sender: TObject);
begin
  Button1Click(Self);
end;

procedure TForm1.Start1Click(Sender: TObject);
begin
    Button2Click(Self);
end;

procedure TForm1.Reset1Click(Sender: TObject);
begin
  Button4Click(Self);
end;

end.
