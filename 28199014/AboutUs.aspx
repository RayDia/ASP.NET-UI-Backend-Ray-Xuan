<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="_28199014.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <h1 class="heading" id="signTitle" runat="server"></h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
    <!-- Contact detail section
                ================================================== -->
    <%-- calender --%>
    <div class="container" id="footers">
        <div class="row">
            <div class="col-md-12 col-sm-12">

                <h2 class="wow bounceIn">🐱CAT😺</h2>
                <div id="calender">
                    <div style="text-align: center; padding-left: 450px">
                        <div class="row">
                            <!-- calender-->
                            <a href="#footers" id="clickLink"></a>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Event]" ProviderName="System.Data.SqlServerCe.4.0"></asp:SqlDataSource>
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
        <li><a href="DisplayCode.aspx?filename=AboutUs.aspx&filename2=OurHistory.aspx&filename3=FAQ.aspx" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="AboutUs & History & FAQ"></a></li>
    </div>
</asp:Content>

