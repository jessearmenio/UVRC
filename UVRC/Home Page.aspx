


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="UVRC.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UVRC</title>
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
        <%-- Bascially, the good good --%>
        <div class="container-fluid" id="header">
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
            <!-- Brand and logo redirect to home-->
            <a class="navbar-brand" href="Home Page.aspx">University Village Retirement Community</a>

            <!-- Toggler/Collapse Button -->
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

        <%-- Company Bio and Picture of Residents --%>
        <div class="container-fluid">
            <h2>
                <br />
                <strong>A Community of Neighbors & Friends </strong>
            </h2>
            <div class="row">
                <div class="col-sm-6" id="homerow">
                    <p id="home" style="background-color: #808080">
                        <br />
                        Welcome to University Village – A quality, yet affordable senior living community
                with everything from rental cottages and independent apartments to assisted living 
                and even rehab and nursing. All on one campus, so if your loved one’s needs change, we have you covered. 
                The real difference we offer is the truly warm feeling of caring neighbors and friends!
                <br />
                    </p>
                </div>
                <div class="col-sm-6">
                    <img src="Images/featured-happy-residents.jpg" class="image2" />
                </div>
            </div>
            <div class="container-fluid">
                <div id="Carousel" class="carousel slide" data-ride="carousel">
                    <%-- Indicators to show dots of each slide of the carousel --%>
                    <ol class="carousel-indicators">
                        <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#Carousel" data-slide-to="1"></li>
                        <li data-target="#Carousel" data-slide-to="2"></li>
                        <li data-target="#Carousel" data-slide-to="3"></li>
                    </ol>

                    <div class="carousel-inner">
                        <%-- Pictures in the carousel --%>
                        <div class="carousel-item active">
                            <img src="Images/92952623_3144335155598838_2849477652891303936_o.jpg" alt="Happy Easter" class="mx-auto img-fluid d-block" />
                        </div>
                        <div class="carousel-item">
                            <img src="Images/91074950_3102106313155056_4959913849298878464_o.jpg" alt="Movie Event" class="mx-auto img-fluid d-block" />
                        </div>
                        <div class="carousel-item">
                            <img src="Images/91976608_3139869396045414_2076469168374284288_o.jpg" alt="Cottage Resident Appreciation" class="mx-auto img-fluid d-block" />
                        </div>
                        <div class="carousel-item">
                            <img src="Images/90164428_3086818344683853_1286451436544065536_o.jpg" alt="Pianist Event" class="mx-auto img-fluid d-block" />
                        </div>
                    </div>
                    <%-- Left and Right Controls for the Carousel --%>
                    <a class="carousel-control-prev" href="#Carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#Carousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                        <span class="sr-only">Next</span>
                    </a>
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
