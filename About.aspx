<%@ Page Language="VB" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

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
        <h1>About us</h1>
        <br />
        
        <div class="custinfo">
        <h1>Project Developed by:</h1>
<asp:BulletedList ID="BulletedList1" runat="server" ForeColor="Tomato">
                <asp:ListItem>4. Bilal Ali</asp:ListItem>
                <asp:ListItem>47. Tanmay Nikam</asp:ListItem>
                <asp:ListItem>49. Pranav Patel</asp:ListItem>
                <asp:ListItem>50. Abhishek Pathak</asp:ListItem>
                <asp:ListItem>59. Dhruv Shah</asp:ListItem>
            </asp:BulletedList>
        </div>
    </div>
    </form>
                <canvas id="bg"> </canvas>
</body>
</html>


