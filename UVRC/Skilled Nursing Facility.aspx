<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skilled Nursing Facility.aspx.cs" Inherits="UVRC.Skilled_Nursing_Facility" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery</title>
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
        <div class="container-fluid">
            <h2>
                <br />
                <strong>Skilled Nursing and Rehab</strong>
            </h2>
            <div class="row" id="homerow">
                <div class="col-sm-8" >
                    <p id="home" style="background-color: #808080">
                        
                        Specialty Services & Programs: <br/>
                        <br />
                        24-Hour Skilled Nursing and Rehabilitation,
                        Medicare,
                        Accept Most Insurance Plans,
                        Long Term Nursing Care,
                        Respite Care,
                        Physical, Occupational and Speech Therapy,
                        Restorative Nursing,
                        IV Therapy,
                        Wound Care,
                        Post Surgical Recovery,                    
                        On-Site Physician,
                        <br />
                        Person-Centered Wellness,
                        Readmission Prevention,
                        Pain Management,
                        Medication Management.
                <br />
                    </p>
                </div>
                <div class="col-sm-4">
                    <img src="Images/senior_therapy_1.jpg" class="image2" />
                </div>
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
