<%@ Page Title="Email" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="_28199014.Email" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
        <div class="container">
            <div class="row">
                <!-- Contact form section
                ================================================== -->
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [username], [email], [uphoto] FROM [User] order by username" ProviderName="System.Data.SqlServerCe.4.0"></asp:SqlDataSource>

                <br />
                <br />


                <form action="#" method="post" class="wow fadeInUp" data-wow-delay="0.6s">
                    <div class="col-lg-1">
                        <h3>From</h3>
                    </div>
                    <div class="col-lg-2">
                        <h3>🐱CAT😺</h3>
                    </div>
                    <div class="col-md-12 col-sm-6">
                        <h3>Subject</h3>
                        <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="subject" />
                        <%--<input type="text" class="form-control" placeholder="Name" name="name">--%>
                    </div>
                    <div class="col-md-12 col-sm-6">
                        <h3>Attachment</h3>
                        <asp:FileUpload ID="fileUpload" runat="server" class="form-control" placeholder="file upload" />

                        <%--<input type="email" class="form-control" placeholder="Email" name="email">--%>
                    </div>
                    <div class="col-md-12 col-sm-6">
                        <h3>Message</h3>
                        <asp:TextBox ID="txtMsg" runat="server" class="form-control" placeholder="message" />
                    </div>
                    <%--<div class="col-md-4 col-sm-12">
                            <input type="text" class="form-control" placeholder="Subject" name="subject">
                        </div>
                        <div class="col-md-12 col-sm-12">
                            <textarea class="form-control" placeholder="Message" rows="7" name="message"></textarea>
                        </div>--%>
                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <asp:Button ID="sendMail" class="form-control" runat="server" OnClick="sendMail_Click" Text="Send Email" />
                        <%--<input type="submit" class="form-control" value="SHOOT MESSAGE">--%>
                    </div>
                </form>
            </div>


        </div>
    <section style="padding: 160px 0px 160px 0px">
        <div class="container" >
            <div class="col-md-offset-1 col-md-10 col-sm-12" style="margin-left:0px">
                <asp:GridView runat="server" ID="userGrid" DataSourceID="SqlDataSource1" DataKeyNames="Id" AutoGenerateColumns="false"
                    GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="User ID" />
                        <asp:BoundField DataField="username" HeaderText="User Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:ImageField DataImageUrlField="uphoto" HeaderText="User Image" />
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="selectUser" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
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
        <li><a href="DisplayCode.aspx?filename=Email.aspx&filename2=Email.aspx.cs" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="Emailing"></a></li>
    </div>
</asp:Content>
