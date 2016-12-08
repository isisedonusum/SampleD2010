object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Bilgiler'
      ExplicitLeft = 0
      ExplicitTop = 16
      object Label1: TLabel
        Left = 208
        Top = 72
        Width = 49
        Height = 13
        Caption = 'VKN/TCKN'
      end
      object Label2: TLabel
        Left = 208
        Top = 99
        Width = 37
        Height = 13
        Caption = 'Kullan'#305'c'#305
      end
      object Label3: TLabel
        Left = 208
        Top = 123
        Width = 22
        Height = 13
        Caption = #350'ifre'
      end
      object txtVKN: TEdit
        Left = 263
        Top = 69
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'txtVKN'
      end
      object txtUser: TEdit
        Left = 263
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
      object txtPass: TEdit
        Left = 263
        Top = 123
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Edit1'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'M'#252'kellef'
      ImageIndex = 1
      DesignSize = (
        627
        271)
      object Button1: TButton
        Left = 272
        Top = 98
        Width = 75
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Sorgula'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Memo1: TMemo
        Left = 216
        Top = 3
        Width = 185
        Height = 89
        Anchors = [akLeft, akTop, akRight]
        Lines.Strings = (
          '*')
        TabOrder = 1
      end
      object Memo2: TMemo
        Left = 0
        Top = 129
        Width = 627
        Height = 142
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
      end
    end
  end
end
