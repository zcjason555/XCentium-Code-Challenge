<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XCentium_Code_Challenge.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <Center>
                <h1> XCentium  Login Page_Jason Chen</h1>
                <hr />
                <fieldset style="border:1.5px solid; board-radius:35px; text-align:left;padding-left:35px; height:100px;width:300px;">
            <table>
                <tr>
                    <td>Username:</td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="Txtpwd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ButLogin" runat="server" Text="Login" OnClick="ButLogin_Click1" /></td>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username or Password" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>
                    </fieldset>
                <Center>
        </div>
    </form>
</body>
</html>
