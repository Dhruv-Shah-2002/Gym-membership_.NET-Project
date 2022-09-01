<%@ Page Language="C#" AutoEventWireup="true" CodeFile="equipment.aspx.cs" Inherits="equipment" %>

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
            <h1>Equipment Details</h1>
            <br />
            <div class="custinfo">
            <asp:Label ID="Label2" runat="server" Text="Equipment ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtbox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtbox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Availiability:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtbox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Company:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtbox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Condition Value:"></asp:Label>
                &nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtbox5" runat="server"></asp:TextBox>
            <br />
                <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White"/>
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White"/>
&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White"/>
            <br />
            <br />
            <asp:Label ID="confirm" runat="server"></asp:Label>
            <br />
        </div>
    </form>
    <canvas id="bg"> </canvas>
</body>
</html>