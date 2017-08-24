<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acknowledge.aspx.cs" Inherits="_28199014.Acknowledge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<%--    <link rel="stylesheet" href="css/ackonwledge.css" type="text/css" />--%>
</head>
<body>
    <h1 style="margin:50px 50px 2px 100px">Acknowledge</h1>
    <br />
    <hr style="border: double black; width:90% ; height:5px; color:black"/>
    <%--<hr style="FILTER: alpha(opacity=100,finishopacity=0,style=2); width:80% ;color:#987cb9;height:10px "/>
    <hr style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color:#987cb9,direction:145,strength:15) ;width:80% ; color:#987cb9;height:20px"/>
    <hr style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10) ;width:80%; color:#987cb9; height:20px"/>--%>
    <form id="Ack" runat="server">
        <div style="background-image:url(images/ack.jpg)" >
            <div  class="Acknowledge" style="padding:30px 100px;background-color:rgba(255,255,255,0.6)">
            <h3>Inspiration</h3>
            <p>Our design is inspired by those sites: </p>
            <ul>
                <li>The Homepage design:
                    <asp:HyperLink runat="server" NavigateUrl="http://www.tooplate.com/free-templates" Text="Tooplate" />
                </li>
                <li>Input Elements Design:
                    <asp:HyperLink runat="server" NavigateUrl="https://github.com/twbs/bootstrap/blob/master/LICENSE" Text="GitHub" />
                </li>
            </ul>

            <h3>Technique Support</h3>
            <ul>
                <li>W3Cschool
                    <asp:HyperLink runat="server" NavigateUrl="http://www.w3school.com.cn/" Text="http://www.w3school.com.cn/" />
                </li>
                <li>RUNOOB
                    <asp:HyperLink runat="server" NavigateUrl="http://www.runoob.com/" Text="http://www.runoob.com/" />
                </li>
            </ul>


            <h3>Images for homepage slides</h3>
            <ul>
                <li>Sleepy Cat
                    <asp:HyperLink runat="server" NavigateUrl="http://desk.zol.com.cn/bizhi/4733_58897_2.html" Text="http://desk.zol.com.cn/bizhi/4733_58897_2.html" /> </li>
                <li>Orange Cat
                    <asp:HyperLink runat="server" NavigateUrl="http://bizhi.sogou.com/detail/info/770851/770851/useradd/15081251" Text="http://bizhi.sogou.com/detail/info/770851/770851/useradd/15081251" />
                </li>
                <li>Ragdoll
                    <asp:HyperLink runat="server" NavigateUrl="http://v1.qzone.cc/pic/201407/10/13/44/53be284a36d7b351.jpg!600x600.jpg" Text="http://v1.qzone.cc/pic/201407/10/13/44/53be284a36d7b351.jpg!600x600.jpg" />
                </li>
                <li>Yellow Cat
                    <asp:HyperLink runat="server" NavigateUrl="http://www.1tong.com/uploads/wallpaper/animal/246-5-730x456.jpg" Text="http://www.1tong.com/uploads/wallpaper/animal/246-5-730x456.jpg" />
                </li>
                <li>Small Cat
                    <asp:HyperLink runat="server" NavigateUrl="https://b-ssl.duitang.com/uploads/item/201401/11/20140111144337_VVw2x.thumb.700_0.jpeg" Text="https://b-ssl.duitang.com/uploads/item/201401/11/20140111144337_VVw2x.thumb.700_0.jpeg" />
                </li>
            </ul>


            <h3>Background Images</h3>
            <ul>
                <li>For Registration Page (theme1)
                    <asp:HyperLink runat="server" NavigateUrl="https://mir-s3-cdn-cf.behance.net/project_modules/fs/b3b89755227885.597b6f4156791.png" Text="https://mir-s3-cdn-cf.behance.net/project_modules/fs/b3b89755227885.597b6f4156791.png" />
                </li>
                <li>For Registration Page (theme2)
                    <asp:HyperLink runat="server" NavigateUrl="http://img15.3lian.com/2015/f2/37/d/4.jpg" Text="http://img15.3lian.com/2015/f2/37/d/4.jpg" />
                </li>
                <li>For DiaplayCode Page
                    <asp:HyperLink runat="server" NavigateUrl="http://www.zcool.com.cn/work/ZMTY2MzQ0OTI=.html?switchPage=on" Text="http://www.zcool.com.cn/work/ZMTY2MzQ0OTI=.html?switchPage=on" />
                </li>
                
            </ul>

            <h3>Products Images</h3>
            <ul>
                <li>Dragon Li
                    <asp:HyperLink runat="server" NavigateUrl="http://img2.ph.126.net/OvC67boaYDWAf8DDMZ8ShQ==/2712855825554750450.jpg" Text="http://img2.ph.126.net/OvC67boaYDWAf8DDMZ8ShQ==/2712855825554750450.jpg" />
                </li>
                <li>Norwegian Forest Cat
                    <asp:HyperLink runat="server" NavigateUrl="http://img1.3lian.com/2015/a2/221/d/237.jpg" Text="http://img1.3lian.com/2015/a2/221/d/237.jpg" />
                    <asp:HyperLink runat="server" NavigateUrl="http://img5.imgtn.bdimg.com/it/u=4056145749,1627064238&fm=213&gp=0.jpg" Text="http://img5.imgtn.bdimg.com/it/u=4056145749,1627064238&fm=213&gp=0.jpg" />
                </li>
                <li>Ragdoll
                    <asp:HyperLink runat="server" NavigateUrl="http://img0.lady8844.com/h041/h03/img201410281517200.jpg" Text="http://img0.lady8844.com/h041/h03/img201410281517200.jpg" />
                </li>
                <li>Scottish
                    <asp:HyperLink runat="server" NavigateUrl="http://img1.imgtn.bdimg.com/it/u=2913252500,439442911&fm=15&gp=0.jpg" Text="http://img1.imgtn.bdimg.com/it/u=2913252500,439442911&fm=15&gp=0.jpg" />
                    <asp:HyperLink runat="server" NavigateUrl="http://preview.quanjing.com/lacz001/lacz-401972.jpg" Text="http://preview.quanjing.com/lacz001/lacz-401972.jpg" />
                </li>
                <li>Siamese
                    <asp:HyperLink runat="server" NavigateUrl="http://img.mp.itc.cn/upload/20161014/1b5aa36a8c7a42e69be11f9816d6fa1b_th.jpg" Text="http://img.mp.itc.cn/upload/20161014/1b5aa36a8c7a42e69be11f9816d6fa1b_th.jpg" />
                    <asp:HyperLink runat="server" NavigateUrl="http://img3.duitang.com/uploads/item/201204/11/20120411213149_z4fCe.jpeg" Text="http://img3.duitang.com/uploads/item/201204/11/20120411213149_z4fCe.jpeg" />
                </li>
                <li>Russian Blue cat
                    <asp:HyperLink runat="server" NavigateUrl="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=8eb6b646f9deb48fef64a99d9876505c/8d5494eef01f3a295eb9f9e99325bc315c607ca7.jpg" Text="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=8eb6b646f9deb48fef64a99d9876505c/8d5494eef01f3a295eb9f9e99325bc315c607ca7.jpg"/>
                    <asp:HyperLink runat="server" NavigateUrl="http://imgsrc.baidu.com/forum/pic/item/503d269759ee3d6d4fc1a88d43166d224f4ade74.jpg" Text="http://imgsrc.baidu.com/forum/pic/item/503d269759ee3d6d4fc1a88d43166d224f4ade74.jpg" />
                </li>
                <li>Sphynx
                    <asp:HyperLink runat="server" Navigation="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=db66e824566034a83defb0c2a37a2321/5fdf8db1cb1349544b6089415c4e9258d1094a9c.jpg" Text="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=db66e824566034a83defb0c2a37a2321/5fdf8db1cb1349544b6089415c4e9258d1094a9c.jpg" />
                    <asp:HyperLink runat="server" NavigateUrl="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=aed93a47db09b3deffb2ec2ba4d606f4/9d82d158ccbf6c81789db1c7b63eb13533fa4073.jpg" Text="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=aed93a47db09b3deffb2ec2ba4d606f4/9d82d158ccbf6c81789db1c7b63eb13533fa4073.jpg"/>
                </li>
            </ul>

                <h3>Products Breed Images</h3>
                <ul>
                    <li>German Cat
                    <asp:HyperLink runat="server" Navigation="http://g.hiphotos.baidu.com/image/%70%69%63/item/0b46f21fbe096b63a8f3b58c06338744eaf8ac00.jpg" Text="http://g.hiphotos.baidu.com/image/%70%69%63/item/0b46f21fbe096b63a8f3b58c06338744eaf8ac00.jpg"/>
                </li>
                <li>Sphynx Cat 
                    <asp:HyperLink runat="server" Navigation="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=286bddd733dbb6fd3156ed65614dc16d/5366d0160924ab18ee9a881b3ffae6cd7b890b09.jpg" Text="http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=286bddd733dbb6fd3156ed65614dc16d/5366d0160924ab18ee9a881b3ffae6cd7b890b09.jpg" />
                </li>
                <li>Cat in Bucket
                    <asp:HyperLink runat="server" NavigateUrl="http://pic71.nipic.com/file/20150710/21405441_112617711170_2.jpg" Text="http://pic71.nipic.com/file/20150710/21405441_112617711170_2.jpg"/>
                </li>
                </ul>

                <h3>Web Icon</h3>
                <ul>
                    <li>Icon
                    <asp:HyperLink runat="server" Navigation="http://fontawesome.io/license" Text="http://fontawesome.io/license"/>
                </li>
                </ul>

                <h3>Calendar</h3>
                <ul>
                    <li>    
                        <asp:HyperLink runat="server" NavigateUrl="http://www.my97.net/" Text="http://www.my97.net/"/>
                    </li>
                </ul>

        </div>
        </div>
        
    </form>
</body>
</html>