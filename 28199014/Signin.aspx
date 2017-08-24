<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="_28199014.Signin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
        <div class="container" style="margin-bottom:50px">
            <div class="row">

                <!-- Contact form section
                ================================================== -->
                <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" providerName="System.Data.SqlServerCe.4.0"></asp:SqlDataSource>
                    <div class="col-md-6 col-sm-12">
                        <h3>Account</h3>
                        <asp:TextBox ID="lusername" runat="server" type="text" class="form-control" placeholder="Account" name="account" />
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <h3>Password</h3>
                        <asp:TextBox ID="lpassword" runat="server" type="text" class="form-control" placeholder="Password" name="password"/>
                    </div>


                    <div>
                        <asp:Button runat="server" class="smoothScroll btn btn-default" OnClick="BtnLogin_Click" Width="632px" Height="52px" Text="SIGN IN"/>
                    </div>
                    <div>
                        <asp:Button runat="server" class="smoothScroll btn btn-default" OnClick="BtnSignup_Click" Width="632px" Height="52px" Text="SIGN UP"/>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
    <!-- Footer section
================================================== -->
        <!-- Contact detail section
                ================================================== -->
        <%-- calender --%>
        <div class="container" id="footer" >
            <div class="row">
                <div class="col-md-12 col-sm-12">

                    <h2 class="wow bounceIn">🐱CAT😺</h2>
                    <div id="calender" >
                        <div style="text-align: center;padding-left:450px">
                            <div class="row">
                                <!-- calender-->
                                <a href="#footer" id="clickLink"></a>
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
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <h1 class="heading" id="signTitle" runat="server"></h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderfooterbuttom" runat="server">
    <div class="col-xs-1">
        <li><a href="DisplayCode.aspx?filename=Signin.aspx&filename2=Web.config" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="Login & Web config"></a></li>
    </div>
</asp:Content>
