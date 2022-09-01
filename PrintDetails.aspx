<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintDetails.aspx.cs" Inherits="PrintDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: radial-gradient(circle at center, white, rgba(113, 129, 191, 0.5));
        }

        h1, h2 {
            background-color: #e6f2ff;
            color: tomato;
            margin: auto;
            width: fit-content;
            border-radius: 5px;
            padding: 5px;
        }

        /*css for menu*/
        .menucontent, a {
            color: #fff;
            text-decoration: none;
            font-size: 20px;
            display: block;
            padding: 8px;
            background-color: #808080;
        }

        li a:hover {
            background-color: #5694f1;
        }

        .menucontent {
            float: left;
        }

        .menu {
            list-style-type: none;
            background-color: #808080;
            overflow: hidden;
        }


        /*Button css start*/
        .Printbtn {
            display:flex;
            justify-content:space-around;
            background-color:#e6f2ff;
            border-radius:10px;
            height:70px;
            margin:30px;
        }

        #Button1, #Button2, #Button3, #Button4, #Button5 {
            background-color: #f98a76;
            font-size: 16px;
            border: 2px solid snow;
            padding:10px;
            margin:10px;
        }

        #Button1:hover, #Button2:hover, #Button3:hover, #Button4:hover, #Button5:hover {
            background-color: tomato;
        }

        /*CSS For GridView*/
        #p {
            margin:auto;
            background-color:#e6f2ff;
            border-radius:10px;
            width:fit-content;
        }
        #GridView1 {
            margin:auto;
        }

        /*For 3d background canvas css*/
        #bg {
            background-position: center;
            background-size: cover;
            z-index: -1;
            position: fixed;
            top: 0;
            left: 0;
        }
    </style>

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
        <div class="member" id="test">
            <h1>Membership</h1>

            <br>
            <br>
            <div class="Printbtn">
                <asp:Button ID="Button1" runat="server" Font-Names="Constantia" ForeColor="White" Text="Customers" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Font-Names="Constantia" ForeColor="White" Text="Instructors" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Font-Names="Constantia" ForeColor="White" OnClick="Button3_Click" Text="Members" />
                <asp:Button ID="Button4" runat="server" Font-Names="Constantia" ForeColor="White" Text="Equipment" OnClick="Button4_Click" />
                <asp:Button ID="Button5" runat="server" Font-Names="Constantia" ForeColor="White" Text="Lockers" OnClick="Button5_Click" />
                <br />
                <br>
            </div>

        </div>

    <canvas id="bg"></canvas>
        <p id="gridback">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="492px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
    </form>

    </body>
</html>
