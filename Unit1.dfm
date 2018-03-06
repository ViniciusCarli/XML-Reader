object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 250
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 87
    Width = 635
    Height = 163
    Align = alBottom
    ItemHeight = 13
    TabOrder = 0
    ExplicitTop = 136
  end
  object btnLerArquivo: TBitBtn
    Left = 490
    Top = 8
    Width = 71
    Height = 22
    Caption = 'Ler Arquivo'
    TabOrder = 1
    OnClick = btnLerArquivoClick
  end
  object OpenDialog1: TOpenDialog
    Left = 584
    Top = 8
  end
  object XMLDocument1: TXMLDocument
    Left = 584
    Top = 72
  end
end
