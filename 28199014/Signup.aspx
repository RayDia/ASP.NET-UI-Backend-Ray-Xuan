<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Secondms.master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="_28199014.Signup" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">
    <div class="container">
        <div class="row">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" ProviderName="System.Data.SqlServerCe.4.0"></asp:SqlDataSource>

            <!-- Contact form section
                ================================================== -->
            <div class="col-md-offset-1 col-md-10 col-sm-12">
                <div class="col-lg-12">
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">USER NAME</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" type="text" ID="username" class="form-control" placeholder="User Name" name="username" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                        <asp:RequiredFieldValidator ControlToValidate="username" Text="The user name field is required!" runat="server" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" runat="server" ErrorMessage="Only letters required!"
                            ValidationExpression="^[A-Za-z]+$" ControlToValidate="username"></asp:RegularExpressionValidator>
                        <asp:CustomValidator runat="server" ID="usernameCV" Display="Static" ErrorMessage="User Exist!" ForeColor="Red"
                            ControlToValidate="username" OnServerValidate="usernameCV_ServerValidate" />
                        <!--add CustomValidator!-->

                    </div>

                    <!--user type-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">USER TYPE</h5>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="usertype" Text="User" type="text" class="form-control" placeholder="User type" name="usertype" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                    </div>

                    <!--email & password-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">EMAIL</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="email" type="email" class="form-control" placeholder="Email" name="email" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                        <asp:RequiredFieldValidator ControlToValidate="email" Text="The email field is required!" runat="server" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" ErrorMessage="Wrong email format!" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>

                    </div>
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">PASSWORD</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" TextMode="Password" ID="password" type="text" class="form-control" placeholder="Password" name="password" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                        <asp:RequiredFieldValidator ControlToValidate="password" Text="The password field is required!" runat="server" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" runat="server" 
                            ErrorMessage="The password must begin with letters and 6-18 letters long !" ValidationExpression="^[a-zA-Z]\w{5,17}$" ControlToValidate="password"></asp:RegularExpressionValidator>

                    </div>

                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">CONFIRM PASSWORD</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" TextMode="Password" ID="confirmpassword" type="text" class="form-control" placeholder="Confirm Password" name="confirmpassword" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                        <asp:RequiredFieldValidator ControlToValidate="confirmpassword" Text="You must confirm the password!" runat="server" ForeColor="Red" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" 
                            ErrorMessage="Confirm password does not match" ForeColor="Red" Operator="Equal"></asp:CompareValidator>
                    </div>

                    <!--age-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">AGE</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" type="Integer" ID="age" class="form-control" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                        <asp:RangeValidator ID="rangeValidator2" runat="server" ControlToValidate="age" ErrorMessage="Wrong birthday selection!" 
                            MinimumValue="0" MaximumValue="100" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                        <%--<asp:CustomValidator ID="ageCustomValidator" runat="server" ControlToValidate="age" OnServerValidate="ageCustomValidator_ServerValidate" ErrorMessage="Please input right age!" Display="Dynamic"></asp:CustomValidator>--%>
                    </div>

                    <!--address-->
                    <div class="col-md-6 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">ADDRESS</h5>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <asp:TextBox runat="server" ID="address" type="text" class="form-control" placeholder="Address" name="address" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                        <asp:RequiredFieldValidator ControlToValidate="address" Text="The address field is required!" runat="server" ForeColor="Red" />
                    </div>


                    <div class="row">
                        <!--Birthday-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">BIRTHDAY</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:TextBox runat="server" ID="d12" type="text" BackColor="Transparent" onfocus="WdatePicker({lang:'eng'})" Font-Size="18px" ForeColor="Black" Font-Bold="true" />
                            <asp:RequiredFieldValidator ControlToValidate="d12" Text="Empty Birthday!" runat="server" ForeColor="Red" />
                            <asp:RangeValidator ControlToValidate="d12" MinimumValue="1917-01-01" 
                                MaximumValue="2017-12-13" runat="server" ErrorMessage="Please input correct age!"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="row">
                        <!--cat fur-->
                        <div class="col-md-2" style="margin-left: 150px">
                            <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">FUR TYPE</h5>
                        </div>
                        <div class="col-md-2" style="margin-left: 150px">
                            <asp:DropDownList ID="furDropDownList" runat="server" BackColor="Transparent" Style="color: black">
                                <asp:ListItem> </asp:ListItem>
                                <asp:ListItem>Hairless</asp:ListItem>
                                <asp:ListItem>Shorthair</asp:ListItem>
                                <asp:ListItem>Longhair</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="furDropDownList" Text="Select None!" runat="server" ForeColor="Red" />
                        </div>
                    </div>
                    <div class="row">
                        <!--cat size-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">CAT SIZE</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:DropDownList ID="sizeDropDownList" runat="server" BackColor="Transparent" Style="color: black">
                                <asp:ListItem> </asp:ListItem>
                                <asp:ListItem>  Small    </asp:ListItem>
                                <asp:ListItem>  Medium   </asp:ListItem>
                                <asp:ListItem>  Good     </asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="sizeDropDownList" Text="Select None!" runat="server" ForeColor="Red" />
                        </div>
                    </div>
                    <div class="row">
                        <!--pets keeping experience-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">EVER RASIED PETS?</h5>
                           
                        </div>
                        <div class="col-md-6 col-sm-12">

                            <asp:RadioButtonList ID="petkeepRadioButtonList" runat="server" BackColor="Transparent" RepeatDirection="Horizontal" Font-Size="18px" ForeColor="Black" Font-Bold="true">
                                <asp:ListItem>true</asp:ListItem>
                                <asp:ListItem>false</asp:ListItem>
                            </asp:RadioButtonList>
                             <asp:RequiredFieldValidator ControlToValidate="petkeepRadioButtonList" Text="Please confirm your pets keeping experience !"  runat="server" ForeColor="Red" />
                        </div>
                    </div>
                    <div class="row">
                        <!--gemder-->
                        <div class="col-md-6 col-sm-12">
                            <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">GENDER</h5>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <asp:RadioButtonList ID="genderRadioButtonList" runat="server" BackColor="Transparent" RepeatDirection="Horizontal" Font-Size="18px" ForeColor="Black" Font-Bold="true">
                                <asp:ListItem>F</asp:ListItem>
                                <asp:ListItem>M</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ControlToValidate="genderRadioButtonList" Text="empty!" runat="server" ForeColor="Red" />
                        </div>
                    </div>

                    <!--try upload photo-->
                    <div class="col-md-12 col-sm-12">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px">PHOTO</h5>

                    </div>
                    <div class="col-ma-12 col-sm-12">

                        <asp:Label ID="photoLabel" runat="server" class="form-control" Text="">
                            <asp:FileUpload ID="PhotoUpload1" runat="server" />
                        </asp:Label>
                        <%--<asp:Image runat="server" ID="photo" />--%>
                    </div>
                    <!--try end-->


                    <!--user URL-->
                    <div class="col-md-12 col-sm-8" style="text-align:center">
                        <h5 class="wow bounceIn" style="color: rgb(221, 97, 42); font-size: 19px;  " >RECOMMEND WEBSITES</h5>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" ErrorMessage="Wrong URL format!" 
                            ValidationExpression="^http://([\w-]+\.)+[\w-]+(/[\w-./?%&=]*)?$" ControlToValidate="url"></asp:RegularExpressionValidator>

                    </div>
                    <div class="col-ma-12 col-sm-12">
                        <asp:TextBox runat="server" ID="url" class="form-control" type="text" />

                    </div>

                    <div class="col-ma-12 col-sm-12">
                        <asp:Button ID="register" runat="server" class="smoothScroll btn btn-default" Text="Rigister" OnClick="register_Click" Width="630px" Height="54px" />
                    </div>
                    <div class="col-ma-12 col-sm-12">
                        <asp:Button ID="return" runat="server" class="smoothScroll btn btn-default" Text="Return to Signin" OnClick="Registertologin_Click" Width="630px" Height="54px" />
                    </div>
                    
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
    <div class="container" id="footer">
        <div class="row">
            <div class="col-md-12 col-sm-12">

                <h2 class="wow bounceIn">🐱CAT😺</h2>
                <div id="calender">
                    <div style="text-align: center; padding-left: 450px">
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
        <li><a href="DisplayCode.aspx?filename=Signup.aspx&filename2=Signup.aspx.cs" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="Add Record"></a></li>
    </div>
</asp:Content>

