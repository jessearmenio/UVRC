<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="UVRC.Gallery" %>

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
         <div class="container-fluid" id="Gallery">          
                   <%-- Blank row. --%>
            <div class="row">
                <div class="col-sm-12">&nbsp;</div>
            </div>
             <%-- Blank row. --%>
            <div class="row">
                <div class="col-sm-12">&nbsp;</div>
            </div>
                <%-- This is rounded corners with a justified caption on the right --%>
            <div class="row" >
                <div class="col-sm-2 blueborder">
                    <img src="Images/86481102_3019175251448163_3673725943358160896_n.jpg" class="img-fluid mx-auto d-block"/>
                </div>

                <div class="col-sm-2 blueborder">
                    <p>
                       During a community event, Julie is able to spend quality time 
                        for lunch with her granddaugter, Avery! We love having daily events
                        such as this to help keep the good times flowing!
                    </p>
                </div>
                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                    <img src="Images/86809632_3019175254781496_2708778278075760640_n.jpg" class="img-fluid mx-auto d-block" />
                </div>

                <div class="col-sm-2 blueborder">
                     <p>
                        There is no shortage in dancing and festivities at UVRC!
                        Pictured is our annual recital that allows residents to 
                        get a night of dancing in with their loved ones!
                     </p>
                </div>
                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                     <img src="Images/86969759_3019175174781504_2045360106069032960_n.jpg" class="img-fluid mx-auto d-block"/>
                </div>            

                <div class="col-sm-2 blueborder">                    
                       
                     <p>
                        Here we see Loris and her husband Jack enjoying dancing the night away!
                        This is just part of what makes UVRC such a great community to be apart of!
                     </p>
                </div>
            </div>
             <%-- Blank row. --%>
            <div class="row">
                <div class="col-sm-12">&nbsp;</div>
            </div>
                 <div class="row">
                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                    <img src="Images/86970962_3019175264781495_7802482583438098432_n.jpg" class="img-fluid mx-auto d-block"/>
                </div>

                <div class="col-sm-2 blueborder justified">
                    <p>
                        We were able to get a shot of Jane and her husband Henry as they dress in 
                        matching red outfits! We love seeing our residents dress to theme and can
                        even help take them to buy clothes when preparing their outfits!  </p>
                </div>

                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                    <img src="Images/87021301_3019175164781505_9081822997248999424_n.jpg" class="img-fluid mx-auto d-block" />
                </div>

                <div class="col-sm-2 blueborder">
                     <p>
                        Granddaugter Hailey loved getting to catch up with her grandpa, Pat.
                        Pat fought in WW2 and loves getting a chance to show his granddaugter
                        the traditions he learned overseas! 
                     </p>
                </div>

                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                     <img src="Images/87172697_3028174423881579_7531533021086744576_n.jpg" class="img-fluid mx-auto d-block"/>
                </div>            

                <div class="col-sm-2 blueborder">                    
                       
                     <p>
                        We often have an arts and crafts section to our events!
                        Here we see little Jane and her grandma, Loris!
                        We love getting to see young minds build and create while
                        also catching up with their loved ones!
                     </p>
                </div>
            </div>
             <%-- Blank row. --%>
            <div class="row">
                <div class="col-sm-12">&nbsp;</div>
            </div>
               <div class="row">
                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                    <img src="Images/87364287_3028174443881577_7166115292282617856_n.jpg" class="img-fluid mx-auto d-block"/>
                </div>

                <div class="col-sm-2 blueborder justified">
                    <p>
                        Another great shot of our arts and crafts. Pictured here
                        is little Sarah with her grandmother, Dory! 
                        This is a great chance to keep the little ones 
                        engaged while also spending quality time with their family!
                    </p>
                </div>

                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                    <img src="Images/87389767_3028174307214924_6208913609108488192_n.jpg" class="img-fluid mx-auto d-block" />
                </div>

                <div class="col-sm-2 blueborder">
                     <p>
                        Here we see an earlier event for Easter, little Drake is drawing
                        lines on his bottle as his grandmother, Delaney, keeps hold of it! 
                     </p>
                </div>

                <%-- This is rounded corners with a justified caption on the right --%>
                <div class="col-sm-2 blueborder">
                     <img src="Images/87491161_3028174313881590_6217127158536470528_n.jpg" class="img-fluid mx-auto d-block"/>
                </div>            

                <div class="col-sm-2 redborder">                    
                       
                     <p>
                        Another great shot of our Easter event, showcasing their finished product!
                        We see little Marie here with her grandmother, Deloris, as they just finished 
                        making their decorative bird feeders! 
                     </p>
                </div>
            </div>
        </div>
        <br /> <br />
        <div class="container-fluid">
            <div class="row">
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
            </div>
        </div>
    </form>
</body>
</html>
