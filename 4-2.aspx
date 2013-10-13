<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As System.EventArgs)
        Label1.Text = Now.ToString
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)
        Dim T1, T2, T3
        T1 = CInt(TextBox1.Text)
        T2 = CInt(TextBox2.Text)
        T3 = CInt(TextBox3.Text)
        If Page.IsValid Then
            Label2.Text = T1 + T2 + T3
            Label3.Text = (T1 + T2 + T3)/3
        End If

        '記錄整個KEYIN過程，ASP3.5_4-26頁
        Dim UserInput As String
        UserInput = Label2.Text.Replace(" ", "&nbsp;")
        UserInput = Label2.Text.Replace(vbCrLf, "<br />")
        UserInput = "[ " & Now.ToString & " ]<br />" & "總體表現： "  & UserInput & "<br />" & "平均表現： " & Label3.Text
        Label4.Text = "<hr />" & UserInput & Label4.Text
        
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: center; font-size: x-large; font-family: 微軟正黑體">
    <form id="form1" runat="server">
    <div>
    
        <br />
        仙人掌成績處理系統<br />
        現在時間是 
    
     

    
     
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
     

    
        <br />
        現在時區是 中華民國 GMT +7:00<br />
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="CustomValidator"></asp:CustomValidator>
        <br />
        請輸入以下計算<br />
        <br />
        澆水表現分數：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        肥料處理分數：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        育種完成分數：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="啟動計算功能" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="你再乎弄我~就叫馬冏跟你握手" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="請告訴我們您水量控制的分數歐 0~100整數" ForeColor="#FF3300" 
            Type="Integer" MaximumValue="100" MinimumValue="0" Display="Dynamic"></asp:RangeValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="你再乎弄我~就叫馬冏跟你握手"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="請告訴我們您肥料控制的分數歐 0~100整數" ForeColor="#FF6600" 
            Type="Integer" MaximumValue="100" MinimumValue="0" Display="Dynamic"></asp:RangeValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="你再乎弄我~就叫馬冏跟你握手"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="請告訴我們您育種評比的分數歐 0~100整數" 
            ForeColor="#FF6666" MaximumValue="100" MinimumValue="0" Type="Integer" 
            Display="Dynamic"></asp:RangeValidator>
        <br />
        總體表現分數：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        平均表現分數：<asp:Label ID="Label3" 
            runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
