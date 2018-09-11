object InfoDialog: TInfoDialog
  Left = 0
  Top = 0
  Caption = 'Token Information'
  ClientHeight = 378
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  DesignSize = (
    402
    378)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 396
    Height = 345
    ActivePage = TabGeneral
    Anchors = [akLeft, akTop, akRight, akBottom]
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    object TabGeneral: TTabSheet
      Caption = 'General'
      DesignSize = (
        388
        317)
      object BtnSetIntegrity: TSpeedButton
        Left = 359
        Top = 178
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000000000000000000000010000000000000000000016A5
          440026B255002EB75D002FB85E0052C7630053C7640053C8640056CC670057CC
          68005BD26E005CD36E0056DE6D005FD4710062DA750056E970005AEB73005FED
          780066E07B0066E67C0069E07D0065EE7D0068EA7F0063C382006DCB8C006CE5
          80006CEA830069EC80006CED830074E4870071EA850070EE860073ED890074EF
          8A0081D38D0082D48D009BE2A60098EEA7009DE8A9009AEDA8009EEFAB009DF0
          AB009EF2AD00A0F4AF00A3F2B100A1F4B000A7F4B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFF04
          04FFFFFFFFFFFFFFFFFFFFFFFFFF042A04FFFFFFFFFFFFFFFFFFFFFFFF042516
          04FFFFFFFFFFFFFFFFFFFFFF02260C13040303030303030303FFFF02240D0E1D
          262D2D2B2B2A2A2A2503012307090B0E14191A1A1511100F2A03FF012306070B
          0E13141E20201E1A2D04FFFF0123070901010101010121112B03FFFFFF012306
          01FFFFFFFF011F102A03FFFFFFFF012301FFFFFFFF011A0F2A03FFFFFFFFFF01
          01FFFFFFFF012E2A2503FFFFFFFFFFFF17FFFFFFFFFF040403FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = BtnSetIntegrityClick
      end
      object BtnSetSession: TSpeedButton
        Left = 359
        Top = 151
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000000000000000000000010000000000000000000016A5
          440026B255002EB75D002FB85E0052C7630053C7640053C8640056CC670057CC
          68005BD26E005CD36E0056DE6D005FD4710062DA750056E970005AEB73005FED
          780066E07B0066E67C0069E07D0065EE7D0068EA7F0063C382006DCB8C006CE5
          80006CEA830069EC80006CED830074E4870071EA850070EE860073ED890074EF
          8A0081D38D0082D48D009BE2A60098EEA7009DE8A9009AEDA8009EEFAB009DF0
          AB009EF2AD00A0F4AF00A3F2B100A1F4B000A7F4B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFF04
          04FFFFFFFFFFFFFFFFFFFFFFFFFF042A04FFFFFFFFFFFFFFFFFFFFFFFF042516
          04FFFFFFFFFFFFFFFFFFFFFF02260C13040303030303030303FFFF02240D0E1D
          262D2D2B2B2A2A2A2503012307090B0E14191A1A1511100F2A03FF012306070B
          0E13141E20201E1A2D04FFFF0123070901010101010121112B03FFFFFF012306
          01FFFFFFFF011F102A03FFFFFFFF012301FFFFFFFF011A0F2A03FFFFFFFFFF01
          01FFFFFFFF012E2A2503FFFFFFFFFFFF17FFFFFFFFFF040403FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = BtnSetSessionClick
      end
      object BtnSetOwner: TSpeedButton
        Left = 359
        Top = 259
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000000000000000000000010000000000000000000016A5
          440026B255002EB75D002FB85E0052C7630053C7640053C8640056CC670057CC
          68005BD26E005CD36E0056DE6D005FD4710062DA750056E970005AEB73005FED
          780066E07B0066E67C0069E07D0065EE7D0068EA7F0063C382006DCB8C006CE5
          80006CEA830069EC80006CED830074E4870071EA850070EE860073ED890074EF
          8A0081D38D0082D48D009BE2A60098EEA7009DE8A9009AEDA8009EEFAB009DF0
          AB009EF2AD00A0F4AF00A3F2B100A1F4B000A7F4B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFF04
          04FFFFFFFFFFFFFFFFFFFFFFFFFF042A04FFFFFFFFFFFFFFFFFFFFFFFF042516
          04FFFFFFFFFFFFFFFFFFFFFF02260C13040303030303030303FFFF02240D0E1D
          262D2D2B2B2A2A2A2503012307090B0E14191A1A1511100F2A03FF012306070B
          0E13141E20201E1A2D04FFFF0123070901010101010121112B03FFFFFF012306
          01FFFFFFFF011F102A03FFFFFFFF012301FFFFFFFF011A0F2A03FFFFFFFFFF01
          01FFFFFFFF012E2A2503FFFFFFFFFFFF17FFFFFFFFFF040403FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BtnSetPrimary: TSpeedButton
        Left = 359
        Top = 286
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000000000000000000000010000000000000000000016A5
          440026B255002EB75D002FB85E0052C7630053C7640053C8640056CC670057CC
          68005BD26E005CD36E0056DE6D005FD4710062DA750056E970005AEB73005FED
          780066E07B0066E67C0069E07D0065EE7D0068EA7F0063C382006DCB8C006CE5
          80006CEA830069EC80006CED830074E4870071EA850070EE860073ED890074EF
          8A0081D38D0082D48D009BE2A60098EEA7009DE8A9009AEDA8009EEFAB009DF0
          AB009EF2AD00A0F4AF00A3F2B100A1F4B000A7F4B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFF04
          04FFFFFFFFFFFFFFFFFFFFFFFFFF042A04FFFFFFFFFFFFFFFFFFFFFFFF042516
          04FFFFFFFFFFFFFFFFFFFFFF02260C13040303030303030303FFFF02240D0E1D
          262D2D2B2B2A2A2A2503012307090B0E14191A1A1511100F2A03FF012306070B
          0E13141E20201E1A2D04FFFF0123070901010101010121112B03FFFFFF012306
          01FFFFFFFF011F102A03FFFFFFFF012301FFFFFFFF011A0F2A03FFFFFFFFFF01
          01FFFFFFFF012E2A2503FFFFFFFFFFFF17FFFFFFFFFF040403FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BtnSetUIAccess: TSpeedButton
        Left = 359
        Top = 205
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000000000000000000000010000000000000000000016A5
          440026B255002EB75D002FB85E0052C7630053C7640053C8640056CC670057CC
          68005BD26E005CD36E0056DE6D005FD4710062DA750056E970005AEB73005FED
          780066E07B0066E67C0069E07D0065EE7D0068EA7F0063C382006DCB8C006CE5
          80006CEA830069EC80006CED830074E4870071EA850070EE860073ED890074EF
          8A0081D38D0082D48D009BE2A60098EEA7009DE8A9009AEDA8009EEFAB009DF0
          AB009EF2AD00A0F4AF00A3F2B100A1F4B000A7F4B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFF04
          04FFFFFFFFFFFFFFFFFFFFFFFFFF042A04FFFFFFFFFFFFFFFFFFFFFFFF042516
          04FFFFFFFFFFFFFFFFFFFFFF02260C13040303030303030303FFFF02240D0E1D
          262D2D2B2B2A2A2A2503012307090B0E14191A1A1511100F2A03FF012306070B
          0E13141E20201E1A2D04FFFF0123070901010101010121112B03FFFFFF012306
          01FFFFFFFF011F102A03FFFFFFFF012301FFFFFFFF011A0F2A03FFFFFFFFFF01
          01FFFFFFFF012E2A2503FFFFFFFFFFFF17FFFFFFFFFF040403FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = BtnSetUIAccessClick
      end
      object SpeedButton1: TSpeedButton
        Left = 359
        Top = 232
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000000000000000000000010000000000000000000016A5
          440026B255002EB75D002FB85E0052C7630053C7640053C8640056CC670057CC
          68005BD26E005CD36E0056DE6D005FD4710062DA750056E970005AEB73005FED
          780066E07B0066E67C0069E07D0065EE7D0068EA7F0063C382006DCB8C006CE5
          80006CEA830069EC80006CED830074E4870071EA850070EE860073ED890074EF
          8A0081D38D0082D48D009BE2A60098EEA7009DE8A9009AEDA8009EEFAB009DF0
          AB009EF2AD00A0F4AF00A3F2B100A1F4B000A7F4B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFF04
          04FFFFFFFFFFFFFFFFFFFFFFFFFF042A04FFFFFFFFFFFFFFFFFFFFFFFF042516
          04FFFFFFFFFFFFFFFFFFFFFF02260C13040303030303030303FFFF02240D0E1D
          262D2D2B2B2A2A2A2503012307090B0E14191A1A1511100F2A03FF012306070B
          0E13141E20201E1A2D04FFFF0123070901010101010121112B03FFFFFF012306
          01FFFFFFFF011F102A03FFFFFFFF012301FFFFFFFF011A0F2A03FFFFFFFFFF01
          01FFFFFFFF012E2A2503FFFFFFFFFFFF17FFFFFFFFFF040403FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = BtnSetMandatoryPolicy
      end
      object StaticUser: TStaticText
        Left = 7
        Top = 128
        Width = 30
        Height = 17
        Caption = 'User:'
        TabOrder = 8
      end
      object EditUser: TEdit
        Left = 112
        Top = 124
        Width = 270
        Height = 21
        Margins.Right = 6
        Anchors = [akLeft, akTop, akRight]
        AutoSelect = False
        AutoSize = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Unknown user'
      end
      object StaticSession: TStaticText
        Left = 7
        Top = 155
        Width = 44
        Height = 17
        Caption = 'Session:'
        TabOrder = 9
      end
      object StaticIntegrity: TStaticText
        Left = 7
        Top = 182
        Width = 75
        Height = 17
        Caption = 'Integrity level:'
        TabOrder = 10
      end
      object ComboSession: TSessionComboBox
        Left = 112
        Top = 151
        Width = 244
        Height = 21
        AutoComplete = False
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        Text = 'Unknown session'
        OnChange = SetStaleColor
      end
      object ComboIntegrity: TIntegrityComboBox
        Left = 112
        Top = 178
        Width = 244
        Height = 21
        AutoComplete = False
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        Text = 'Unknown integrity level'
        OnChange = SetStaleColor
      end
      object StaticOwner: TStaticText
        Left = 9
        Top = 263
        Width = 40
        Height = 17
        Caption = 'Owner:'
        TabOrder = 11
      end
      object ComboOwner: TComboBox
        Left = 112
        Top = 259
        Width = 244
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
        Text = 'Unknown Owner'
        OnChange = SetStaleColor
      end
      object ComboPrimary: TComboBox
        Left = 112
        Top = 286
        Width = 244
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 7
        Text = 'Unknown Primary group'
        OnChange = SetStaleColor
      end
      object StaticPrimary: TStaticText
        Left = 9
        Top = 290
        Width = 75
        Height = 17
        Caption = 'Primary group:'
        TabOrder = 12
      end
      object StaticUIAccess: TStaticText
        Left = 7
        Top = 209
        Width = 52
        Height = 17
        Caption = 'UIAccess:'
        TabOrder = 13
      end
      object ComboUIAccess: TComboBox
        Left = 112
        Top = 205
        Width = 244
        Height = 21
        Hint = 
          'UIAccess flag is used by accessibility applications and allows t' +
          'hem to bypass some UIPI (User Interface Privilege Isolation) res' +
          'trictions like sending messages to windows with higher integrity' +
          ' levels or installing global hooks.'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        Text = 'Unknown UIAccess'
        OnChange = SetStaleColor
        Items.Strings = (
          'Disabled'
          'Enabled')
      end
      object StaticText1: TStaticText
        Left = 7
        Top = 236
        Width = 90
        Height = 17
        Caption = 'Mandatory policy:'
        TabOrder = 14
      end
      object ComboPolicy: TComboBox
        Left = 112
        Top = 232
        Width = 244
        Height = 21
        Hint = 
          'No write up:'#13#10'    A process associated with the token cannot wri' +
          'te to objects that have a greater mandatory integrity level.'#13#10#13#10 +
          'New process min:'#13#10'    A process created with the token has an in' +
          'tegrity level that is the lesser of the parent-process integrity' +
          ' level and the executable-file integrity level.'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        Text = 'Unknown policy'
        OnChange = SetStaleColor
        Items.Strings = (
          'Off'
          'No write up'
          'New process min'
          'No write up & New process min')
      end
      object ListViewGeneral: TListViewEx
        Left = 0
        Top = 0
        Width = 388
        Height = 118
        Align = alTop
        BorderStyle = bsNone
        Columns = <
          item
            Width = 120
          end
          item
            AutoSize = True
          end>
        Groups = <
          item
            Header = 'General information'
            GroupID = 0
            State = [lgsNormal]
            HeaderAlign = taLeftJustify
            FooterAlign = taLeftJustify
            TitleImage = -1
          end>
        Items.ItemData = {
          055F0100000500000000000000FFFFFFFFFFFFFFFF0100000000000000000000
          000E4F0062006A00650063007400200061006400640072006500730073000755
          006E006B006E006F0077006E0010B8871600000000FFFFFFFFFFFFFFFF010000
          0000000000000000000C480061006E0064006C0065002000760061006C007500
          65000755006E006B006E006F0077006E00C07E871600000000FFFFFFFFFFFFFF
          FF0100000000000000000000000E4700720061006E0074006500640020006100
          630063006500730073000755006E006B006E006F0077006E00B87B8514000000
          00FFFFFFFFFFFFFFFF0100000000000000000000000A54006F006B0065006E00
          200074007900700065000755006E006B006E006F0077006E0058548514000000
          00FFFFFFFFFFFFFFFF0100000000000000000000000845006C00650076006100
          7400650064000755006E006B006E006F0077006E0000558514FFFFFFFFFFFFFF
          FFFFFF}
        MultiSelect = True
        GroupView = True
        ReadOnly = True
        RowSelect = True
        ShowColumnHeaders = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object TabAdvanced: TTabSheet
      Caption = 'Advanced'
      ImageIndex = 4
      object ListViewAdvanced: TListViewEx
        Left = 0
        Top = 0
        Width = 388
        Height = 317
        Align = alClient
        BorderStyle = bsNone
        Columns = <
          item
            Width = 140
          end
          item
            Width = 220
          end>
        Groups = <
          item
            Header = 'Token Source'
            GroupID = 0
            State = [lgsNormal, lgsCollapsible]
            HeaderAlign = taLeftJustify
            FooterAlign = taLeftJustify
            TitleImage = -1
          end
          item
            Header = 'Token Statistics'
            GroupID = 1
            State = [lgsNormal, lgsCollapsible]
            HeaderAlign = taLeftJustify
            FooterAlign = taLeftJustify
            TitleImage = -1
          end
          item
            Header = 'Other'
            GroupID = 2
            State = [lgsNormal, lgsCollapsible]
            HeaderAlign = taLeftJustify
            FooterAlign = taLeftJustify
            TitleImage = -1
          end
          item
            Header = 'Logon Session'
            GroupID = 3
            State = [lgsNormal, lgsCollapsible]
            HeaderAlign = taLeftJustify
            FooterAlign = taLeftJustify
            TitleImage = -1
          end>
        Items.ItemData = {
          05A90500001300000000000000FFFFFFFFFFFFFFFF0100000000000000000000
          00044E0061006D0065000755006E006B006E006F0077006E00602C481D000000
          00FFFFFFFFFFFFFFFF010000000000000000000000044C005500490044000755
          006E006B006E006F0077006E00D84D481D00000000FFFFFFFFFFFFFFFF010000
          0001000000000000000854006F006B0065006E002000490044000755006E006B
          006E006F0077006E002004481D00000000FFFFFFFFFFFFFFFF01000000010000
          000000000017410075007400680065006E007400690063006100740069006F00
          6E002F004C006F0067006F006E002000490044000755006E006B006E006F0077
          006E000842481D00000000FFFFFFFFFFFFFFFF0100000001000000000000000F
          450078007000690072006100740069006F006E002000540069006D0065000755
          006E006B006E006F0077006E00284F481D00000000FFFFFFFFFFFFFFFF010000
          0001000000000000000F440079006E0061006D00690063002000430068006100
          72006700650064000755006E006B006E006F0077006E003805481D00000000FF
          FFFFFFFFFFFFFF01000000010000000000000011440079006E0061006D006900
          6300200041007600610069006C00610062006C0065000755006E006B006E006F
          0077006E00E834481D00000000FFFFFFFFFFFFFFFF0100000001000000000000
          000B470072006F0075007000200043006F0075006E0074000755006E006B006E
          006F0077006E00A80C481D00000000FFFFFFFFFFFFFFFF010000000100000000
          0000000F500072006900760069006C00650067006500200043006F0075006E00
          74000755006E006B006E006F0077006E00B863481D00000000FFFFFFFFFFFFFF
          FF0100000001000000000000000B4D006F006400690066006900650064002000
          490044000755006E006B006E006F0077006E00B057481D00000000FFFFFFFFFF
          FFFFFF0100000002000000000000000D530061006E00640062006F0078002000
          49006E006500720074000755006E006B006E006F0077006E00C03E481D000000
          00FFFFFFFFFFFFFFFF0100000002000000000000001048006100730020005200
          650073007400720069006300740069006F006E0073000755006E006B006E006F
          0077006E00E82D481D00000000FFFFFFFFFFFFFFFF0100000003000000000000
          00084C006F0067006F006E002000490044000755006E006B006E006F0077006E
          00685B481D00000000FFFFFFFFFFFFFFFF010000000300000000000000095500
          73006500720020004E0061006D0065000F55006E00610062006C006500200074
          006F002000710075006500720079005006481D00000000FFFFFFFFFFFFFFFF01
          000000030000000000000016410075007400680065006E007400690063006100
          740069006F006E0020005000610063006B006100670065000F55006E00610062
          006C006500200074006F002000710075006500720079002012481D00000000FF
          FFFFFFFFFFFFFF0100000003000000000000000C4C006F0067006F006E002000
          5300650072007600650072000F55006E00610062006C006500200074006F0020
          0071007500650072007900A83D481D00000000FFFFFFFFFFFFFFFF0100000003
          000000000000000A4C006F0067006F006E00200054007900700065000F55006E
          00610062006C006500200074006F00200071007500650072007900B042481D00
          000000FFFFFFFFFFFFFFFF010000000300000000000000075300650073007300
          69006F006E000F55006E00610062006C006500200074006F0020007100750065
          0072007900203C481D00000000FFFFFFFFFFFFFFFF0100000003000000000000
          000A4C006F0067006F006E002000540069006D0065000F55006E00610062006C
          006500200074006F002000710075006500720079008047481DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        MultiSelect = True
        GroupView = True
        ReadOnly = True
        RowSelect = True
        ShowColumnHeaders = False
        TabOrder = 0
        ViewStyle = vsReport
        OnResize = ListViewAdvancedResize
      end
    end
    object TabGroups: TTabSheet
      Caption = 'Groups'
      ImageIndex = 1
      object ListViewGroups: TGroupListViewEx
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 382
        Height = 311
        Align = alClient
        Columns = <
          item
            Caption = 'Group name'
            Width = 220
          end
          item
            Caption = 'State'
            Width = 110
          end
          item
            Caption = 'Flags'
            Width = 120
          end>
        FullDrag = True
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        PopupMenu = GroupPopup
        TabOrder = 0
        ViewStyle = vsReport
        OnContextPopup = ListViewGroupsContextPopup
        ColoringItems = True
      end
    end
    object TabPrivileges: TTabSheet
      Caption = 'Privileges'
      ImageIndex = 2
      object ListViewPrivileges: TPrivilegesListViewEx
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 382
        Height = 311
        Align = alClient
        Columns = <
          item
            Caption = 'Privilege name'
            Width = 180
          end
          item
            Caption = 'State'
            Width = 110
          end
          item
            Caption = 'Description'
            Width = 220
          end
          item
            Alignment = taCenter
            Caption = 'LUID'
            Width = 40
          end>
        FullDrag = True
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        PopupMenu = PrivilegePopup
        TabOrder = 0
        ViewStyle = vsReport
        OnContextPopup = ListViewPrivilegesContextPopup
        ColoringItems = True
      end
    end
    object TabRestricted: TTabSheet
      Caption = 'Restricted SIDs'
      ImageIndex = 3
      object ListViewRestricted: TGroupListViewEx
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 382
        Height = 311
        Align = alClient
        Columns = <
          item
            Caption = 'User or Group'
            Width = 220
          end
          item
            Caption = 'State'
            Width = 110
          end
          item
            Caption = 'Flags'
            Width = 120
          end>
        FullDrag = True
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        ColoringItems = True
        Source = gsRestrictedSIDs
      end
    end
  end
  object ButtonClose: TButton
    Left = 323
    Top = 350
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 0
    OnClick = DoCloseForm
  end
  object ComboBoxView: TComboBox
    Left = 3
    Top = 352
    Width = 158
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akBottom]
    ItemIndex = 0
    TabOrder = 2
    Text = 'Resolve users and groups'
    OnChange = ChangedView
    Items.Strings = (
      'Resolve users and groups'
      'Show SIDs')
  end
  object ImageList: TImageList
    Left = 167
    Top = 307
  end
  object PrivilegePopup: TPopupMenu
    Left = 295
    Top = 307
    object MenuPrivEnable: TMenuItem
      Caption = 'Enable'
      ShortCut = 16453
      OnClick = ActionPrivilegeEnable
    end
    object MenuPrivDisable: TMenuItem
      Caption = 'Disable'
      ShortCut = 16452
      OnClick = ActionPrivilegeDisable
    end
    object MenuPrivRemove: TMenuItem
      Caption = 'Remove'
      ShortCut = 46
      OnClick = ActionPrivilegeRemove
    end
  end
  object GroupPopup: TPopupMenu
    Left = 231
    Top = 307
    object MenuGroupEnable: TMenuItem
      Caption = 'Enable'
      ShortCut = 16453
      OnClick = ActionGroupEnable
    end
    object MenuGroupDisable: TMenuItem
      Caption = 'Disable'
      ShortCut = 16452
      OnClick = ActionGroupDisable
    end
    object MenuGroupReset: TMenuItem
      Caption = 'Reset all'
      ShortCut = 16466
      OnClick = ActionGroupReset
    end
  end
end
