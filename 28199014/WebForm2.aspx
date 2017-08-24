<%@ Page Title="WebForm2" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_28199014.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
        <div class="container">
            <div class="row">

                <!-- Section title
                ================================================== -->

                <div class="col-md-6 col-sm-12" style="margin-left:300px">
                    <h2 class="mobile-top" style="color:black;">Frequently Asked Questions</h2>
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Is Kibble or Raw Dog Food the Healthier Choice?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p>Kibble dog food can be an option if you prefer making dog food at home. In some cases, your pet may need a special diet to heal different digestive diseases or diarrhea. It’s always good to know what ingredients to feed your dog and how to obtain the best kibble food.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">Dog Training Tips?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <p>Dog training tips vary from trainer to trainer. In fact, an old joke states that the only thing two dog trainers will agree on is what the third trainer is doing wrong. However, there are some tips that most dog trainers recommend.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">What to Look for in Good Dog Breeders?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <p>Reputable dog breeders are hard to find, even though there are thousands of breeders from which to choose. However, if you don’t get your dog from a reputable breeder, they might have health or behavior problems that cost you money and cause you heartache.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <h1 class="heading" id="signTitle" runat="server"></h1>
</asp:Content>
