<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim i, j
        For i = 1 To 9
            Dim rowabc As New TableRow()
            For j = 1 To 9
                Dim cellabc As New TableCell()
                cellabc.Text = i * j
                rowabc.Cells.Add(cellabc)
            Next
            Table1.Rows.Add(rowabc)
        Next
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
    <div>
    
        <asp:Table ID="Table1" runat="server" BackColor="#FFFFCC" BorderColor="#3333FF" 
            BorderStyle="Solid" GridLines="Both">
        </asp:Table>
    
    </div>
    </form>
</body>
</html>
