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
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scroll", "document.getElementById('clickLink').click();", true);
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
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //String username = lusername.Text;
            // String password = lpassword.Text;
            string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //连接数据库，在webconfig中配置
            SqlCeConnection conn = new SqlCeConnection(str);
            conn.Open();

            string sql = "select * from [User] where [username]='" + lusername.Text + "' and [password] = '" + lpassword.Text + "'";

            SqlCeCommand comm = new SqlCeCommand(sql, conn);
            //comm.Parameters.AddWithValue("username", lusername.Text);
            //comm.Parameters.AddWithValue("password", lpassword.Text);

            SqlCeDataReader sdr = comm.ExecuteReader();

            if (sdr.Read())
            {
                Session["username"] = lusername.Text;
                Session["password"] = lpassword.Text;
                Response.Write(@"<script>alert('success！');</script>");
                if (string.IsNullOrEmpty(Request.QueryString["URL"]))
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Redirect(Request.QueryString["URL"]);
                }

            }
            else
            {
                Response.Write(@"<script>alert('Wrong account or password！');</script>");
            }
            conn.Close();
        }
        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");

        }

    }
}