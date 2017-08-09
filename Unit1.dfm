object Form1: TForm1
  Left = 97
  Top = 110
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 
    'Microcontroller 8051 Emulation   *Compile F5*    *Start/Stop  F9' +
    '*    *Reset  F8*'
  ClientHeight = 407
  ClientWidth = 868
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 560
    Top = 120
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' P5'
    Color = clYellow
    ParentColor = False
  end
  object Label3: TLabel
    Left = 560
    Top = 64
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' P4'
    Color = clYellow
    ParentColor = False
  end
  object Label1: TLabel
    Left = 560
    Top = 8
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' P1'
    Color = clYellow
    ParentColor = False
  end
  object Shape1: TShape
    Left = 600
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape2: TShape
    Left = 632
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape3: TShape
    Left = 664
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape4: TShape
    Left = 696
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape5: TShape
    Left = 728
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape6: TShape
    Left = 760
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape7: TShape
    Left = 792
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape8: TShape
    Left = 824
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label2: TLabel
    Left = 592
    Top = 40
    Width = 257
    Height = 13
    Caption = ' P1.7   P1.6     P1.5    P1.4   P1.3   P1.2   P1.1   P1.0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape9: TShape
    Left = 600
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape10: TShape
    Left = 632
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape11: TShape
    Left = 664
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape12: TShape
    Left = 696
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape13: TShape
    Left = 728
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape14: TShape
    Left = 760
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape15: TShape
    Left = 792
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape16: TShape
    Left = 824
    Top = 72
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label4: TLabel
    Left = 592
    Top = 96
    Width = 257
    Height = 13
    Caption = ' P4.7   P4.6     P4.5    P4.4   P4.3   P4.2   P4.1   P4.0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape17: TShape
    Left = 600
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape18: TShape
    Left = 632
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape19: TShape
    Left = 664
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape20: TShape
    Left = 696
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape21: TShape
    Left = 728
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape22: TShape
    Left = 760
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape23: TShape
    Left = 792
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape24: TShape
    Left = 824
    Top = 128
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label6: TLabel
    Left = 592
    Top = 152
    Width = 257
    Height = 13
    Caption = ' P5.7   P5.6     P5.5    P5.4   P5.3   P5.2   P5.1   P5.0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape25: TShape
    Left = 584
    Top = 16
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Shape26: TShape
    Left = 584
    Top = 72
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Shape27: TShape
    Left = 584
    Top = 128
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Label7: TLabel
    Left = 560
    Top = 176
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' A'
    Color = clYellow
    ParentColor = False
  end
  object Shape28: TShape
    Left = 600
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape29: TShape
    Left = 632
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape30: TShape
    Left = 664
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape31: TShape
    Left = 696
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape32: TShape
    Left = 728
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape33: TShape
    Left = 760
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape34: TShape
    Left = 792
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape35: TShape
    Left = 824
    Top = 184
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label8: TLabel
    Left = 592
    Top = 208
    Width = 249
    Height = 13
    Caption = 
      '    7         6         5        4         3         2         1' +
      '        0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape36: TShape
    Left = 584
    Top = 184
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Label9: TLabel
    Left = 560
    Top = 232
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' B'
    Color = clYellow
    ParentColor = False
  end
  object Shape37: TShape
    Left = 600
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape38: TShape
    Left = 632
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape39: TShape
    Left = 664
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape40: TShape
    Left = 696
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape41: TShape
    Left = 728
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape42: TShape
    Left = 760
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape43: TShape
    Left = 792
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape44: TShape
    Left = 824
    Top = 240
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label10: TLabel
    Left = 592
    Top = 264
    Width = 249
    Height = 13
    Caption = 
      '    7         6         5        4         3         2         1' +
      '        0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape45: TShape
    Left = 584
    Top = 240
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Label11: TLabel
    Left = 560
    Top = 288
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' R0'
    Color = clYellow
    ParentColor = False
  end
  object Shape46: TShape
    Left = 600
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape47: TShape
    Left = 632
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape48: TShape
    Left = 664
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape49: TShape
    Left = 696
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape50: TShape
    Left = 728
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape51: TShape
    Left = 760
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape52: TShape
    Left = 792
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape53: TShape
    Left = 824
    Top = 296
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label12: TLabel
    Left = 592
    Top = 320
    Width = 249
    Height = 13
    Caption = 
      '    7         6         5        4         3         2         1' +
      '        0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape54: TShape
    Left = 584
    Top = 296
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Label13: TLabel
    Left = 560
    Top = 344
    Width = 297
    Height = 49
    AutoSize = False
    Caption = ' R1'
    Color = clYellow
    ParentColor = False
  end
  object Shape55: TShape
    Left = 600
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape56: TShape
    Left = 632
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape57: TShape
    Left = 664
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape58: TShape
    Left = 696
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape59: TShape
    Left = 728
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape60: TShape
    Left = 760
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape61: TShape
    Left = 792
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Shape62: TShape
    Left = 824
    Top = 352
    Width = 17
    Height = 17
    Brush.Color = clBlack
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label14: TLabel
    Left = 592
    Top = 376
    Width = 249
    Height = 13
    Caption = 
      '    7         6         5        4         3         2         1' +
      '        0  '
    Color = clSkyBlue
    ParentColor = False
  end
  object Shape63: TShape
    Left = 584
    Top = 352
    Width = 9
    Height = 17
    Brush.Color = clBlack
    OnMouseDown = Shape1MouseDown
  end
  object Label15: TLabel
    Left = 392
    Top = 376
    Width = 24
    Height = 13
    Caption = '1000'
  end
  object Memo1: TMemo
    Left = 16
    Top = 8
    Width = 361
    Height = 385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 424
    Width = 281
    Height = 25
    Caption = 'Compilen ( F5 )'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 392
    Top = 8
    Width = 153
    Height = 353
    ItemHeight = 13
    TabOrder = 2
  end
  object Button2: TButton
    Left = 312
    Top = 424
    Width = 153
    Height = 25
    Caption = 'Programm Start ( F9 )'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 672
    Top = 424
    Width = 97
    Height = 25
    Caption = 'Entwicklung von'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 480
    Top = 424
    Width = 97
    Height = 25
    Caption = 'Reset ( F8 )'
    TabOrder = 5
    OnClick = Button4Click
  end
  object TrackBar1: TTrackBar
    Left = 416
    Top = 368
    Width = 129
    Height = 25
    Ctl3D = True
    Max = 1000
    Min = 50
    ParentCtl3D = False
    Position = 1000
    TabOrder = 6
    TickStyle = tsNone
    OnChange = TrackBar1Change
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 440
    Top = 424
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Datei1: TMenuItem
      Caption = 'Datei'
      object Neu1: TMenuItem
        Caption = 'Neu'
        OnClick = Neu1Click
      end
      object ffnen1: TMenuItem
        Caption = #214'ffnen'
        OnClick = ffnen1Click
      end
      object Speichern1: TMenuItem
        Caption = 'Speichern'
        OnClick = Speichern1Click
      end
      object Beenden1: TMenuItem
        Caption = 'Beenden'
        OnClick = Beenden1Click
      end
    end
    object Assembler1: TMenuItem
      Caption = 'Assembler'
      object Compilen1: TMenuItem
        Caption = 'Compilen ( F5 )'
        OnClick = Compilen1Click
      end
      object Start1: TMenuItem
        Caption = 'Start / Stop ( F9 )'
        OnClick = Start1Click
      end
      object Reset1: TMenuItem
        Caption = 'Reset ( F8 )'
        OnClick = Reset1Click
      end
    end
    object DemoProgramme1: TMenuItem
      Caption = 'Demo Programme'
      object Lauflicht1: TMenuItem
        Caption = 'Lauflicht'
        OnClick = Lauflicht1Click
      end
    end
    object Info1: TMenuItem
      Caption = 'Info'
      OnClick = Info1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 40
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 72
    Top = 8
  end
end
