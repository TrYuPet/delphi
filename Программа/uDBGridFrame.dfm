object DBGridFrame: TDBGridFrame
  Left = 0
  Top = 0
  Width = 447
  Height = 504
  DoubleBuffered = False
  ParentDoubleBuffered = False
  ParentShowHint = False
  ShowHint = True
  TabOrder = 0
  object DBGrid: TsDBGrid
    Left = 0
    Top = 0
    Width = 447
    Height = 504
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridDrawColumnCellDefault
    SkinData.SkinSection = 'EDIT'
  end
end
