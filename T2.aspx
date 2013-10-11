<%@ Page Language="VB" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs)
       MultiView1.ActiveViewIndex = Menu1.SelectedValue
    End Sub
    ' 基本
    Protected Sub MultiView1_ActiveViewChanged(ByVal sender As Object, ByVal e As System.EventArgs)
      
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("http://www.ntcu.edu.tw/newweb/index.htm")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim generator As New Random
        Dim randomValue As Integer
        Dim i, j
        i = T1.Text
        j = T2.Text
        If i < j Then
            A.Text = generator.Next(CInt(T1.Text), CInt(T2.Text))
       
            B.Text = generator.Next(CInt(T1.Text), CInt(T2.Text))
        Else
            A.Text = generator.Next(CInt(T2.Text), CInt(T1.Text))
       
            B.Text = generator.Next(CInt(T2.Text), CInt(T1.Text))
        End If
        '這理是註解

    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs)
        If Convert.ToInt32(T3.Text) = (CInt(A.Text) + CInt(B.Text)) Then
            D.Text = "完全正確~想必你下了許多苦心歐~"
        Else
            D.Text = "再想想看，助教很期待你的成長歐~"
        End If
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As System.EventArgs)

    End Sub

    Protected Sub T3_TextChanged(sender As Object, e As System.EventArgs)

    End Sub

    
    Protected Sub Button4_Click(sender As Object, e As System.EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="height: 251px">
    <form id="form1" runat="server">
    <div>
    
        102-10-07<br />
        課堂測試作業<br />
        <br />
        <br />
        <asp:Menu ID="Menu1" runat="server" onmenuitemclick="Menu1_MenuItemClick" 
            Orientation="Horizontal" BackColor="#E3EAEB" DynamicHorizontalOffset="2" 
            Font-Bold="True" Font-Italic="False" Font-Names="Verdana" Font-Overline="True" 
            Font-Size="XX-Large" ForeColor="#666666" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem Text="中教大 - 首頁" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="線上數學習系統" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="9*9 乘法表" Value="2" NavigateUrl="BIT101104_99.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
    
        <asp:MultiView ID="MultiView1" runat="server" 
            onactiveviewchanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View2" runat="server">
                <br />
                102-10-07 課程註解：<br />
                　　This is ViEw 2. 接收序號值 = 0 設計格式中，MULTI框裡，最上面吃0，依序往下吃1.2.3.4<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="72px" onclick="Button1_Click" 
                    Text="點此出發至中教大" Width="224px" style="text-align: center" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <br />
                102-10-07 課程註解：<br /> 　　This is view 3 !!接收序號=1 
                第三個拉的，設計中會看的到第幾個拉進來，後發先至，最後拉著在最上吃序號0<br />

                <br />
                　　出題範圍：<asp:TextBox ID="T1" runat="server" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                &nbsp;到 
                <asp:TextBox ID="T2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="點我啟動出題" />
                <br />
                　　<asp:Label ID="A" runat="server" Text="A"></asp:Label>
                &nbsp;+
                <asp:Label ID="B" runat="server" Text="B"></asp:Label>
                &nbsp;=
                <asp:TextBox ID="T3" runat="server" ontextchanged="T3_TextChanged"></asp:TextBox>
                &nbsp;<asp:Button ID="Button3" runat="server" Text="eg1.點我啟動核對,保留資料" 
                    onclick="Button3_Click" />
                &nbsp;
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="eg2.點我啟動核對框，清空資料" />
                <br />
                　　顯示結果 _
                <asp:Label ID="D" runat="server"></asp:Label>
                <br />
                <br />

                　　註1：設定判斷式，避免範圍錯誤，當先輸入大項在輸入小項時。負數可運算，同數可運算。<br /> 　　　　&nbsp; eg: 
                出題範圍先輸入5，再輸入4，範例會崩潰。本作業已修正。<br /> 
                　　註2：延伸判斷，當未輸入值時，顯示不同提示窗格，防呆。<br /> 　　註3：計數器<br />

             
                <br />

            </asp:View>
            <asp:View ID="View4" runat="server">
                <br />
                102-10-07 課程註解：<br /> 　　VIEW 4
            </asp:View>
            <asp:View ID="View1" runat="server">
                This is view 1 ~
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
