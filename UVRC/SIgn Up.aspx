<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIgn Up.aspx.cs" Inherits="UVRC.SIgn_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
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
        <br />
        <div class="container-fluid">
            <asp:Panel ID="pnllogin" runat="server">
                <div class="pnllogin">
                    <div class="row">
                        <div class="col-md-12" style="background-color: #808080">
                            <%-- Textboxes to enter username and password. --%>
                            <h2>
                                <asp:Label ID="lblsignin" runat="server"></asp:Label></h2>
                            <div>
                                <label>Please login with your email:</label>
                            </div>
                            <div>
                                <asp:TextBox ID="TboxLoginUser" runat="server" ValidationGroup="login"></asp:TextBox>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvloginuser" runat="server" ErrorMessage="Please enter your username!" ControlToValidate="TboxLoginUser" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rfvuseremail" runat="server" ControlToValidate="TboxLoginUser" Display="Dynamic" ErrorMessage="Please enter a valid email!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="login"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div>
                                <label>Please enter your password:</label>
                                <div>
                                </div>
                            </div>
                            <div>
                                <asp:TextBox ID="TboxLoginPassword" runat="server" ValidationGroup="login"></asp:TextBox>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvloginpassword" runat="server" ErrorMessage="Please enter your password!" ControlToValidate="TboxLoginPassword" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                            <br />
                            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click1" ValidationGroup="login" />
                            <asp:Button ID="btncreate" runat="server" Text="Create Account" OnClick="btncreate_Click" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="container-fluid">
            <asp:Panel ID="pnlupdateconfirm" runat="server">
            <div class="row">
                <div class="col-sm-12">
                    <asp:Label ID="lblupdateconfirm" runat="server"></asp:Label>
                </div>
            </div>
                </asp:Panel>
        </div>

        <br />
        <br />
        <div class="container-fluid">
            <asp:Panel ID="pnlsignup" runat="server">
                <h3><strong>Please Sign Up to Customize Your Experience! </strong></h3>
                <div class="board1">
                    <div class="col-md-3" style="background-color: #808080">
                        <%-- Textboxes with validators for profile setup info. --%>
                        <div>
                            <label>Your First Name:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxFirstName" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvfirstname" runat="server" ErrorMessage="Please enter your first name. :)" ControlToValidate="TboxFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Last Name:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxLastName" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvlastname" runat="server" ErrorMessage="Please enter your last name. :)" ControlToValidate="TboxLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Phone Number:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxNumber" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvnumber" runat="server" ErrorMessage="Please enter a good number to follow up. :)" ControlToValidate="TboxNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid U.S. number in (###)###-#### format!" ControlToValidate="TboxNumber" Display="Dynamic" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Email Address:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxEmail" runat="server"></asp:TextBox>
                            <div>
                                <%-- email validator. --%>
                                <asp:RegularExpressionValidator ID="revlogin" runat="server" ControlToValidate="TboxEmail" ErrorMessage="Please enter a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                &nbsp;
                            <br />
                                <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Please enter an email for more security. :)" ControlToValidate="TboxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Birthday</label>
                        </div>
                        <div>
                            <asp:TextBox ID="Tboxbirthday" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvbirthday" runat="server" ErrorMessage="How else will we celebrate you? :)" ControlToValidate="TboxBirthday" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revbirthday" runat="server" ErrorMessage="Please enter a valid date!" ControlToValidate="Tboxbirthday" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Mailing Address:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxAddress" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ErrorMessage="Please enter a good mailing address :)" ControlToValidate="TboxAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Do you have another address?</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxAddressTwo" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <label>City?</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxCity" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvcity" runat="server" ErrorMessage="Please enter a city. :)" ControlToValidate="TboxCity" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>State?</label>
                        </div>
                        <div>
                            <asp:DropDownList ID="ddlstate" runat="server" DataSourceID="ArmenioMain" DataTextField="Statename" DataValueField="StateID"></asp:DropDownList>
                            <asp:SqlDataSource ID="ArmenioMain" runat="server" ConnectionString="<%$ ConnectionStrings:S20_ksjarmeniConnectionString %>" SelectCommand="S20_spSelectState" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvstate" runat="server" ErrorMessage="Please enter a state. :)" ControlToValidate="ddlstate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Zip Code?</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxZip" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="tfvzip" runat="server" ErrorMessage="Please enter a zip code. :)" ControlToValidate="TboxZip" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revzip" runat="server" ErrorMessage="Please enter a valid zip code!" ControlToValidate="TboxZip" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <label>
                            Occupation?
                        </label>
                        <div>
                            <asp:DropDownList ID="ddloccupation" runat="server" DataSourceID="SqlDataSource1" DataTextField="OccupationName" DataValueField="OccupationID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S20_ksjarmeniConnectionString %>" SelectCommand="SelectOccupationSP" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                        <div>
                            <label>Admin?</label>
                        </div>
                        <div>
                            <asp:CheckBox ID="cbadmin" runat="server" />
                        </div>
                        <div>
                            <label>ShortUser:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxNewUser" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvusername" runat="server" ErrorMessage="Please enter a creative username. :)" ControlToValidate="TboxNewUser" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Password:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TboxNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Please enter a password. :)" ControlToValidate="TboxNewPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- Submit Button --%>
                <div>
                    <br />
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                    <div>
                        <%-- Display Sign Up Complete label. --%>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="container-fluid">
            <div class="col-sm-12">
                <div>
                    <%-- Prompt if user already has an account to allow login. --%>
                    <h2>
                        <br />
                        <asp:Label ID="lblcompletesignup" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblerror" runat="server"></asp:Label>

                        <br />
                    </h2>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <asp:Panel ID="pnlupdate" runat="server">
                <div class="board1">
                    <div class="col-md-3" style="background-color: #808080">
                        <%-- Textboxes with validators for profile setup info. --%>
                        <div>
                            <label>Your First Name:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxfirstnameupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your first name. :)" ControlToValidate="Tboxfirstnameupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Last Name:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxlastnameupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your last name. :)" ControlToValidate="Tboxlastnameupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Phone Number:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxphoneupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a good number to follow up. :)" ControlToValidate="tboxphoneupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter a valid U.S. number in (###)###-#### format!" ControlToValidate="tboxphoneupdate" Display="Dynamic" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Email Address:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxemailaddressupdate" runat="server"></asp:TextBox>
                            <div>
                                <%-- email validator. --%>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tboxemailaddressupdate" ErrorMessage="Please enter a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                &nbsp;
                            <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter an email for more security. :)" ControlToValidate="Tboxemailaddressupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Birthday</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxbirthdayupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="How else will we celebrate you? :)" ControlToValidate="Tboxbirthdayupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter a valid date!" ControlToValidate="Tboxbirthdayupdate" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <label>Your Mailing Address:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxaddressupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter a good mailing address :)" ControlToValidate="TboxAddressupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Do you have another address?</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxaddress2update" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <label>City?</label>
                        </div>
                        <div>
                            <asp:TextBox ID="Tboxcityupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter a city. :)" ControlToValidate="Tboxcityupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>State?</label>
                        </div>
                        <div>
                            <asp:DropDownList ID="ddlstateupdate" runat="server" DataSourceID="ArmenioMain" DataTextField="Statename" DataValueField="StateID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:S20_ksjarmeniConnectionString %>" SelectCommand="S20_spSelectState" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter a state. :)" ControlToValidate="ddlstate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Zip Code?</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxzipupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter a zip code. :)" ControlToValidate="Tboxzipupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please enter a valid zip code!" ControlToValidate="tboxzipupdate" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <label>
                            Occupation?
                        </label>
                        <div>
                            <asp:DropDownList ID="ddloccupation2" runat="server" DataSourceID="SqlDataSource1" DataTextField="OccupationName" DataValueField="OccupationID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:S20_ksjarmeniConnectionString %>" SelectCommand="spSelectOccupation" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                        <div>
                            <label>Admin?</label>
                        </div>
                        <div>
                            <asp:CheckBox ID="cbadminupdate" runat="server" />
                        </div>
                        <div>
                            <label>ShortUser:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxshortuserupdate" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter a creative username. :)" ControlToValidate="tboxshortuserupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div>
                            <label>Password:</label>
                        </div>
                        <div>
                            <asp:TextBox ID="tboxpasswordupdate" runat="server" TextMode="Password"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please enter a password. :)" ControlToValidate="tboxpasswordupdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Button ID="btnupdateuser" runat="server" Text="Update Account" />
                <div>
                    <asp:Label ID="lblupdate" runat="server"></asp:Label>
                </div>
            </asp:Panel>
        </div>

        <div class="col-sm-12">
            <footer>
                University Village Retirement Home
                <br />
                8555 South Lewis Ave, Tulsa, OK 74137
                <br />

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
                <div><a href="notice_of_privacy_practice_brochure.pdf">Privacy Practice PDF Brochure</a></div>
                <div>.Language Copyright © 2019. University Village. All Rights Reserved.</div>
            </footer>
        </div>
    </form>
</body>
</html>
