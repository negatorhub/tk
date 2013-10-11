<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim i, j
        Dim da = CInt(a.Text)
        Dim db = CInt(b.Text)


        For i = 1 To da
            Dim tRow As New TableRow()
            For j = 1 To db
                Dim tCell As New TableCell()
                tCell.Text = (i * j)
                tRow.Cells.Add(tCell)
                
                'Response.Write(i & "*" & j & "=" & i * j & " ")
            Next j
            'Response.Write("<br>")
            T1.Rows.Add(tRow)
            
        Next i
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs)
        Response.Redirect("BIT101104_menu.aspx")
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        　　數學自動乘法表<br />
        　　輸入行數<asp:TextBox ID="a" runat="server" Width="50px"></asp:TextBox>
        ，輸入列數<asp:TextBox ID="b" runat="server" Width="54px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="列印" onclick="Button1_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="303px">
        </asp:Panel>
        　　　　　　<asp:Table ID="T1" runat="server" Height="167px" Width="304px" 
            BackColor="#99FFCC" BorderColor="#FF9900" BorderStyle="Ridge" 
            BorderWidth="1px" GridLines="Both">
        </asp:Table>
    
    </div>
    <asp:Button ID="Button2" runat="server" Height="143px" onclick="Button2_Click" 
        Text="回到數位系統頁" Width="304px" />
    </form>
</body>
</html>
