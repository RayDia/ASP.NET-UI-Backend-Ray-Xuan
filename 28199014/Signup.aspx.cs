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
    public partial class Signup : System.Web.UI.Page
    {
        public int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            password.Attributes["value"] = password.Text;
            confirmpassword.Attributes["value"] = confirmpassword.Text;

            if (d12.Text != null && !d12.Text.Equals(""))
            {
                string date = d12.Text;
                string[] dArray = date.Split('-');
                int temp = Convert.ToInt16(dArray[0]);
                int temp1 = 2017 - temp;

                age.Text = Convert.ToString(temp1);
            }
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

        protected void ageCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            if (d12.Text != null && !d12.Text.Equals(""))
            {
                string date = d12.Text;
                string[] dArray = date.Split('-');
                int temp = Convert.ToInt16(dArray[0]);
                int temp1 = 2017 - temp;
                args.IsValid = (temp1 < 0 || temp1 > 100);
                if (temp1 >= 0 && temp1 <= 100)
                {
                    Response.Write(@"<script>alert('right age!');</script>");

                }
                else
                {
                    Response.Write(@"<script>alert('wrong age!');</script>");
                }
            }

        }

        protected void register_Click(object sender, EventArgs e)
        {
            if(flag == 0)
            {
                return;
            }
            string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //connect to db，webconfig
            SqlCeConnection conn = new SqlCeConnection(str);
            conn.Open();


            // for upload
            string strphoto = "";

            if (PhotoUpload1.FileName != "")
            {
                if (PhotoUpload1.HasFile)
                {
                    string photoExt = System.IO.Path.GetExtension(PhotoUpload1.FileName);
                    if ((photoExt != ".gif") && (photoExt != ".jpg"))
                    {
                        photoLabel.Text = "Invalid File Type";
                        return;
                    }
                    else if (PhotoUpload1.PostedFile.ContentLength > (10 * 1024 * 1024))
                    {
                        photoLabel.Text = "Too large File";
                        return;
                    }
                    //correct file
                    else
                    {

                        strphoto = "Upload/" + PhotoUpload1.FileName;
                        PhotoUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/Upload/" + PhotoUpload1.FileName);


                    }
                }
            }
            // upload end

            string sql = "INSERT INTO [User] ([username], [usertype], [email],[password],[birthday],[age],[gender]," +
                "[catsize],[catfur],[address], [petkeeping],[url],[uphoto]) VALUES ('" + username.Text + "','"
                + usertype.Text + "' ,'" + email.Text + "','" + password.Text + "','" + d12.Text + "','" + age.Text + "','"
                + genderRadioButtonList.Text + "','" + sizeDropDownList.Text + "','" + furDropDownList.Text + "','" + address.Text 
                + "','" + petkeepRadioButtonList.Text + "','" + url.Text + "','" + strphoto + "')";

            SqlCeCommand comm = new SqlCeCommand(sql, conn);

            // SqlDataReader sdr = comm.ExecuteReader();


            if (comm.ExecuteNonQuery() > 0)
            {
                Session["username"] = username.Text;
                Session["usertype"] = usertype.Text;
                Session["email"] = email.Text;
                Session["password"] = password.Text;
                Session["birthday"] = d12.Text;
                Session["age"] = age.Text;
                Session["gender"] = genderRadioButtonList.Text;
                Session["catsize"] = sizeDropDownList.Text;
                Session["catfur"] = furDropDownList.Text;
                Session["address"] = address.Text;
                Session["petkeeping"] = petkeepRadioButtonList.Text;
                Session["url"] = url.Text;
              
                Response.Write("<script>alert('success register！')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Failed！')</script>");
            }

            //if (sdr.Read())
            //{
            //    Session["username"] = username.Text;
            //    Session["usertype"] = usertype.Text;
            //    Session["email"] = email.Text;
            //    Session["password"] = password.Text;
            //    Session["birthday"] = d12.Text;
            //    Session["age"] = age.Text;
            //    Session["gender"] = genderListBox.Text;
            //    Session["catsize"] = genderListBox.Text;
            //    Session["catfur"] = furDropDownList.Text;
            //    Session["address"] = address.Text;
            //    Session["petkeeping"] = petkeepRadioButtonList.Text;
            //    Session["url"] = url.Text;
            //    Response.Write(@"<script>alert('success register！');</script>");

            //}
            //else
            //{
            //    Response.Write(@"<script>alert('Failed！');</script>");
            //}
            conn.Close();
        }

        protected void usernameCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                //string username1 = args.Value;
                string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //connect to，in webconfig
                SqlCeConnection conn = new SqlCeConnection(str);
                conn.Open();

                string sql = "select Count(*) from [User] where [username]='" + username.Text + "'";
                SqlCeCommand comm = new SqlCeCommand(sql, conn);
                int count = Convert.ToInt32(comm.ExecuteScalar());

                if (count > 0 || count == 1)
                {
                    args.IsValid = false;
                    flag = 0;
                }
                else
                {
                    args.IsValid = true;
                    flag = 1;
                }
            }
            catch (Exception)
            {
                args.IsValid = false;
                flag = 0;
            }
        }
        protected void Registertologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signin.aspx");

        }

    }
}