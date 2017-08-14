unit Unit2;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils, Math;

procedure cpl(var Daten: Char);
function cplx(Daten: Char): Char;
function UND(Daten1: Char; Daten2: Char): Char;
function ODER(Daten1: Char; Daten2: Char): Char;
function XODER(Daten1: Char; Daten2: Char): Char;
function Addition(Daten1: String; Daten2: String):String;
function Subtrahieren(Daten1: String; Daten2: String):String;
function INC(Daten: String): String;
function DEC(Daten: String): String;

procedure cplColor(Daten:Char; Shape: TShape);
function Compliler(Daten: WideString): TStringList;

function DEZ2BIN(Value: Integer):String;
function DEZ2HEX(Value: Integer):String;
function BIN2DEZ(Value: String): Integer;
function HEX2DEZ(Value: String): Integer;


implementation

procedure cpl(var Daten: Char);
begin
  IF Daten = '0' THEN Daten := '1' ELSE Daten := '0';
end;

function cplx(Daten: Char): Char;
begin
  IF Daten = '0' THEN Result := '1' ELSE Result := '0';
end;

function UND(Daten1: Char; Daten2: Char): Char;
begin
  IF (Daten1 = '0') AND (Daten2 = '0') THEN Result := '0';
  IF (Daten1 = '0') AND (Daten2 = '1') THEN Result := '0';
  IF (Daten1 = '1') AND (Daten2 = '0') THEN Result := '0';
  IF (Daten1 = '1') AND (Daten2 = '1') THEN Result := '1';
end;

function ODER(Daten1: Char; Daten2: Char): Char;
begin
  IF (Daten1 = '0') AND (Daten2 = '0') THEN Result := '0';
  IF (Daten1 = '0') AND (Daten2 = '1') THEN Result := '1';
  IF (Daten1 = '1') AND (Daten2 = '0') THEN Result := '1';
  IF (Daten1 = '1') AND (Daten2 = '1') THEN Result := '1';
end;

function XODER(Daten1: Char; Daten2: Char): Char;
begin
  IF (Daten1 = '0') AND (Daten2 = '0') THEN Result := '0';
  IF (Daten1 = '0') AND (Daten2 = '1') THEN Result := '1';
  IF (Daten1 = '1') AND (Daten2 = '0') THEN Result := '1';
  IF (Daten1 = '1') AND (Daten2 = '1') THEN Result := '0';
end;

function Addition(Daten1: String; Daten2: String):String;
var D1,D2: Integer;
    Ergebniss: String;
begin

  repeat
    Daten1 := '0' + Daten1;
  until Length(Daten1) >= 9;

  Daten1 := RightStr(Daten1,9);

  repeat
    Daten2 := '0' + Daten2;
  until Length(Daten2) >= 9;

  Daten2 := RightStr(Daten2,9);

  D1 := BIN2DEZ(Daten1);

  D2 := BIN2DEZ(Daten2);

  Ergebniss := DEZ2BIN( D1 + D2 );

  repeat
    Ergebniss := '0' + Ergebniss;
  until Length(Ergebniss) >= 9;

  Ergebniss := RightStr(Ergebniss,9);

  Result := Ergebniss;
end;

function Subtrahieren(Daten1: String; Daten2: String):String;
var D1,D2: Integer;
    Ergebniss: String;
begin

  repeat
    Daten1 := '0' + Daten1;
  until Length(Daten1) >= 9;

  Daten1 := RightStr(Daten1,9);

  repeat
    Daten2 := '0' + Daten2;
  until Length(Daten2) >= 9;

  Daten2 := RightStr(Daten2,9);

  D1 := BIN2DEZ(Daten1);

  D2 := BIN2DEZ(Daten2);

  Ergebniss := DEZ2BIN( D1 - D2 );

  repeat
    Ergebniss := '0' + Ergebniss;
  until Length(Ergebniss) >= 9;

  Ergebniss := RightStr(Ergebniss,9);

  Result := Ergebniss;
end;

