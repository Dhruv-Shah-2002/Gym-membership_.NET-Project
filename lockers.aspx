<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lockers.aspx.cs" Inherits="lockers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <script type="module" src="main.js"></script>
</head>
<body>
     <nav id="nav1">
        <ul class="menu">
            <li class="menucontent"><a href="HomePage.aspx">Home</a></li>
            <li class="menucontent"><a href="Customer.aspx">Customer</a></li>
            <li class="menucontent"><a href="Instructor.aspx">Instructor</a></li>
            <li class="menucontent"><a href="Membership.aspx">Membership</a></li>
            <li class="menucontent"><a href="Equipment.aspx">Equipment</a></li>
            <li class="menucontent"><a href="Lockers.aspx">Lockers</a></li>
            <li class="menucontent"><a href="PrintDetails.aspx">Print Details</a></li>
            <li class="menucontent"><a href="About.aspx">About</a></li>
        </ul>
    </nav>
    <form id="form1" runat="server">
        <div class="member"  id="test">
            <h1>Locker Details</h1>
            <p>&nbsp;</p>
        <div class="custinfo">
        <p>
            <asp:Label ID="Label2" runat="server" Text="Membership ID:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="63px" DataSourceID="lockersdb" DataTextField="MemID" DataValueField="MemID">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="lockersdb" runat="server" ConnectionString="<%$ ConnectionStrings:GymConnection %>" SelectCommand="SELECT [MemID] FROM [membership]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Locker No:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtlock" runat="server" Height="22px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncreate" runat="server" OnClick="btnCreate_Click" Text="Create Locker" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White"/>
        </p>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete Locker" OnClick="btnDelete_Click" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White"/>
        </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Locker" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White"/>
        </p>
        </form>
    <canvas id="bg"> </canvas>
</body>
</html>
