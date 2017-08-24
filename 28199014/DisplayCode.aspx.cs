using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _28199014
{
    public partial class DisplayCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string filePath = Server.MapPath(Request.QueryString["filename"]);
            string filePath2 = Server.MapPath(Request.QueryString["filename2"]);
            fileName.Text = Request.QueryString["filename"];
            fileName2.Text = Request.QueryString["filename2"];
            FileInfo file2 = new FileInfo(filePath2);
            FileInfo file = new FileInfo(filePath);

            if (file.Extension == ".aspx" || file.Extension == ".skin" || file.Extension == ".css"
                || file.Extension == ".config" || file.Extension == ".master" || file.Extension == ".Master")
            {
                Code.Text = "<h2>" + Request.QueryString["filename"] + "<br/> </h2>";
                Code.Text += ReadFile(filePath);
            }
            else
            {
                Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
            }
            if (file2.Extension == ".cs" || file2.Extension == ".skin" || file2.Extension == ".css"
                || file2.Extension == ".config" || file2.Extension == ".aspx")
            {
                Code.Text += "<h2>"+Request.QueryString["filename2"] +"<br/> </h2>";
                Code.Text += ReadFile(filePath2);
            }
            else
            {
                Code.Text += "";
            }

            string filePath3 = Server.MapPath(Request.QueryString["filename3"]);
            fileName3.Text = Request.QueryString["filename3"];
            FileInfo file3 = new FileInfo(filePath3);

            if (file3.Extension == ".cs" || file3.Extension == ".skin" || file3.Extension == ".css"
                || file3.Extension == ".config")
            {
                Code.Text += "<h2>" + Request.QueryString["filename3"] + "<br/> </h2>";
                Code.Text += ReadFile(filePath3);
            }
            else
            {
                Code.Text += "";
            }
        }

        private string ReadFile(string filepath)
        {
            string fileOutput = "";
            try
            {
                StreamReader FileReader = new StreamReader(filepath);

                while (FileReader.Peek() > -1)
                {
                    fileOutput += FileReader.ReadLine().Replace("<", "&lt;").Replace(" ", "&nbsp;&nbsp;&nbsp;&nbsp;") + "<br />";
                }
                FileReader.Close();
            }
            catch (FileNotFoundException e)
            {
                fileOutput = e.Message;
            }
            return fileOutput;
        }

    }
}