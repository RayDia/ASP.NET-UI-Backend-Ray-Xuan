<%@ Page Title="Content" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Content.aspx.cs" Inherits="_28199014.Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHoldermainpart" runat="server">

    <%--    <section id="contact" class="parallax-section">
        </section>--%>

    <section id="profile" class="parallax-section">
    </section>


    <!-- Work section
================================================== -->
    <section id="work" class="parallax-section">
        <div class="container">
            <div class="row">

                <!-- Section title
			================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
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


                <!-- Work Owl Carousel section
			================================================== -->
                <div id="owl-work" class="owl-carousel">

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <%--                        <i class="icon-tools medium-icon"></i>--%>
                        <img src="images/catdisplay1.jpg" />
                        <h3>SCOTTISH FOLD</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Scottish Fold is a breed of domestic cat with a
                            natural dominant-gene mutation that affects cartilage throughout the body, causing the ears 
                            to "fold", bending forward and down towards the front of the head, which gives the cat what is 
                            often described as an "owl-like" appearance.</p>
                    </div>

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.6s">
                        <%--                        <i class="icon-tablet medium-icon"></i>--%>
                        <img src="images/catdisplay2.jpg" />
                        <h3>SIAMESE</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Siamese cat is one of the first distinctly recognized breeds of Asian cat. 
                            Derived from the Wichianmat landrace, one of several varieties of cat native to Thailand (formerly known as Siam),
                            the Siamese became one of the most popular breeds in Europe and North America in the 19th century.</p>
                    </div>

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <%--                        <i class="icon-bike medium-icon"></i>--%>
                        <img src="images/catdisplay3.jpg" />
                        <h3>ABYSSINIAN</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Abyssinian is a breed of domestic short-haired cat with a distinctive "ticked" 
                            tabby coat,in which individual hairs are banded with different colors. It is named after Abyssinia, the empire from which 
                            it was first thought to have originated; more recent research now places its origins somewhere nearer the Egyptian coast.</p>
                    </div>

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <%--                        <i class="icon-flag medium-icon"></i>--%>
                        <img src="images/catdisplay4.jpg" />
                        <h3>RAGDOLL</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Ragdoll is a cat breed with blue eyes and a distinct colorpoint coat. 
                            It is best known for its docile and placid temperament and affectionate nature. The name "Ragdoll" is derived from
                            the tendency of individuals from the original breeding stock to go limp and relaxed when picked up.</p>
                    </div>

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <%--                        <i class="icon-basket medium-icon"></i>--%>
                        <img src="images/catdisplay5.jpg" />
                        <h3>CANADIAN HAIRLESS</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Sphynx is a breed of cat known for its lack of coat (fur).
                            The Sphynx was developed through selective breeding, starting in the 1960s. The skin should have the
                            texture of chamois, as it has fine hairs.</p>
                    </div>

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <%--                        <i class="icon-basket medium-icon"></i>--%>
                        <img src="images/catdisplay6.jpg" />
                        <h3>DEVON REX</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Devon Rex is a breed of intelligent, short-haired cat that emerged
                            in England during the 1960s. They are known for their slender bodies, wavy coat, and large ears. 
                            This breed of cat is capable of learning difficult tricks. 
                            They are even known to recognize their owner's name, just as they do their own.</p>
                    </div>

                    <div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <%--                        <i class="icon-basket medium-icon"></i>--%>
                        <img src="images/catdisplay7.jpg" />
                        <h3>NORWEGIAN FOREST CAT</h3>
                        <hr>
                        <p style="color:rgb(108, 105, 105); font-size:18px">The Norwegian Forest cat is a breed of domestic cat originating in 
                            Northern Europe. This natural breed is adapted to a very cold climate, with top coat of glossy, long, 
                            water-shedding hairs and a woolly undercoat for insulation. </p>
                    </div>

                </div>

            </div>
        </div>
    </section>
    <section id="portfolio" class="parallax-section" style="background-position: 50% 82px; background-color:white">
        <div class="container">
            <div class="row">

                <!-- Section title
			================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                    <div class="section-title">
                        <h5 class="wow bounceIn animated" style="visibility: visible; animation-name: bounceIn;">WE ARE DELIGENT</h5>
                        <h1 class="heading">SEARCH</h1>
                        <hr>
                        <p>How much more praise deserv'd thy bearty's use, If thou couldst answer,this fair child of mine.</p>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="grid">
                        <figure class="effect-zoe" style="border: 3px solid gainsboro">
                            <img src="images/s-fur.jpg" alt="portfolio img">
                            <figcaption>
                                <a href="#fur" class="smoothScroll" style="font-family: 'Cambria Math'">FUR</a>
                                <p class="icon-links">
                                    <a href="images/s-fur.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
                                </p>

                            </figcaption>
                        </figure>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="grid">
                        <figure class="effect-zoe" style="border: 3px solid gainsboro">
                            <img src="images/s-size.jpg" alt="portfolio img">
                            <figcaption>

                                <a href="#size" class="smoothScroll" style="font-family: 'Cambria Math'">SIZE</a>
                                <p class="icon-links">
                                    <a href="images/s-size.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
                                </p>

                            </figcaption>
                        </figure>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="grid">
                        <figure class="effect-zoe" style="border: 3px solid gainsboro">
                            <img src="images/s-color.jpg" alt="portfolio img">
                            <figcaption>
                                <a href="#color" class="smoothScroll" style="font-family: 'Cambria Math'">COLOR</a>
                                <p class="icon-links">
                                    <a href="images/s-color.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <%-- calender --%>
                <%--<div class="col-md-4 col-sm-6">
                    <div class="grid">
                        <figure class="effect-zoe">
                            <img id="calenderback" src="images/portfolio-img1.jpg" alt="portfolio img" style="filter:alpha(opacity=0);opacity: 0"/>
                            <figcaption>
                                <a href="Calender.aspx#calender" class="fa fa-calendar wow fadeIn" data-wow-delay="0.3s"></a>
                            </figcaption>
                        </figure>
                    </div>
                </div>--%>

                <!-- Portfolio bottom section
			================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-12">
                    <div class="portfolio-bottom">
                        <h2>INTERESTED?</h2>
                        <p>Choose filter to search your favoriate cats.</p>

                        <a href="#display" id="clickLink"></a>
                        <asp:Button runat="server" ID="displayAll" class="smoothScroll btn btn-default" OnClick="displayall_Click" Text="Display All" />
                        <%--                        <a href="#display" class="smoothScroll btn btn-default" onclick="Displayall_Click()">Display All</a>--%>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div id="fur" style="background-color: gainsboro; height: 812px; padding: 160px 0px 0px 0px">
        <div class="container">
            <div class="row">

                <!-- Section title
			================================================== -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                    <div class="section-title">
                        <h5 class="wow bounceIn">Adventure Studio</h5>
                        <h1 class="heading">FUR</h1>
                        <hr>
                        <p>Our website contains different kinds fur types of cats. Here you could input some key word like “long”, 
                            “short” or any other words you want. Click the button below and it will bring you to the search section.</p>
                    </div>
                    
                </div>

            </div>
        </div>
        </div>


        <!-- Work section
