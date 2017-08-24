<%@ Page Title="F & A" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="_28199014.FAQ" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <div class="container">
        <div class="row">

            <div class="col-md-6 col-sm-12" style="margin-left: 300px">
                <h2 class="mobile-top" style="color: black;">Frequently Asked Questions</h2>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                    <div class="panel panel-collapse">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">What does FAQ stand for?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <p >FAQ stands for Frequently Asked Question. In this FAQ page, we will explain the questions you may enter while browsing F. & A. Travel Agency official website.</p>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-collapse">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">Why do cats sometimes try to lick your face or hair?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <p>The first impression of the Newborn kitten about outside world is from its mother’s gentle licking. The female cat does so not only to express her love to the kitten, but also to remove dirt from the cat. The cat will lick its closest owner. Therefore, when your cat tried to lick you, please accept this generous love.</p>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-collapse">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">Why do cats sometimes use their bodies to rub furniture, such as the corner of a table?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body">
                                <p>There are glands along the both sides of the cat, the mouth, tongue, genitalia and some other body parts. These glands release smell to help them divide their own territory.</p>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-collapse">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">How much will a pedigreed kitten cost?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <div class="panel-body">
                                <p>Pricing on kittens is up to each individual breeder, and may vary depending upon the quality of the kitten, its bloodlines, its color, or even its markings. 
                                    When talking to a breeder, price and conditions of sale should definitely be discussed. You will also need to determine if the price you agree upon includes the registration papers and breeding rights.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>


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
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <h1 class="heading" id="signTitle" runat="server"></h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderfooterbuttom" runat="server">
    <div class="col-xs-1">
        <li><a href="DisplayCode.aspx?filename=Signin.aspx" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="AdRotator"></a></li>
    </div>
</asp:Content>
