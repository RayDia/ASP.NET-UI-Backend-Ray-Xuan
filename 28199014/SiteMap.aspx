<%@ Page Title="Site Map" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="_28199014.SiteMap" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">

        <div class="container" >
            <div class="row">

                <div class="col-md-6 col-sm-12" style="margin-left:450px; text-align:center">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    <asp:TreeView ID="TreeView1" runat="server"
                        DataSourceID="SiteMapDataSource1" ShowLines="True" Font-Size="Larger" ForeColor="Black"/>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <h1 class="heading" id="signTitle" runat="server"></h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderfooterbuttom" runat="server">
    <div class="col-xs-1">
       <li><a href="DisplayCode.aspx?filename=SiteMap.aspx" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="SiteMap"></a></li> 
    </div>
</asp:Content>
