using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _28199014
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            
            Session.Abandon();
            Response.Redirect("Signin.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                Response.Write(@"<script>alert('Alredy Logged in！');</script>");
            }
            else
            {
                Response.Redirect("Signin.aspx");
            }
        }
    }
}