================================================== -->
        <section id="size" class="parallax-section" style="background-color: white; height: 812px; padding: 160px 0px 0px 0px">
            <div class="container">
                <div class="row">

                    <!-- Section title
			================================================== -->
                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <div class="section-title">
                            <h5 class="wow bounceIn">Adventure Studio</h5>
                            <h1 class="heading">SIZE</h1>
                            <hr>
                            <p>Our website contains different kinds fur types of cats. Here you could input some key word like “small”, 
                                “medium” or any other words you want. Click the button below and it will bring you to the search section.</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>

        <div id="color" style="background-color: gainsboro; height: 812px; padding: 160px 0px 0px 0px">
            <div class="container">
                <div class="row">

                    <!-- Section title
			================================================== -->
                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <div class="section-title">
                            <h5 class="wow bounceIn">Adventure Studio</h5>
                            <h1 class="heading">COLOR</h1>
                            <hr>
                            <p>Our website contains different kinds fur types of cats. Here you could input some key word like “pink”, 
                                “white” or any other words you want. Click the button below and it will bring you to the search section.</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <%-- add sql source --%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="System.Data.SqlServerCe.4.0" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
        </asp:SqlDataSource>

        <section id="display" style="background-color: white; padding: 160px 0px 160px 0px; text-align: center">
            <%-- fur --%>
            <div class="col-md-4">
                        <h3>Fur</h3>
                        <asp:TextBox ID="txtfur" runat="server" type="text" class="form-control" placeholder="fur" name="fur">
                        </asp:TextBox>
                        <div>
                            <asp:LinkButton runat="server" class="smoothScroll btn btn-default" OnClick="findCat_Click" Width="162px" Height="52px" Text="Search by fur" CommandName="findFur">
                                
                            </asp:LinkButton>
                        </div>

                    </div>
            <%-- size --%>
            <div class="col-md-4 ">
                        <h3>Size</h3>
                        <asp:TextBox ID="txtsize" runat="server" type="text" class="form-control" placeholder="size" name="size" />
                        <div>
                            <asp:LinkButton runat="server" class="smoothScroll btn btn-default" OnClick="findCat_Click" Width="162px" Height="52px" Text="Search by size" CommandName="findSize" />
                        </div>
                    </div>
            <%-- color --%>
            <div class="col-md-4">
                        <h3>Color</h3>
                        <asp:TextBox ID="txtcolor" runat="server" type="text" class="form-control" placeholder="color" name="color" />
                        <div>
                            <asp:LinkButton runat="server" class="smoothScroll btn btn-default" OnClick="findCat_Click" Width="162px" Height="52px" Text="Search by color" CommandName="findColor" />
                        </div>
                    </div>

            <div style="margin-left: 380px">
                <a href="#team" id="clickLink1"></a>
                <asp:GridView ID="catRecords" runat="server" AutoGenerateColumns="False" DataKeyNames="cid"
                    SelectedRowStyle-CssClass="editBackColour" HeaderStyle-CssClass="fieldHeader" OnRowCommand="catRecords_RowCommand"
                    GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" Text="Details" />
                        <asp:BoundField DataField="cthumbnail" HtmlEncode="false" HeaderText="THUMBNAIL" SortExpression="cthumbnail" />
                        <asp:BoundField DataField="cid" HeaderText="ID" ReadOnly="true" ItemStyle-CssClass="gvItems" SortExpression="cid" />
                        <asp:BoundField DataField="breed" HeaderText="BREED" ItemStyle-CssClass="gvItems" SortExpression="breed" />
                        <asp:BoundField DataField="nickname" HeaderText="NICKNAME" SortExpression="nickname" />
                    </Columns>
                    <HeaderStyle CssClass="fieldHeader"></HeaderStyle>
                    <SelectedRowStyle CssClass="editBackColour"></SelectedRowStyle>
                </asp:GridView>
            </div>


            <!--details-->
            <%--<asp:ListView ID="catList" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <%# Eval("cpic") %>                              
                                </td>
                                <td>
                                    <b>Nick Name:<%# Eval("nickname") %><br />
                                    </b>Breed: <%# Eval("breed") %>
                                    <br />
                                    Gender: <%# Eval("cgender") %>
                                    <br />
                                    Size: <%# Eval("csize") %>
                                    <br />
                                    Fur Style: <%# Eval("cfur") %>
                                    <br />
                                    Color: <%# Eval("color") %>
                                    <br />
                                    Hometown: <%# Eval("country") %>
                                    <br />
                                    Age: <%# Eval("cage") %>
                                    <br />
                                    Life Time: <%# Eval("lifetime") %>
                                    <br />
                                    Discription: <%# Eval("discription") %>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:ListView>--%>
        </section>

        <section id="team" style="background-position: 50% -149px;">
            <div class="container">
                <div>
                    <!-- Section title
			================================================== -->
                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <div class="section-title">
                            <h5 class="wow bounceIn animated" style="visibility: visible; animation-name: bounceIn;">WE ARE READY</h5>
                            <h1 class="heading">DETAILS</h1>
                            <hr>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                                Excepteu sunt in culpa qui officia deserunt.</p>
                        </div>
                    </div>

                </div>
                <div style="display: inline-block; margin-left: 200px; width: 600px">
                    <asp:ListView ID="catList" runat="server">
                        <ItemTemplate>
                            <div class="col-md-8 col-sm-6 wow fadeInUp" data-wow-delay="1.6s" style="visibility: visible; animation-delay: 1.6s; animation-name: fadeIn;">
                                <div class="team-wrapper">
                                    <img src=<%# Eval("cpic") %> class="img-responsive" alt="team img">
                                    <div class="team-des" style="line-height: 1; text-align: left">
                                        <p>
                                            Nick Name:<%# Eval("nickname") %>
                                        </p>
                                        <p>
                                            Breed: <%# Eval("breed") %>
                                        </p>
                                        <p>
                                            Gender: <%# Eval("cgender") %>
                                        </p>
                                        <p>
                                            Size: <%# Eval("csize") %>
                                        </p>
                                        <p>
                                            Fur Style: <%# Eval("cfur") %>
                                        </p>
                                        <p>
                                            Color: <%# Eval("color") %>
                                        </p>
                                        <p>
                                            Hometown: <%# Eval("country") %>
                                        </p>
                                        <p>
                                            Age: <%# Eval("cage") %>
                                        </p>
                                        <p>
                                            Life Time: <%# Eval("lifetime") %>
                                        </p>
                                        <p>
                                            Discription: <%# Eval("discription") %>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                <!--details-->
            </div>
        </section>

        <div class="collapse navbar-collapse" style="background-color: white">
            <ul class="nav navbar-nav navbar-right">
                <!-- <li><a href="#home" class="smoothScroll">HOME</a></li> -->
                <li><a href="#portfolio" class="smoothScroll">Search</a></li>
            </ul>
        </div>
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
                                <a href="#footer" id="clickLink3"></a>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Event]"
                                    ProviderName="System.Data.SqlServerCe.4.0"></asp:SqlDataSource>
                                <div id="calendar" style="text-align: center">
                                    <div style="text-align: center;">
                                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Displayevent" TitleStyle-BackColor="Black" TitleStyle-ForeColor="White" BorderStyle="Ridge">
                                        </asp:Calendar>
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
        <li><a href="DisplayCode.aspx?filename=Content.aspx&filename2=Content.aspx.cs" target="_blank" class="fa fa-pencil wow fadeIn" data-wow-delay="1.6s" title="Dispaly & Search"></a></li>
        
    </div>
</asp:Content>
