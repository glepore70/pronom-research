VERSION 5.00
Begin VB.Form frmJoin 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Join"
   ClientHeight    =   2025
   ClientLeft      =   1125
   ClientTop       =   1560
   ClientWidth     =   5910
   HelpContextID   =   2016131
   Icon            =   "JOIN.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2025
   ScaleWidth      =   5910
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdClearJoins 
      Caption         =   "C&lear All Joins"
      Height          =   372
      Left            =   2040
      MaskColor       =   &H00000000&
      TabIndex        =   7
      Top             =   1560
      Width           =   1812
   End
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Height          =   372
      Left            =   3960
      MaskColor       =   &H00000000&
      TabIndex        =   6
      Top             =   1560
      Width           =   1812
   End
   Begin VB.ListBox lstFields2 
      Height          =   1035
      Left            =   3960
      TabIndex        =   4
      Top             =   300
      Width           =   1815
   End
   Begin VB.ListBox lstFields1 
      Height          =   1035
      Left            =   2040
      TabIndex        =   3
      Top             =   300
      Width           =   1815
   End
   Begin VB.CommandButton cmdAddJoin 
      Caption         =   "&Add Join to Query"
      Enabled         =   0   'False
      Height          =   372
      Left            =   120
      MaskColor       =   &H00000000&
      TabIndex        =   1
      Top             =   1560
      Width           =   1812
   End
   Begin VB.ListBox lstTables 
      Height          =   1035
      Left            =   120
      MultiSelect     =   1  'Simple
      TabIndex        =   0
      Top             =   300
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Alignment       =   2  'Center
      Caption         =   "Select Fields to Join on: "
      Height          =   195
      Index           =   1
      Left            =   2040
      TabIndex        =   5
      Top             =   45
      Width           =   3735
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Select Table Pair: "
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   2
      Top             =   45
      Width           =   1290
   End
End
Attribute VB_Name = "frmJoin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'>>>>>>>>>>>>>>>>>>>>>>>>
Const FORMCAPTION = "Join Tables"
Const Label1 = "Select Table Pair:"
Const Label2 = "Select Fields to Join on:"
Const BUTTON1 = "&Add Join to Query"
Const BUTTON2 = "C&lear All Joins"
Const BUTTON3 = "&Close"
'>>>>>>>>>>>>>>>>>>>>>>>>


Dim mtblTable1 As String
Dim mtblTable2 As String

Private Sub cmdAddJoin_Click()
  Dim i As Integer

  frmQuery.lstJoinFields.AddItem AddBrackets(mtblTable1) & "." & AddBrackets(lstFields1) & "=" & AddBrackets(mtblTable2) & "." & AddBrackets(lstFields2)

  For i = 0 To lstTables.ListCount - 1
    lstTables.Selected(i) = False
  Next
End Sub


Private Sub lstFields1_Click()
  cmdAddJoin.Enabled = Len(lstFields2.Text) > 0
End Sub

Private Sub lstFields2_Click()
  cmdAddJoin.Enabled = Len(lstFields1.Text) > 0
End Sub

Private Sub cmdClearJoins_Click()
  frmQuery.lstJoinFields.Clear
End Sub

Private Sub cmdClose_Click()
  Unload Me
End Sub

Private Sub lstTables_Click()
  Dim i As Integer
  Dim tblTableDefObj As TableDef
  Dim fld As Field

  mtblTable1 = vbNullString
  mtblTable2 = vbNullString

  For i = 0 To lstTables.ListCount - 1
    If lstTables.Selected(i) Then
      If Len(mtblTable1) = 0 Then
        mtblTable1 = lstTables.List(i)
      Else
        mtblTable2 = lstTables.List(i)
        Exit For
      End If
    End If
  Next
  
  If Len(mtblTable2) = 0 Then Exit Sub   'only one table selected

  Set tblTableDefObj = gdbCurrentDB.TableDefs(mtblTable1)
  ListItemNames tblTableDefObj.Fields, lstFields1, True

  Set tblTableDefObj = gdbCurrentDB.TableDefs(mtblTable2)
  ListItemNames tblTableDefObj.Fields, lstFields2, True

End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyF1 And Shift = 0 Then
    DisplayTopic 2016131
  End If
End Sub

Private Sub Form_Load()
  Dim i As Integer

  Me.Caption = FORMCAPTION
  lblLabels(0).Caption = Label1
  lblLabels(1).Caption = Label2
  cmdAddJoin.Caption = BUTTON1
  cmdClearJoins.Caption = BUTTON2
  cmdClose.Caption = BUTTON3

  For i = 0 To frmQuery.lstTables.ListCount - 1
    If frmQuery.lstTables.Selected(i) Then
      lstTables.AddItem frmQuery.lstTables.List(i)
    End If
  Next
  Me.Top = frmMDI.Top + frmQuery.Top + frmQuery.txtCriteria.Top + 1300
  Me.Left = frmQuery.Left + 1500
  
End Sub
