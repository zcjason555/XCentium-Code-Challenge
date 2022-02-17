<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="XCentium_Code_Challenge.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://cdn.pixabay.com/photo/2015/10/29/14/38/web-1012467_1280.jpg");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>
    <center>
    
    <form id="form1" runat="server">
        <asp:Button ID="btnLouout" runat="server" Text="Logout" OnClick="btnLouout_Click" />
    </form>

    </center>

    <div class="hero-image">
        <div class="hero-text">
            <h1 style="font-size:50px">welcome to the home page</h1>
            <asp:Label ID="lblUserDetails" runat="server" Text="Label"></asp:Label>
        </div>
    </div>

</body>
</html>