function INC(Daten: String): String;
var Ergebniss: String;
begin

  repeat
    Daten := '0' + Daten;
  until Length(Daten) >= 9;

  Daten := RightStr(Daten,9);

  Ergebniss := DEZ2BIN( BIN2DEZ(Daten) + 1 );

  repeat
    Ergebniss := '0' + Ergebniss;
  until Length(Ergebniss) >= 9;

  Ergebniss := RightStr(Ergebniss,9);

  Result := Ergebniss;
end;

function DEC(Daten: String): String;
var Ergebniss: String;
begin

  repeat
    Daten := '0' + Daten;
  until Length(Daten) >= 9;

  Daten := RightStr(Daten,9);

  Ergebniss := DEZ2BIN( BIN2DEZ(Daten) - 1 );

  repeat
    Ergebniss := '0' + Ergebniss;
  until Length(Ergebniss) >= 9;

  Ergebniss := RightStr(Ergebniss,9);

  Result := Ergebniss;
end;

procedure cplColor(Daten:Char; Shape: TShape);
begin
  IF Daten = '1' THEN Shape.Brush.Color := clRed ELSE Shape.Brush.Color := clBlack;
end;

function Compliler(Daten: WideString): TStringList;
var I, Anfang, Ende: Integer;
    Neu: WideString;
begin

  Result := TStringList.Create;

  For I := 1 TO Length(Daten) Do
  begin
    IF ((Daten[I] <> #10) AND (Daten[I] <> #13) AND (Daten[I] <> #32)) THEN
    begin
      Neu := Neu + Daten[I];
    end;
  end;

  Daten := Neu;

  IF Copy(Daten,1, 8) = '#ANFANG#' THEN
  begin
    Daten := Copy(Daten,9,Length(Daten)-8); // #ANFANG# erfernen

    while Copy(Daten,1, 6) <> '#ENDE#' do
    begin

      IF Copy(Daten,1,1) = '%' THEN
      begin
        Daten := Copy(Daten,2,Length(Daten)-1);
        Anfang := 1;
        Ende := Pos('%',Daten)-1;

        IF Ende = 0 THEN
        begin
          Showmessage('ERROR % Vergessen');
          Exit;
        end;

        //Showmessage( Copy(Daten,1,Ende) );
        Result.Add(Copy(Daten,1,Ende));

        Daten := Copy(Daten,Ende+2,Length(Daten));
      end
      ELSE
        Daten := Copy(Daten,2,Length(Daten)-1);

    end;

    Daten := Copy(Daten,1,Length(Daten)-6); // #ENDE# erfernen
  end;

  Result.Add('ENDE');

end;

function DEZ2BIN(Value: Integer):String;
var Rest: Integer;
begin

  Result := '';
  While Value <> 0 do
  begin
    Rest := Value mod 2;
    Value := Value div 2;
    Result := INTtoSTR(Rest) + Result;
  end;

end;

function DEZ2HEX(Value: Integer):String;
var Rest: Integer;
begin

  Result := '';
  while Value <> 0 do
  begin
    Rest := Value mod 16;
    Value := Value div 16;

    Case Rest of
    0..9 : Result := INTtoSTR(Rest) + Result;
    10 : Result := 'A' + Result;
    11 : Result := 'B' + Result;
    12 : Result := 'C' + Result;
    13 : Result := 'D' + Result;
    14 : Result := 'E' + Result;
    15 : Result := 'F' + Result;
    end;
  end;

end;

function BIN2DEZ(Value: String): Integer;
var X,I: Integer;
begin

  Result := 0;
  I := 0;

  FOR X := Length(Value) DownTO 0 DO
  begin

    IF Value[X] = '1' THEN
    begin
      Result := Result + Trunc((Power(2,I)));
    end;
    I := I + 1;
  end;

end;

function HEX2DEZ(Value: String): Integer;
var hexzahl: string;
    dezimalzahl: integer;
begin

  Result := 0;

  hexzahl := '$' + Value;
  Result := StrToInt(hexzahl);

end;

end.
