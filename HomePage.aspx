<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: radial-gradient(circle at center, white, rgba(113, 129, 191, 0.5));
        }

        h1, h2 {
            background-color:#e6f2ff;
            color:tomato;
            margin:auto;
            width:fit-content;
            border-radius:5px;
            padding:5px;
        }

        .register {
            margin:auto;
            width:fit-content;
        }

        .menucontent,a {
            color:#fff;
            text-decoration:none;
            font-size:20px;
            display:block;
            padding:8px;
            background-color:#808080;
        }

            li a:hover {
                background-color:#5694f1;
            }

        .menucontent {
            float:left;
        }

        .menu {
            list-style-type:none;
            background-color:#808080;
            overflow:hidden;
        }

        .content {
            float:left;
            margin:auto;
            width:fit-content;
            overflow:hidden;
            list-style-type:none;
            }

        .innercontent {
            float:left;
        }

        img {
            width:150px;
            height:150px;
            border-radius:20px;
            margin:30px;
        }
        p {
            margin:30px;
            font-size:20px;
            background-color:#e6f2ff;
            padding:20px;
            border-radius:5px;
            color:#000;
        }

        #registerbtn {
            background-color: tomato;
            color: white;
            padding: 14px 25px;
            text-align: center;
            font-size:20px;
            text-decoration: none;
            margin:auto;
            width:fit-content;
        }
        
        #registerbtn:hover, #registerbtn:active {
            background-color:#f44336;
        }

        /*For 3d background canvas css*/
        #bg {
            background-position:center;
            background-size:cover;
            z-index:-1;
            position:fixed;
            top:0;
            left:0;
        }
     </style>
     <script type="module" src="main.js"></script>
</head>
<body style="height: 526px; background-color:snow">
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
        <br>
        <div>
            <h1>Crushing Rock Gym</h1>
            <br><br>
            <h2>Come, Join us in this venture of fitness</h2>
            <div class="register">
                <ul class="content">
                <li class="innercontent">
                    <img src="customer.png" >
                </li>

                <li class="innercontent">
                    <p>
                        <b>All you need to do is follow these simple steps</b> 
                        <br/>
                        <br/>
                        1. Become a Customer by registering with us<br>
                        2. Become an official member by selecting your priorities and subsequent payment
                        <br/>
                        <br/>
                        <b>That's it, You are now a member of Crushing rock gym</b>
                    </p>
                 </li>
                <li class="innercontent">
                    <img src="membership.jpg" >
                </li>
            </div>


            <br/>
            <br/>
            <div class="register">
                <ul class="content">
                <li class="innercontent">
                    <img src="instructor.jpg" >
                </li>

                <li class="innercontent">
                    <p>
                        <b>What makes this the gym for you?</b> 
                        <br/><br/>
                        1. We offer World-Class instructor dedicated to transform you<br/>
                        2. All the equipment and facilities you will ever need are right here<br/>
                        3. Locker facilities also available to keep your belongings safe!

                        <br/>
                        <br/>
                    </p>
                 </li>
                <li class="innercontent">
                    <img src="equiment1.jpg">
                </li>
                
                <br/>
            </div>

        </div>

         <div style="margin:auto;width:fit-content;">
            <img src="lockers.jpg">
         </div>

        <p style="width:fit-content;margin:auto;">
            <b>So, What are you waiting for?</b>
        </p>
        <br/>
        <a href="" id="registerbtn"> Register Now!</a>
        <br/>
    </form>
    <canvas id="bg"> </canvas>
</body>
</html>


