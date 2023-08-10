Attribute VB_Name = "Module1"
Option Explicit

Public Sub GetVertices()

' Gets the xy values for all the vertices in a polygon layer
  Dim pDoc As IMxDocument
  Dim pFLayer As IFeatureLayer
  Dim pFc As IFeatureClass
  Dim pCur As IFeatureCursor
  Dim pPoly As IPointCollection
  Dim pFeat As IFeature
  Dim pFeatureSelection As IFeatureSelection
  Dim pEnumVertices As IEnumVertex
  Dim outIndex As Long
  Dim verIndex As Long
  Dim pPoint As IPoint
  Dim i As Integer
  Dim FileName As String
  
  Set pDoc = ThisDocument

' Open Text file to write X-Y Coordinates to - change this to write to another location
  FileName = "F:\VertexPoints_tmp.txt"
  Dim Fn As Integer
  Fn = FreeFile
  Open FileName For Output As Fn

' Get the selected layer and make sure it's a polygon feature class
  If Not pDoc.SelectedLayer Is Nothing Then
    Set pFLayer = pDoc.SelectedLayer
    Set pFc = pFLayer.FeatureClass
    If Not pFc.ShapeType = esriGeometryPolygon Then
      MsgBox "This tools only works on polygons", vbExclamation + vbOKOnly + vbApplicationModal + vbMsgBoxSetForeground, "SGT Custom Tools"
      Close Fn
      Kill FileName
      Exit Sub
    End If
  Else
    MsgBox "Please select a polygon layer", vbExclamation + vbOKOnly + vbApplicationModal + vbMsgBoxSetForeground, "SGT Custom Tools"
    Close Fn
    Kill FileName
    Exit Sub
  End If

  Set pFeatureSelection = pDoc.SelectedLayer

  If pFeatureSelection.SelectionSet.count = 0 Then
    MsgBox "Please select at least 1 Polygon", vbExclamation + vbOKOnly + vbApplicationModal + vbMsgBoxSetForeground, "SGT Custom Tools"
    Close Fn
    Kill FileName
    Exit Sub
  End If

  Dim pEnumFeature As IEnumFeature
  Set pEnumFeature = pDoc.FocusMap.FeatureSelection
  
  Dim pFeature As IFeature
  Dim count As Integer

  Set pFeature = pEnumFeature.Next

  Do Until (pFeature Is Nothing)

'   Get a cursor that contains all the features in the layer
'   Loop through all the features in the selected layer and return the xy values for the vertices
    Set pPoly = pFeature.Shape
    Set pEnumVertices = pPoly.EnumVertices
    
'   Loop through the polygon vertices and get the xy values
    For i = 0 To pPoly.PointCount - 2
      pEnumVertices.Next pPoint, outIndex, verIndex
      Print #1, pPoint.X & " " & pPoint.Y & " ";
    Next i
    Print #1,
    
    Set pFeature = pEnumFeature.Next
   
  Loop
    
   Close Fn

End Sub

