<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="UVRC.Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <%-- Main Header, Company logo and Contact Number --%>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 jumbotron-fluid">
                    <h1>
                        <img src="Images/logo-edit.jpg" />
                        <br />
                        Contact Us! 
                        (918) 299-2661
                    </h1>
                </div>
            </div>
        </div>
        <%-- Nav Bar for Each Option of Living Style offered by UVRC --%>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <!-- Brand -->
            <a class="navbar-brand" href="Home Page.aspx">University Village Retirement Community</a>

            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#hamburgerNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <%-- Navbar Links --%>
            <div class="navbar-collapse navbar-collapse" id="hamburgerNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Home Page.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Independent Living.aspx">Independent Living</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Assisted Living.aspx">Assisted Living</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Skilled Nursing Facility.aspx">Skilled Nursing Facility</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Gallery.aspx">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Sign Up.aspx">Sign In</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h3>Fill out the form to contact us!</h3>
        <div class="container-fluid" id="contact us">
            <div class="row">
            <div class="col-sm-6">
                <%-- <form action="csharp actions.cs"> --%>
                <div>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="tboxcontactfirst" runat="server"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="rfvcontactfirst" runat="server" ErrorMessage="Please input a first name!" ControlToValidate="tboxcontactfirst" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="tboxcontactlast" runat="server"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="rfvcontactlast" runat="server" ErrorMessage="Please input a last name!" ControlToValidate="tboxcontactlast" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblLivingStyle" runat="server" Text="Living Style?"></asp:Label>
                </div>
             
                <div>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="-- Select --" Value="0"></asp:ListItem>
                        <asp:ListItem Text=" Independent Living " Value="1"></asp:ListItem>
                        <asp:ListItem Text=" Assisted Living " Value="2"></asp:ListItem>
                        <asp:ListItem Text=" Skilling Nursing Facility " Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <div>
                        <asp:RequiredFieldValidator ID="rfvcontactliving" runat="server" ErrorMessage="Please select a living option!" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                </div>
                <div class="col-sm-6">
                <div>
                    <asp:Label ID="lblemail" runat="server" Text="Email Address?"></asp:Label>      
                </div>
                <div>
                <asp:TextBox ID="tboxemail" runat="server"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="rfvcontactemail" runat="server" ErrorMessage="Please input your email!" ControlToValidate="tboxemail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revcontactvalidemail" runat="server" ErrorMessage="Please input a valid email!" ControlToValidate="tboxemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    </div>
                <div>
                    <asp:Label ID="lblphonenumber" runat="server" Text="Phone Number:"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="tboxphone" runat="server"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="rfvcontactphone" runat="server" ErrorMessage="Please input a contact number!" ControlToValidate="tboxphone" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    </div>
                 </div>
                <div class="row">
                <div class="col-md-6">
                   <div>
                       <asp:Label ID="lblQuestions" runat="server" Text="Any other questions?"></asp:Label>
                   </div>
                    <textarea rows="3" cols="50"
                        id="Questions" name="Questions" placeholder="Speak your mind..." style="height: 125px"></textarea>
                    <asp:Button ID="btncontact" runat="server" Text="Submit" OnClick="btncontact_Click" />
                </div>
               </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div>
                        <asp:Label ID="lblcontactus" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
         <%-- </footer> --%>
        <div class="col-sm-12">
                <footer> University Village Retirement Home <br />
                    8555 South Lewis Ave, Tulsa, OK 74137 <br />
               
                <div>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                        <a class="nav-link" href="About Us.aspx">About Us</a>
                    </li>
                             <li class="nav-item">
                        <a class="nav-link" href="Contact Us.aspx">Contact Us</a>
                    </li>
                             <li class="nav-item">
                        <a class="nav-link" href="Privacy Policy.aspx">Privacy Policy</a>
                    </li>
                        </ul>
                        </nav>
                    
                </div>
                <div> <a href="notice_of_privacy_practice_brochure.pdf">Privacy Practice PDF Brochure</a></div>
                <div> .Language Copyright © 2019. University Village. All Rights Reserved.</div>
                     </footer>
            </div>
    </form>
</body>
</html>
