<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="UVRC.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <h2>
                        <br />
                        <strong>A Community of Neighbors & Friends </strong>
                    </h2>
                </div>
                <div class="col-sm-6">
                    <p id="home" style="background-color: #808080">
                        <br />
                        Welcome to University Village – quality, yet affordable senior living 
                <br />with everything from rental cottages and independent apartments to assisted living 
                and even rehab and nursing. All on one campus, so if your loved one’s needs change, we have you covered. <br />
                The real difference we offer is the truly warm feeling of caring neighbors and friends!
                We offer many different living options and love to help customize your experience! <br />
                        Be sure to come by our campus for a visit and tour our location! <br />
                        Dont forget to like us on Facebook!
                    </p>

                </div>
                <div class="col-sm-6">
                    <img src="Images/The-Truth-About-How-Retirees-Spend-Their-Money.jpeg" class="image2" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                <h3>We're here to help! Watch our Q/A Video below!</h3>
                    </div>
                </div>
            <div class="row">     
                    <div class="col-md-6 embed-responsive embed-responsive-4by3">
                    <iframe src="https://youtube.com/embed/AA0Mah9-VmU" class="embed-responsive-item"></iframe>         
                    </div>           
                <div class="col-md-6 embed-responsive embed-responsive-4by3">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3226.169049194266!2d-95.95766294828168!3d36.040579980014535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87b693c4c0a2938d%3A0x287b925e16d513f4!2sUniversity%20Village%20Retirement%20Community!5e0!3m2!1sen!2sus!4v1582891965847!5m2!1sen!2sus" width="600" height="450" style="border: 0"></iframe>
            </div>
                </div>
            </div>
                         <div class="col-sm-12">
            <footer id="footer">
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
                <div><a href="notice_of_privacy_practice_brochure.pdf">notice_of_privacy_practice_brochure.pdf</a></div>
                <div>.Language Copyright © 2019. University Village. All Rights Reserved.</div>
            </footer>
        </div>
    </form>
</body>
</html>
