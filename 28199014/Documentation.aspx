<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Documentation.aspx.cs" Inherits="_28199014.Documentation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:gainsboro">
    <h1 style="margin:50px 50px 2px 100px">Documentation</h1>
    <br />
    <hr style="border: double black; width:90% ; height:5px; color:black"/>

    <form id="form1" runat="server">
        <div style="font-family:Georgia; padding:50px 100px">
            <h2>Content</h2>
            <ul style="list-style-type:none">
                <li>
                    <a href="#dc1">1.Assignment Information</a>
                </li>
                <li>
                    <a href="#dc2">2.Web Site Design</a>
                </li>
                <ul>
                    <li>
                        <a href="#dc2-1">2.1 Web Page Hierarchy</a>
                    </li>
                    <li>
                        <a href="#dc2-2">2.2 Home Page</a>
                    </li>
                    <li>
                        <a href="#dc2-3">2.3 Registration Page</a>
                    </li>
                    <li>
                        <a href="#dc2-4">2.4 Login System</a>
                    </li>
                    <li>
                        <a href="#dc2-5">2.5 About Us</a>
                    </li>
                    <li>
                        <a href="#dc2-6">2.6 Site Map</a>
                    </li>
                    <li>
                        <a href="#dc2-7">2.7 Content Page</a>
                    </li>
                    <li>
                        <a href="#dc2-8">2.8 Email Page</a>
                    </li>
                    <li>
                        <a href="#dc2-9">2.9 Calendar</a>
                    </li>
                </ul>
            </ul>

            <h2 id="dc1">1.Assignment Information</h2>
            <table >
                <tbody>
                    <tr>
                        <td>
                            <b>Author</b>
                        </td>
                        <td>
                            <span style="font-family:Georgia">Ding YaLei</span> ID:28199014, Email:<a href="mailto:Ydin0002@student.monash.edu">Ydin0002@student.monash.edu</a>
                            <br />
                            <span style="font-family:Georgia">Zheng Xuan</span> ID:28198840, Email:<a href="mailto:xzhe0001@student.monash.edu">xzhe0001@student.monash.edu</a>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Unit Name:</b>
                        </td>
                        <td>
                            Enterprise and Internet Applications Development
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Unit Code:</b>
                        </td>
                        <td>
                            FIT5192
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Unit Provider:</b>
                        </td>
                        <td>
                            Monash University, the Caulfield School of Information Technology
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Assignment Number:</b>
                        </td>
                        <td>
                            Assignment 2
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Date of Submission:</b>
                        </td>
                        <td>
                            Aug. 2017
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Lecture/Tutor:</b>
                        </td>
                        <td>
                            Jue (Grace) XIE
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Division of Labour:</b>
                        </td>
                        <td>
                            <b>Ding YaLei</b>
                            Overview design, Master Page, Home Page, Site Map, Calendar, Email, Log out and ToolTips.
                            <br />
                            <b>Zheng Xuan</b>
                            Signin, Registration, Content, DataBase, DisplayCode, About Us.
                            <br />
                            Documentation together.

                        </td>
                    </tr>
                </tbody>
            </table>
            <p></p>
            <p></p>

            <h2 id="dc2">2.Web Site Design</h2>
            <h3 id="dc2-1">2.1 Web Site Hierarchy</h3>
            <p>
                <img src="Documentation/hierarchy.png" style="width:48%; margin-left:50px"/>
            </p>

            <h3 id="dc2-2">2.2 Home Page</h3>
            <p>
                <b>Note:</b>
            </p>
            <p>
                <img src="Documentation/homepage.png" style="width:62%; margin-left:50px"/>
            </p>

            <h3 id="dc2-3">2.3 Registration Page</h3>
            <p>
                <img src="Documentation/Sinup.png" style="width:72.5%; margin-left:50px"/>
            </p>

            <h3 id="dc2-4">2.4 Login System</h3>
            <p>
                <img src="Documentation/Signin.png" style="width:56%; margin-left:50px"/>
            </p>

            <h3 id="dc2-5">2.5 About Us</h3>
            <p>Some static pages, just show below.</p>
            <img src="Documentation/AboutUs.png" style="width:56%; margin-left:50px" />
            <br />
            <img src="Documentation/OutHistory.png" style="width:56%; margin-left:50px" />
            <br />
            <img src="Documentation/FAQ.png" style="width:56%; margin-left:50px"/>
            <br />

            <h3 id="dc2-6">2.6 Site Map </h3>
            <p>
                <img src="Documentation/sitemap.png" style="width:70%; margin-left:50px" />
            </p>

            <h3 id="dc2-7">2.7 Content Page</h3>
            <p>
                <img src="Documentation/Content.png" style="width:79%; margin-left:50px" />
            </p>
            <p>
                Here we give an example for searching.And show the result in GridView.
            </p>
            <p>
                <img src="Documentation/content-search.png" style="width:78%; margin-left:50px"/>
            </p>
            <p>
                Click "Details" to view the detail information of the searched cat.
            </p>
            <p>
                <img src="Documentation/content-details.png" style="width:57%; margin-left:50px"/>
            </p>

            <h3 id="dc2-8">2.8 Email</h3>
            <p>
                <img src="Documentation/email.png" style="width:74%; margin-left:50px"/>
            </p>

            <h3 id="dc2-9">2.9 Calender</h3>
            <p>
               <img src="Documentation/Calendar.png" style="width:25%; margin-left:50px"/>
            </p>
        </div>
    </form>
</body>
</html>
