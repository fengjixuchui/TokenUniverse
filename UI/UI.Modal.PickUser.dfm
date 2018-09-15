object DialogPickUser: TDialogPickUser
  Left = 0
  Top = 0
  Anchors = [akTop]
  BorderIcons = [biSystemMenu]
  Caption = 'Choose group or user'
  ClientHeight = 219
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  DesignSize = (
    375
    219)
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBoxSID: TComboBox
    Left = 8
    Top = 8
    Width = 299
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = ComboBoxSIDChange
  end
  object ButtonFilter: TButton
    Left = 313
    Top = 6
    Width = 25
    Height = 25
    Hint = 'Filter suggestions'
    Anchors = [akTop, akRight]
    ImageIndex = 0
    ImageMargins.Left = 2
    ImageMargins.Top = 1
    Images = ImageList
    TabOrder = 1
    ExplicitLeft = 316
  end
  object ButtonOK: TButton
    Left = 294
    Top = 188
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = ButtonOKClick
    ExplicitLeft = 297
    ExplicitTop = 185
  end
  object ButtonCancel: TButton
    Left = 8
    Top = 188
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    ExplicitTop = 185
  end
  object ButtonPick: TButton
    Left = 344
    Top = 6
    Width = 25
    Height = 25
    Hint = 'Use default user selection dialog'
    Anchors = [akTop, akRight]
    ImageIndex = 1
    ImageMargins.Left = 2
    ImageMargins.Top = 1
    Images = ImageList
    TabOrder = 4
    OnClick = ButtonPickClick
    ExplicitLeft = 347
  end
  object GroupBoxAttributes: TGroupBox
    Left = 8
    Top = 35
    Width = 359
    Height = 147
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Group attributes '
    TabOrder = 5
    ExplicitWidth = 362
    ExplicitHeight = 144
    DesignSize = (
      359
      147)
    object CheckBoxMandatory: TCheckBox
      Left = 198
      Top = 24
      Width = 150
      Height = 17
      Anchors = [akTop]
      Caption = 'Mandatory'
      TabOrder = 0
      ExplicitLeft = 200
    end
    object CheckBoxDenyOnly: TCheckBox
      Left = 198
      Top = 47
      Width = 150
      Height = 17
      Anchors = [akTop]
      Caption = 'Use for deny only'
      TabOrder = 1
      ExplicitLeft = 200
    end
    object CheckBoxOwner: TCheckBox
      Left = 198
      Top = 70
      Width = 150
      Height = 17
      Anchors = [akTop]
      Caption = 'Owner'
      TabOrder = 2
      ExplicitLeft = 200
    end
    object CheckBoxResource: TCheckBox
      Left = 198
      Top = 116
      Width = 150
      Height = 17
      Anchors = [akTop]
      Caption = 'Resource'
      TabOrder = 3
      ExplicitLeft = 200
    end
    object CheckBoxEnabled: TCheckBox
      Left = 16
      Top = 24
      Width = 150
      Height = 17
      Caption = 'Enabled'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBoxEnabledByDafault: TCheckBox
      Left = 16
      Top = 47
      Width = 150
      Height = 17
      Caption = 'Enabled by default'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBoxIntegrity: TCheckBox
      Left = 16
      Top = 70
      Width = 150
      Height = 17
      Caption = 'Integrity'
      TabOrder = 6
    end
    object CheckBoxIntegrityEnabled: TCheckBox
      Left = 16
      Top = 93
      Width = 150
      Height = 17
      Caption = 'Integrity Enabled'
      TabOrder = 7
    end
    object CheckBoxLogon: TCheckBox
      Left = 198
      Top = 93
      Width = 150
      Height = 17
      Anchors = [akTop]
      Caption = 'Logon ID'
      TabOrder = 8
      ExplicitLeft = 200
    end
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    Left = 328
    Top = 88
    Bitmap = {
      494C010102000800580010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0A
      0856241F1A9B312921B1443A30C7574A3FDA42382FC200000025000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCD3CA00BEAD9A00887862007E6E5600B7AFA300000000000000
      000000000000000000000000000000000000000000001C1713854C4037C9B496
      82F9DAB186FFE8BF95FFE8BE94FFDDB38BFFCEA47BFF9E8062F90706046A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1B4A400FFF5E600EDE3D300D8CCBC007E6E5600000000000000
      00000000000000000000000000000000000006050460C79F75FFDDBCA3FFE8C7
      B5FFDBB388FFE4BC96FFE2BB95FFDAB48FFFCDA881FFDDB185FF4F3F30D80000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1B4A400FFF5E600C1B19E00D1C5B20080715800000000000000
      0000000000000000000000000000000000005B4F3BC2E6B68AFFC1A993FFE4CB
      C1FFDCB48BFFE8C29AFFE7C29DFFDDBC9BFFCFAA86FFD1A67CFF4A3B2ED10000
      0007000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1B4A400FFF1DE00AFA08A00C6BAA70080715800000000000000
      0000000000000000000000000000000000003D3D2BA3ECB78CFFBFA892FFFCF9
      F8FFF1CAA6FFEBC299FFF0CCAAFFE4C7AAFFD4B28DFFCFA379FF2A221BA40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8A69300EFDDC9008D7E6900C6BAA7007E6E5600000000000000
      00000000000000000000000000000000000010150E61FDC59BFFD3B89FFFE3E3
      E3FFECE2D8FFF4C496FFEDC9A5FFE2C4A5FFDFB991FFAE8863FA000000130000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6A48E00EFDDC90091816B00C6BAA70074664F00000000000000
      00000000000000000000000000000000000000000008656147B9F4C5A0FF4261
      81FF2B5A8BFF96928CFFEABD8EFFEBC198FFBC9671F80604034D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B8A89200FBECDA00A896820094857000C6BAA70061523A00BFB1A3000000
      00000000000000000000000000000000000000000000000000003B3634B73B5B
      7EFF194470FF275382FF9D8C79FF644F3BC10201012A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8A6
      9300FFF5E600D5CABB00A89A87009485700088786200C6BAA7006D5D4500C1B4
      A40000000000000000000000000000000000000000000202032717385BDC3960
      89FF32547AFF234D7AFF080B0E7900000000000000000100012C3A3DA5E91C1C
      429E0100001D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8A89200FFF5
      E600F0E9E100CCC0B100A2948100948570008878620088786200C6BAA7007466
      4F00BEAD9A000000000000000000000000000000000037485AB74B739DFF4F75
      9EFF497097FF365C83FF0304043F00000000000000000000000001010238494E
      DFF62B2B63C10000001400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8A89200FFF1DE00F0DA
      BD00E8D3B400D1B99600BCA48100A391780091816B008D7E690088786200C6BA
      A70074664F00BFB1A3000000000000000000000000105A7B9AEB668FB6FF668D
      B3FF557DA5FF416B95FF27313ACE000000120000000000000000000000050A09
      13624C55FFFF0404074E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1B19E00FFF1DE00E6D0B200E6D0
      B200E6D0B200E6D0B200BCA48100A391780091816B008D7E690088786200968A
      7500C6BAA70074664F000000000000000000020203207292B5F485ACD1FF78A0
      C6FF638BB3FF476C91FF2D4156FF0A0A0A4C0000000000000001000000000503
      08483E41FFFF120F197100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A48E00B8A89200B6A48E00A294
      81009888730088786200806F5A007E6E56007E6E56007E6E56007E6E56007E6E
      56007E6E56007E6E56007E6E5600000000000101021A7F9FC0F1A8CBEFFF91B5
      DBFF6A98C4FF455769FF332D27FF0F0F0F710000000000000022242047B22625
      97D63433FBFF4942B8E6302D6EC10101012B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A48E00FFF5E600FFE6C400FFED
      D000FFE6C400F9DAB100F9DAB100F2D3AA00E2C6A000D1B99600C4AD8D00BCA7
      8900BCA78900C6BAA7007F6F5900000000000000000061798FD18EB2D6FF87AA
      CEFF6586AAFF454C53FF302B28FF0D0D0D68000000000000000D020207442F35
      EFFF282BF5FF4543FFFF0E0C1A67000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8A89200B8A89200B8A89200B8A8
      9200B5A59100B6A48E00AC9C8800A2948100A39178009888730091816B008D7E
      690088786200807158007F6F590000000000000000004A4B4CB378797AFF7273
      75FF615F5FFF4F4D4BFF464646FF020202280000000000000000000000030303
      0746222EFFFF0C0A19690000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000202021E282827855454
      53D35A5959EB3D3D3CCD0E0E0E58000000000000000000000000000000000000
      00140C090B670302022E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F83F000000000000
      F83F000000000000F83F000000000000F83F000000000000F83F000000000000
      F83F000000000000F01F000000000000E00F000000000000C007000000000000
      8003000000000000000300000000000000010000000000000001000000000000
      0001000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
