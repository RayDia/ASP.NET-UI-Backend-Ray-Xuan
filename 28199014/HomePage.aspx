<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="_28199014.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <div id="home">
        <div class="site-slider">
            <ul class="bxslider">
                <li>
                    <img src="images/slider/slide1.jpg" alt="slider image 1">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Cute Cats</h2>
                                    <p class="color-white">Fusce elementum nisi et magna tristique, ut facilisis magna dapibus.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide2.jpg" alt="slider image 2">
                    <div class="container caption-wrapper">
                        <div class="slider-caption">
                            <h2>Cute Cats</h2>
                            <p class="color-white">Pellentesque mollis purus ipsum. Fusce tristique ante et est placerat dignissim.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide3.jpg" alt="slider image 3">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Cute Cats</h2>
                                    <p class="color-white">You may modify any content section as you wish.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide4.jpg" alt="slider image 4">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Cute Cats</h2>
                                    <p class="color-white">Phasellus ultrices, nunc et tempus porta, tellus purus elementum.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="images/slider/slide5.jpg" alt="slider image 5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-caption">
                                    <h2>Cute Cats</h2>
                                    <p class="color-white">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <!-- /.bxslider -->
            <div class="bx-thumbnail-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="bx-pager">
                                <a data-slide-index="0" href="">
                                    <img src="images/slider/thumb1.jpg" alt="thumbnail 1" /></a>
                                <a data-slide-index="1" href="">
                                    <img src="images/slider/thumb2.jpg" alt="thumbnail 2" /></a>
                                <a data-slide-index="2" href="">
                                    <img src="images/slider/thumb3.jpg" alt="thumbnail 3" /></a>
                                <a data-slide-index="3" href="">
                                    <img src="images/slider/thumb4.jpg" alt="thumbnail 4" /></a>
                                <a data-slide-index="4" href="">
                                    <img src="images/slider/thumb5.jpg" alt="thumbnail 5" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.site-slider -->
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
    <!-- Footer section
================================================== -->
        <!-- Contact detail section
                ================================================== -->
        <section id="emailandphone" class="parallax-section" style="margin-top:50px">
            <div class="container">
                <div class="contact-detail col-md-12 col-sm-12" >
                    <div class="col-md-6 col-sm-6" style="border:4px solid black;">
                        <h3><i class="icon-envelope medium-icon wow bounceIn" data-wow-delay="0.6s"></i>EMAIL</h3>
                        <p>xzhe0001@student.monash.edu</p>
                        <p>ydin0002@student.monash.edu</p>
                    </div>
                    <div class="col-md-6 col-sm-6" style="border:4px groove black">
                        <h3><i class="icon-phone medium-icon wow bounceIn" data-wow-delay="0.6s"></i>PHONES</h3>
                        <p>030-888-8888 </p>
                        <p>070-666-6666 </p>
                    </div>
                </div>
            </div>
        </section>

        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h2 class="wow bounceIn">🐱CAT😺</h2>
                    
                    
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderfooterbuttom" runat="server">
    <div class="col-xs-1">
        <li><a href="DisplayCode.aspx?filename=HomePage.aspx" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="AdRotator"></a>
        <a href="DisplayCode.aspx?filename=MasterPage.Master&filename2=HomePage.aspx" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="MasterPage & HomePage"></a></li>
    </div>
</asp:Content>
