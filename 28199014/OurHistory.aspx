<%@ Page Title="Our History" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="OurHistory.aspx.cs" Inherits="_28199014.OurHistory" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">

        <div class="container">
            <div class="row">



                <div class="col-md-6 col-sm-12" style="margin-left:300px">
                    <h2 style="color:black">🐱CAT😺</h2>
                    <p >🐱CAT😺 is functional and awesome web by <a rel="nofollow" href="Email.aspx" target="_parent">Ray and Xuan</a>. </p>
                    <p style="color:rgb(108, 105, 105); font-size:18px">
                        is founded in August, 2017. The founders: Ray and Xuan are both ITS students of SEU-Monash Joint Graduate School. 
                        The original intention of founding CAT is to provide a service about cats for all cat lover.
                        Our company tries to collect all kinds of cats from all over the world, including longhair cats, shorthair cats and even hairless cats. 
                        We hope that anyone who visit our website could find their favorite breeds and obtain their new family member.
                    </p>
                </div>


            </div>
        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderfooter" runat="server">
    <!-- Footer section
================================================== -->
    <footer>
        <!-- Contact detail section
                ================================================== -->
        <%-- calender --%>
        <div class="container" id="footer">
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
    </footer>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <h1 class="heading" id="signTitle" runat="server"></h1>
</asp:Content>