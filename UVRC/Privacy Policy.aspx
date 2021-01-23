<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Privacy Policy.aspx.cs" Inherits="UVRC.Privacy_Policy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Privacy Policy</title>
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
        <div class="row">
            <div class="col-sm-12">
                <h3> <strong> Privacy Policy: </strong> </h3>
            </div>
            <div class="col-sm-12">
            <p id="privacy">

                As an Internet user, we understand how important safeguarding your personal information is to you. 
                At Triad Senior Living, we are committed to protecting your personal information as you use our website. 
                We would like to take this opportunity to let you know that Triad Senior Living does not collect personally 
                identifiable information from anyone unless such information is provided to us voluntarily and knowingly except 
                as otherwise provided in this Policy. We only collect personal information for specific purposes, including 
                providing you with information about our services. We will not sell or make available your personal information 
                to unaffiliated companies for commercial purposes unrelated to the business of Triad Senior Living. However, 
                we may use this information to inform you of goods or services that may interest you. Triad Senior Living will 
                not disclose any information about you to unaffiliated companies or organizations without your consent except 
                as disclosed to you in this Policy, unless: (a) we are required to do so by law; (b) we believe it necessary 
                to respond to an inquiry or provide you with a requested service; or, (c) to protect the rights, property or 
                personal safety of any other person, including another Triad Senior Living customer or any member of the public.

                Triad Senior Living and its affiliates recognize that by utilizing our website you are placing trust in us. 
                We thank you. Let us assure you that we will take precautions to protect your information. In order to operate 
                the Website and deliver our services we may share your personal information with a service partner under strict 
                conditions. We will not otherwise disclose your personal information to other companies without your explicit consent.

                You are not required to register or provide information to us in order to view a large majority of our site. 
                However, to obtain services from Triad Senior Living or to access portions of our Website, including, 
                but not limited to, Triad Senior Living’ Newsletter or other services provided by Triad Senior Living, 
                you may be asked to provide personal information. We use your information to personalize your Web experience 
                or to provide you with requested services. Triad Senior Living will only use your information strictly in accordance with this Policy.
            </p>
                </div>
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
