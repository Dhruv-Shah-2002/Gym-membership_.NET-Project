<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Membership.aspx.cs" Inherits="Membership" %>

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
        <h1>Membership</h1>

        <br>
        <div class="custinfo">
<asp:BulletedList ID="BulletedList1" runat="server" ForeColor="Tomato">
                <asp:ListItem Value="Kindly Select the Customer ID for which you want to update the details.">Kindly Select the Customer ID for which you want to update the details.</asp:ListItem>
                <asp:ListItem>Select the new values to update, Re-enter the old ones to keep them same.</asp:ListItem>
                <asp:ListItem Value="Select the Customer ID for which, you want to Cancel the membership.">Select the Customer ID for which, you want to Cancel the membership.</asp:ListItem>
            </asp:BulletedList>
        </div>
        <br><br>
        <div class="custinfo">
            Customer ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            <asp:DropDownList ID="DropDownList3" runat="server" class="content" Height="18px" Width="130px">
                <asp:ListItem>---</asp:ListItem>
            </asp:DropDownList>
            <br/> <br/>

            Customer Tenure:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" class="content" Height="19px" Width="130px">
                <asp:ListItem Selected="True">1 Month</asp:ListItem>
                <asp:ListItem>3 Months</asp:ListItem>
                <asp:ListItem>6 Months</asp:ListItem>
                <asp:ListItem>9 Months</asp:ListItem>
                <asp:ListItem>12 Months</asp:ListItem>
            </asp:DropDownList>
            <br/><br/>

            Facility:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" class="content" Height="19px" Width="160px">
                <asp:ListItem Selected="True">Group Training</asp:ListItem>
                <asp:ListItem>Personal Training</asp:ListItem>
            </asp:DropDownList>
            <br/><br/>

            Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" class="content" Height="25px" Width="130px"></asp:TextBox>
            <br/>
            <br/>
            <br/>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Become A Member!" class="content" Height="35px" Width="212px" Font-Bold="False" Font-Names="Constantia" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Refresh"  class="content" Height="35px" Width="130px" Font-Names="Constantia" ForeColor="White" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update Details" class="content" Height="35px" Width="212px" Font-Bold="False" Font-Names="Constantia" ForeColor="White" />
            <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" OnClick="Button4_Click" Text="Cancel Membership" class="content" Height="35px" Width="212px" Font-Bold="False" Font-Names="Constantia" ForeColor="White" />
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
