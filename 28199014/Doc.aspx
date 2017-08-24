<%@ Page Title="Documentation" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Doc.aspx.cs" Inherits="_28199014.Doc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <section  class="parallax-section" style="background-color:gainsboro">
        <div class="container">
            <div class="row">

                <!-- Section title
			================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8" style="margin-top:200px">
                    <div class="section-title">
                        <section>
                            <!-- bread crump -->
                            <div>
                                <asp:SiteMapPath ID="mappath1" runat="server" PathSeparator="-->" ForeColor="#ff8000" NodeStyle-ForeColor="#ff8000">
                                </asp:SiteMapPath>

                                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                            </div>

                        </section>
                        <h1 id="signTitle" class="heading" runat="server"></h1>
                        <hr>
                        <p>From fairest creatures we desire increase, that rhereby beautu’s rose might never die.</p>
                    </div>
                </div>
            </div>
        </div>
        <br />
            <div style="font-family: Georgia; padding: 50px 100px">
                <h2 style="text-align:left; color:black">Content</h2>
                <ul style="list-style-type: none;text-align:left">
                    <li style="text-align:left; color:black">
                        <a href="#dc1" >1.Assignment Information</a>
                    </li>
                    <li style="text-align:left">
                        <a href="#dc2">2.Web Site Design</a>
                    </li>
                    <ul style="text-align:left">
                        <li style="text-align:left">
                            <a href="#dc2-1">2.1 Web Page Hierarchy</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-2">2.2 Home Page</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-3">2.3 Registration Page</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-4">2.4 Login System</a>
                        </li >
                        <li style="text-align:left">
                            <a href="#dc2-5">2.5 About Us</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-6">2.6 Site Map</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-7">2.7 Content Page</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-8">2.8 Email Page</a>
                        </li>
                        <li style="text-align:left">
                            <a href="#dc2-9">2.9 Calendar</a>
                        </li>
                    </ul>
                </ul>

                <h2 id="dc1" style="text-align:left; color:black">1.Assignment Information</h2>
                <table >
                    <tbody>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Author</b>
                            </td>
                            <td>
                                <span style="font-family: Georgia">Ding YaLei</span> ID:28199014, Email:<a href="mailto:Ydin0002@student.monash.edu">Ydin0002@student.monash.edu</a>
                                <br />
                                <span style="font-family: Georgia">Zheng Xuan</span> ID:28198840, Email:<a href="mailto:xzhe0001@student.monash.edu">xzhe0001@student.monash.edu</a>
                                <br />
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Unit Name:</b>
                            </td>
                            <td>Enterprise and Internet Applications Development
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Unit Code:</b>
                            </td>
                            <td>FIT5192
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Unit Provider:</b>
                            </td>
                            <td>Monash University, the Caulfield School of Information Technology
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Assignment Number:</b>
                            </td>
                            <td>Assignment 2
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Date of Submission:</b>
                            </td>
                            <td>Aug. 2017
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Lecture/Tutor:</b>
                            </td>
                            <td>Jue (Grace) XIE
                            </td>
                        </tr>
                        <tr style="text-align:left; color:black">
                            <td>
                                <b>Division of Labour:</b>
                            </td>
                            <td>
                                <b>Ding YaLei</b>
                                Overview design, Master Page, Home Page, Site Map, Calendar, Email and ToolTips.
                            <br />
                                <b>Zheng Xuan</b>
                                Signin, Registration, Content, DataBase, DisplayCode, About Us.
                            <br />
                                Documentation together.

                            </td>
                        </tr>
                    </tbody>
                </table>
                <p></p>
                <p></p>

                <h2 id="dc2" style="text-align:left; color:black">2.Web Site Design</h2>
                <h3 id="dc2-1" style="text-align:left">2.1 Web Site Hierarchy</h3>
                <p>
                    <img src="Documentation/hierarchy.png" style="width: 50%; margin-left: 10px" />
                </p>

                <h3 id="dc2-2" style="text-align:left">2.2 Home Page</h3>
                <p>
                    <b>Note:</b>
                </p>
                <p>
                    <img src="Documentation/homepage.png" style="width: 70%; margin-left: 50px" />
                </p>

                <h3 id="dc2-3" style="text-align:left">2.3 Registration Page</h3>
                <p>
                    <img src="Documentation/Sinup.png" style="width: 82%; margin-left: 250px" />
                </p>

                <h3 id="dc2-4" style="text-align:left">2.4 Login System</h3>
                <p>
                    <img src="Documentation/Signin.png" style="width: 64%; margin-left: -50px" />
                </p>

                <h3 id="dc2-5" style="text-align:left">2.5 About Us</h3>
                <p>Some static pages, just show below.</p>
                <img src="Documentation/AboutUs.png" style="width: 64%; margin-left: -50px" />
                <br />
                <img src="Documentation/OutHistory.png" style="width: 64%; margin-left: -50px" />
                <br />
                <img src="Documentation/FAQ.png" style="width: 64%; margin-left: -50px" />
                <br />

                <h3 id="dc2-6" style="text-align:left">2.6 Site Map </h3>
                <p>
                    <img src="Documentation/sitemap.png" style="width: 80%; margin-left: 200px" />
                </p>

                <h3 id="dc2-7" style="text-align:left">2.7 Content Page</h3>
                <p>
                    <img src="Documentation/Content.png" style="width: 90%; margin-left: 260px" />
                </p>
                <p>
                    Here we give an example for searching.And show the result in GridView.
                </p>
                <p>
                    <img src="Documentation/content-search.png" style="width: 89%; margin-left: 260px" />
                </p>
                <p>
                    Click "Drtails" to view the detail information of the searched cat.
                </p>
                <p>
                    <img src="Documentation/content-details.png" style="width: 66%; margin-left: -35px" />
                </p>

                <h3 id="dc2-8" style="text-align:left">2.8 Email</h3>
                <p>
                    <img src="Documentation/email.png" style="width: 82%; margin-left: 220px" />
                </p>

                <h3 id="dc2-9" style="text-align:left">2.9 Calender</h3>
                <p>
                    <img src="Documentation/Calendar.png" style="width: 30%; margin-left: 30px" />
                </p>
            </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
    <!-- Footer section
================================================== -->
    <div class="container" id="footer">
        <div class="row">
            <div class="col-md-12 col-sm-12">

                <h2 class="wow bounceIn">🐱CAT😺</h2>
                <div id="calender">
                    <div style="text-align: center; padding-left: 450px">
                        <div class="row">
                            <!-- calender-->
                            <a href="#footer" id="clickLink3"></a>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Event]"
                                ProviderName="System.Data.SqlServerCe.4.0"></asp:SqlDataSource>
                            <div id="calendar" style="text-align: center">
                                <div style="text-align: center;">
                                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Displayevent" TitleStyle-BackColor="Black" TitleStyle-ForeColor="White" BorderStyle="Ridge"></asp:Calendar>
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    Events:
                                        <asp:TextBox runat="server" ID="displayEvent" type="text" class="form-control" placeholder="0 event today!" name="usertype" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderfooterbuttom" runat="server">
    <div class="col-xs-1">
        <%-- display and search --%>
        <li><a href="DisplayCode.aspx?filename=/css/themecat.css" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="Dispaly & Search"></a></li>

    </div>
</asp:Content>
