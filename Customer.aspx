<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

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
        <h1>Customer Registration / Detail Updation</h1>
        <br />
        <div class="custinfo">
<asp:BulletedList ID="BulletedList1" runat="server" ForeColor="Tomato">
                <asp:ListItem>Kindly fill all the fields to register yourself.</asp:ListItem>
                <asp:ListItem>Kindly Enter the account name for which you want to update the details.</asp:ListItem>
                <asp:ListItem>Enter the new values to update, Re-enter the old ones to keep them same.</asp:ListItem>
                <asp:ListItem>Enter the Account name, Height and Weight for the account, which you want to Delete.</asp:ListItem>
            </asp:BulletedList>
        </div>
        <br><br>
        <div class="custinfo">
            
            <br />
            <br />
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="textBox_name" runat="server" Height="21px" Width="181px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br/> <br/>

            Address Line 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea id="text_Area_al1" maxlength="50" rows="3" runat="server"></textarea><br/><br/>

            Address Line 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea id="text_Area_al2" maxlength="50" rows="3" runat="server"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br/><br/>

            Height:&nbsp;(in m)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="textBox_height" runat="server" class="content" Height="21px" Width="181px"></asp:TextBox>
            <br />
            <br />
            Weight:&nbsp;(in kg)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="textBox_weight" runat="server" class="content" Height="21px" Width="181px"></asp:TextBox>
            <br />
            <br/>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Details" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete Account" class="content" Height="35px" Width="157px" Font-Bold="False" Font-Names="Constantia" ForeColor="White" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/>
            
        </div>
    </div>
    </form>
                <canvas id="bg"> </canvas>
</body>
</html>

