object FrmMains: TFrmMains
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerador de Senha Aleat'#243'ria'
  ClientHeight = 306
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 68
    Top = 78
    Width = 179
    Height = 21
    Caption = 'Quantidade de Caracteres'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EdtSenha: TEdit
    Left = 24
    Top = 24
    Width = 305
    Height = 38
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object CkLetrasMaiusculas: TCheckBox
    Left = 24
    Top = 120
    Width = 153
    Height = 17
    Caption = 'Letras Mai'#250'sculas'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object SpinEdit: TSpinEdit
    Left = 261
    Top = 80
    Width = 68
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 6
  end
  object CkLetrasMinusculas: TCheckBox
    Left = 24
    Top = 153
    Width = 169
    Height = 17
    Caption = 'Lertas Min'#250'sculas'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object CkNumeros: TCheckBox
    Left = 24
    Top = 184
    Width = 169
    Height = 17
    Caption = 'N'#250'meros'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object CkCaracteres: TCheckBox
    Left = 24
    Top = 216
    Width = 177
    Height = 17
    Caption = 'Caracteres'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object BtnGerar: TButton
    Left = 24
    Top = 256
    Width = 305
    Height = 33
    Caption = 'Gerar Senha Aleat'#243'ria'
    TabOrder = 6
    OnClick = BtnGerarClick
  end
end
