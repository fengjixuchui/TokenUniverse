object DialogRun: TDialogRun
  Left = 0
  Top = 0
  Caption = 'Run program...'
  ClientHeight = 555
  ClientWidth = 331
  Color = clBtnFace
  Constraints.MinHeight = 594
  Constraints.MinWidth = 347
  DoubleBuffered = True
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 325
    Height = 472
    Margins.Top = 52
    Margins.Bottom = 31
    ActivePage = TabParams
    Align = alClient
    TabOrder = 2
    object TabParams: TTabSheet
      Caption = 'Parameters'
      ImageIndex = 4
      object LabelDesktop: TLabel
        Left = 3
        Top = 235
        Width = 43
        Height = 13
        Caption = 'Desktop:'
      end
      object LabelLogonFlags: TLabel
        Left = 161
        Top = 284
        Width = 59
        Height = 13
        Caption = 'Logon flags:'
      end
      object LabelShowMode: TLabel
        Left = 4
        Top = 284
        Width = 71
        Height = 13
        Caption = 'Window mode:'
      end
      object LabelMethod: TLabel
        Left = 3
        Top = 7
        Width = 40
        Height = 13
        Caption = 'Method:'
      end
      object Label1: TLabel
        Left = 3
        Top = 85
        Width = 76
        Height = 13
        Caption = 'Parent process:'
      end
      object EditParams: TLabeledEdit
        Left = 4
        Top = 156
        Width = 307
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'Parameters:'
        TabOrder = 0
      end
      object GroupBoxFlags: TGroupBox
        Left = 4
        Top = 328
        Width = 307
        Height = 113
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Flags: '
        TabOrder = 5
        object CheckBoxInherit: TCheckBox
          Left = 11
          Top = 24
          Width = 134
          Height = 17
          Hint = 'Allow the new process inherit handles from the parent process'
          Caption = 'Inherit handles'
          TabOrder = 0
        end
        object CheckBoxSuspended: TCheckBox
          Left = 157
          Top = 24
          Width = 134
          Height = 17
          Hint = 'Do not let the process start immediately'
          Caption = 'Create suspended'
          TabOrder = 4
        end
        object CheckBoxBreakaway: TCheckBox
          Left = 11
          Top = 68
          Width = 134
          Height = 17
          Hint = 'Start the new process outside the parent'#39's job object if allowed'
          Caption = 'Breakaway from job'
          TabOrder = 2
        end
        object CheckBoxInheritConsole: TCheckBox
          Left = 11
          Top = 46
          Width = 134
          Height = 17
          Hint = 'Create a new console instead of inheriting one from the parent'
          Caption = 'Inherit console'
          TabOrder = 1
        end
        object CheckBoxRunas: TCheckBox
          Left = 157
          Top = 46
          Width = 134
          Height = 15
          Hint = 'Ask User Account Control for elevation'
          Caption = 'Request elevation'
          Enabled = False
          TabOrder = 5
        end
        object CheckBoxRunAsInvoker: TCheckBox
          Left = 157
          Top = 90
          Width = 134
          Height = 17
          Hint = 
            'Configure __COMPAT_LAYER environment variable to enable/disable ' +
            'RunAsInvoker compatibility mechanism'
          AllowGrayed = True
          Caption = 'Run as invoker'
          State = cbGrayed
          TabOrder = 7
        end
        object CheckBoxForceBreakaway: TCheckBox
          Left = 11
          Top = 90
          Width = 134
          Height = 15
          Hint = 
            'Allows the new process to breakaway from all parent jobs regardl' +
            'ess of their flags. Requires the Tcb privilege.'
          Caption = 'Force breakaway'
          Enabled = False
          TabOrder = 3
        end
        object CheckBoxIgnoreElevation: TCheckBox
          Left = 158
          Top = 68
          Width = 133
          Height = 15
          Hint = 'Force starting the process without elevation'
          Caption = 'Ignore elevation'
          Enabled = False
          TabOrder = 6
        end
      end
      object ComboBoxLogonFlags: TComboBox
        Left = 162
        Top = 300
        Width = 149
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 4
        Text = 'Default'
        Items.Strings = (
          'Default'
          'Logon with profile'
          'Network only credentials')
      end
      object EditDir: TLabeledEdit
        Left = 4
        Top = 204
        Width = 307
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'Current directory:'
        TabOrder = 1
      end
      object ComboBoxDesktop: TComboBox
        Left = 4
        Top = 254
        Width = 307
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        Text = 'WinSta0\Default'
      end
      object ComboBoxShowMode: TComboBox
        Left = 4
        Top = 300
        Width = 149
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 3
        Text = 'Show normal'
        Items.Strings = (
          'Hide'
          'Show normal'
          'Show minimized'
          'Show maximized')
      end
      object ComboMethod: TComboBox
        Left = 3
        Top = 24
        Width = 306
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemIndex = 0
        TabOrder = 6
        Text = 'CreateProcessAsUser'
        OnChange = ChangedExecMethod
        Items.Strings = (
          'CreateProcessAsUser'
          'CreateProcessWithToken'
          'CreateProcessWithLogon'
          'CreateProcess via code injection'
          'RtlCreateUserProcess'
          'RtlCreateUserProcessEx'
          'NtCreateUserProcess'
          'NtCreateProcessEx'
          'ShellExecuteEx'
          'ShellExecute via IShellDispatch'
          'IDesktopAppXActivator'
          'WdcRunTaskAsInteractiveUser'
          'WMI')
      end
      object ButtonChooseParent: TButton
        Left = 226
        Top = 102
        Width = 83
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Choose'
        DropDownMenu = PopupClearParent
        Style = bsSplitButton
        TabOrder = 7
        OnClick = ButtonChooseParentClick
      end
      object EditParent: TEdit
        Left = 3
        Top = 104
        Width = 217
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 8
        Text = '<not specified>'
      end
      object LinkLabelToken: TLinkLabel
        Left = 3
        Top = 59
        Width = 292
        Height = 14
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Using token: <not specified>'
        TabOrder = 9
        OnLinkClick = LinkLabelTokenLinkClick
      end
    end
    object Isolation: TTabSheet
      Caption = 'Isolation'
      ImageIndex = 1
      object LabelAppContainer: TLabel
        Left = 3
        Top = 59
        Width = 70
        Height = 13
        Caption = 'AppContainer:'
      end
      object LabelProtection: TLabel
        Left = 3
        Top = 252
        Width = 53
        Height = 13
        Caption = 'Protection:'
      end
      object LabelAppId: TLabel
        Left = 3
        Top = 7
        Width = 81
        Height = 13
        Caption = 'AppUserModeId:'
      end
      object ButtonAC: TButton
        Left = 227
        Top = 76
        Width = 83
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Choose'
        DropDownMenu = PopupClearAC
        Style = bsSplitButton
        TabOrder = 0
        OnClick = ButtonACClick
      end
      object EditAppContainer: TEdit
        Left = 3
        Top = 78
        Width = 217
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
        Text = 'No'
      end
      object CheckBoxLPAC: TCheckBox
        Left = 3
        Top = 104
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Low Privileged AppContainer'
        Enabled = False
        TabOrder = 2
      end
      object GroupBoxChildFlags: TGroupBox
        Left = 3
        Top = 138
        Width = 306
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Child Process Policy: '
        TabOrder = 3
        object CheckBoxChildRestricted: TCheckBox
          Left = 16
          Top = 24
          Width = 273
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Restricted (block child processes)'
          TabOrder = 0
        end
        object CheckBoxChildUnlessSecure: TCheckBox
          Left = 16
          Top = 47
          Width = 273
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Restricted unless secure'
          TabOrder = 1
        end
        object CheckBoxChildOverride: TCheckBox
          Left = 16
          Top = 70
          Width = 273
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Override'
          TabOrder = 2
        end
      end
      object ComboBoxProtection: TComboBox
        Left = 62
        Top = 249
        Width = 247
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemIndex = 0
        TabOrder = 4
        Text = 'Not specified'
        Items.Strings = (
          'Not specified'
          'Light (CodeGen)'
          'Light (Antimalware)'
          'Light (StoreApp)'
          'Light (LSA)'
          'Light (Windows)'
          'Light (WinTcb)'
          'Full (Authenticode)'
          'Full (Windows)'
          'Full (WinTcb)')
      end
      object EditAppId: TEdit
        Left = 3
        Top = 26
        Width = 306
        Height = 21
        Hint = '{PackageFamilyName}!{AppId}'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        TextHint = '{PackageFamilyName}!{AppId}'
      end
    end
    object Manifest: TTabSheet
      Caption = 'Manifest'
      ImageIndex = 2
      object LabelManifestDpi: TLabel
        Left = 19
        Top = 248
        Width = 77
        Height = 13
        Caption = 'DPI Awareness:'
        Enabled = False
      end
      object RadioButtonManifestNone: TRadioButton
        Left = 3
        Top = 8
        Width = 311
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'No registration (unless already included by Win32 API)'
        Enabled = False
        TabOrder = 0
      end
      object RadioButtonManifestEmbedded: TRadioButton
        Left = 3
        Top = 31
        Width = 311
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Use embedded manifest'
        Checked = True
        Enabled = False
        TabOrder = 1
        TabStop = True
      end
      object RadioButtonManifestExternalExe: TRadioButton
        Left = 3
        Top = 54
        Width = 311
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Use embedded manifest from another executable:'
        Enabled = False
        TabOrder = 2
      end
      object EditManifestExecutable: TEdit
        Left = 19
        Top = 77
        Width = 286
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 3
        TextHint = 'A path to a DLL on an EXE file'
        OnEnter = EditManifestExecutableEnter
      end
      object RadioButtonManifestExternal: TRadioButton
        Left = 3
        Top = 104
        Width = 311
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Use external manifest:'
        Enabled = False
        TabOrder = 4
      end
      object EditManifestFile: TEdit
        Left = 19
        Top = 127
        Width = 286
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 5
        TextHint = 'A path to an XML manifest file'
        OnEnter = EditManifestFileEnter
      end
      object RadioButtonManifestCustom: TRadioButton
        Left = 3
        Top = 154
        Width = 311
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Use custom manifest:'
        Enabled = False
        TabOrder = 6
      end
      object CheckBoxManifestThemes: TCheckBox
        Left = 19
        Top = 177
        Width = 286
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Runtime themes'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 7
        OnEnter = CheckBoxManifestThemesEnter
      end
      object ComboBoxManifestDpi: TComboBox
        Left = 19
        Top = 267
        Width = 286
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        ItemIndex = 4
        TabOrder = 10
        Text = 'Per Monitor v2'
        OnEnter = CheckBoxManifestThemesEnter
        Items.Strings = (
          'None'
          'Unaware'
          'System'
          'Per Monitor'
          'Per Monitor v2')
      end
      object CheckBoxManifestGdiScaling: TCheckBox
        Left = 19
        Top = 200
        Width = 295
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'GDI Scaling'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 8
        OnEnter = CheckBoxManifestThemesEnter
      end
      object CheckBoxManifestLongPaths: TCheckBox
        Left = 19
        Top = 223
        Width = 295
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Long Path Aware'
        Enabled = False
        TabOrder = 9
        OnEnter = CheckBoxManifestThemesEnter
      end
    end
  end
  object ButtonClose: TButton
    Left = 253
    Top = 526
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    ModalResult = 8
    TabOrder = 4
    OnClick = ButtonCloseClick
  end
  object ButtonRun: TButton
    Left = 172
    Top = 526
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Run'
    Default = True
    TabOrder = 3
    OnClick = ButtonRunClick
  end
  object EditExe: TLabeledEdit
    Left = 8
    Top = 23
    Width = 239
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = 'Executable:'
    TabOrder = 0
  end
  object ButtonBrowse: TButton
    Left = 253
    Top = 21
    Width = 71
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Browse'
    DropDownMenu = PopupMenuExe
    Style = bsSplitButton
    TabOrder = 1
    OnClick = ButtonBrowseClick
  end
  object cbxOpenToken: TCheckBox
    Left = 8
    Top = 530
    Width = 158
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Open token afterwards'
    TabOrder = 5
  end
  object PopupMenuExe: TPopupMenu
    Left = 271
    Top = 195
    object MenuCmd: TMenuItem
      Caption = 'Command Prompt'
      OnClick = MenuCmdClick
    end
    object MenuSelf: TMenuItem
      Caption = 'Token Universe'
      OnClick = MenuSelfClick
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 
      'Executable files (*.exe;*.com;*.scr)|*.exe;*.com;*.scr|All files' +
      ' (*.*)|*'
    Options = [ofEnableSizing]
    Left = 199
    Top = 195
  end
  object PopupClearParent: TPopupMenu
    Left = 271
    Top = 147
    object MenuClearParent: TMenuItem
      Caption = 'Clear'
      OnClick = MenuClearParentClick
    end
  end
  object PopupClearAC: TPopupMenu
    Left = 263
    Top = 251
    object MenuClearAC: TMenuItem
      Caption = 'Clear'
      OnClick = MenuClearACClick
    end
  end
end
