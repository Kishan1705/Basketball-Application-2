<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="Basketball_Application_2.Modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
ul {
  list-style-type: none;
  margin: -10px;
  padding: 0;
  overflow: hidden;
  background-color: #111;
  align-content:center;

}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
}

li a:hover:not(.active) {
  background-color: #1c6280;
}

.active {
  background-color: #33AEE3;


}



.Logo{

    padding-top:10px;
    padding-bottom:20px;
}



</style>
        <title></title>
</head>
    <body>

<ul>
    <div class  ="Logo">
  <li><a href="WebForm1.aspx"> <img src="Images/Sky-Sport-Breakers-Logo-White.png" style="width:61.24px;height:22.7px; "/></a></li>
  <li><a href="Players.aspx">Players</a></li>      
  <li><a href="WebForm1.aspx">Register</a></li>
  <li style="float:right"><a class="active" href="LogInPage.aspx">Sign In</a></li>

    </div>
</ul>

</body>
</head>

<body>
    <form id="form1" runat="server">
        <br />
        <div>
            <asp:HiddenField ID="hfUserID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                      <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                      <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                        <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click1" />
                         
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblsuccessmessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblerrormessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("UserID") %>' OnClick="lnk_OnClick" >View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
