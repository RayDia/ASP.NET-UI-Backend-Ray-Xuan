using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlServerCe;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _28199014
{
    public partial class Content : System.Web.UI.Page
    {
        //private int i = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                //Response.Redirect("Signin.aspx", true);
                Response.Redirect("Signin.aspx?URL=" + Request.Url.ToString());
            }
            //if(i == -1)
            //{
            //    SqlDataSource1.SelectCommand = "SELECT [cthumbnail], [cid], [breed], [nickname] FROM [Cat]";
            //    catRecords.DataSource = SqlDataSource1;
            //    catRecords.DataBind();
            //    i = -1;
            //    Response.Write(@"<script>alert('success！');</script>");
            //}
            signTitle.InnerText = Page.Title;
            GetEventDates();
        }
        protected void GetEventDates()
        {
            string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //connect to db，webconfig
            SqlCeConnection conn = new SqlCeConnection(str);
            conn.Open();
            string sql = "select EventDate from Event";

            SqlCeCommand comm = new SqlCeCommand(sql, conn);

            SqlCeDataReader reader = comm.ExecuteReader();

            LinkedList<DateTime> selday = new LinkedList<DateTime>();
            while (reader.Read())
            {
                string time = reader["EventDate"].ToString();
                DateTime current = Convert.ToDateTime(time);
                selday.AddFirst(current);
                Calendar1.SelectedDates.Add(current);
            }
            Session.Add("eventdate", selday);
            reader.Close();



        }

        protected string GetEventDetails(EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //connect to db，webconfig
            string eventDetails = "";
            string nextDay = Calendar1.SelectedDate.AddDays(1).ToString("yyyy-MM-dd");
            string selectedDay = Calendar1.SelectedDate.ToString("yyyy-MM-dd");

            //string sql = "SELECT [EventDate] ,[EventDescription]FROM [Event] WHERE ([EventDate]< #'" + nextDay + "' # and [EventDate]> # '" + selectedDay + "'#)";

            //dsEvent.SelectCommand =
            //  "SELECT [EventDate] ,[EventDescription]FROM [Event] WHERE ([EventDate]< #" +
            //  nextDay + "# and [EventDate]> #" + selectedDay + "#)";

            //dsEvent.SelectCommand = "SELECT [EventDate] ,[EventDescription] FROM [Event] WHERE [EventDate]= '" + selectedDay + "'"; 
            //DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
            //if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            //{
            //    string eventDaystr = dv.Table.Rows[0][0].ToString();
            //    DateTime eventDay = Convert.ToDateTime(eventDaystr);
            //    eventDaystr = eventDay.ToShortTimeString();
            //    eventDetails = "At " + eventDaystr + ", " + dv.Table.Rows[0][1].ToString();
            //}
            //else
            SqlCeConnection conn = new SqlCeConnection(str);
            conn.Open();
            string sql = "select EventDate, EventDescription from [Event] where [EventDate]='" + selectedDay + "'";
            SqlCeCommand comm = new SqlCeCommand(sql, conn);

            SqlCeDataReader reader = comm.ExecuteReader();

            LinkedList<DateTime> selday = new LinkedList<DateTime>();
            while (reader.Read())
            {
                string time = reader["EventDate"].ToString();
                eventDetails += "At " + time + ", " + reader["EventDescription"].ToString();
                //Response.Write(@"<script>alert('success6！');</script>");
            }
            if (eventDetails == "")
            {
                eventDetails = "NO event for today!";
                //Response.Write(@"<script>alert('success7！');</script>");
            }

            return eventDetails;
        }

        protected void Calendar1_Select(object sender, EventArgs e)
        {
            //Response.Write(@"<script>alert('success1！');</script>");
            //displayEvent.Text = GetEventDetails(e);
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //Response.Write(@"<script>alert('success2！');</script>");
            //displayEvent.Text = GetEventDetails(e);
        }

        protected void Displayevent(object sender, EventArgs e)
        {
            //Response.Write(@"<script>alert('success3！');</script>");
            displayEvent.Text = GetEventDetails(e);
            GetEventDates();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scroll", "document.getElementById('clickLink3').click();", true);
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            LinkedList<DateTime> displaydate = (LinkedList<DateTime>)Session["eventdate"];
            try
            {
                for (int i = displaydate.Count; i > 0; i--)
                {
                    Calendar1.SelectedDates.Add(displaydate.First.Value);
                    displaydate.RemoveFirst();
                }
            }
            catch (System.NullReferenceException ex)
            {
                displayEvent.Text = ex.Message;
            }
        }

        protected void Calendar1_Init(object sender, EventArgs e)
        {

            displayEvent.Text = GetEventDetails(e);

        }
        protected void catRecords_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [cpic], [nickname], [breed], [cgender]," +
                " [csize], [cfur], [color], [country], [cage], [lifeTime], [discription] FROM [Cat] WHERE cid= " + catRecords.Rows[Convert.ToInt32(e.CommandArgument)].Cells[2].Text;
            catList.DataSource = SqlDataSource1;
            catList.DataBind();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scroll", "document.getElementById('clickLink1').click();", true);
        }
        protected void displayall_Click(object sender, EventArgs e)
        {
            //Response.Write(@"<script>alert('success！');</script>");
            SqlDataSource1.SelectCommand = "SELECT [cthumbnail], [cid], [breed], [nickname] FROM [Cat]";
            catRecords.DataSource = SqlDataSource1;
            catRecords.DataBind();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scroll", "document.getElementById('clickLink').click();", true);
        }
        protected void findCat_Click(object sender, EventArgs e)
        {
            //txtcolor.Text = text
            LinkButton btn = (LinkButton)sender;
            
            switch (btn.CommandName)
            {
                case "findFur":
                    SqlDataSource1.SelectCommand = "SELECT * FROM Cat WHERE cfur LIKE '%" + txtfur.Text.Trim(' ') + "%'";
                    break;
                case "findSize":
                    SqlDataSource1.SelectCommand = "SELECT * FROM Cat WHERE csize LIKE '%" + txtsize.Text.Trim(' ') + "%'";
                    break;
                case "findColor":
                    SqlDataSource1.SelectCommand = "SELECT * FROM Cat WHERE color LIKE '%" + txtcolor.Text.Trim(' ') + "%'";
                    break;
            }

            catRecords.DataSource = SqlDataSource1;
            catRecords.DataBind();
            //Response.Redirect("Content.aspx#display");
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "scroll", "document.getElementByClass('a.nivo-lightbox-close').click()", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scroll", "document.getElementById('clickLink').click();", true);
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            txtcolor.Text = "";
            txtfur.Text = "";
            txtsize.Text = "";
        }
    }
}