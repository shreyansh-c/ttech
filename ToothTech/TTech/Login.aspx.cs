using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToothTech.TTech
{
    public partial class Login : System.Web.UI.Page
    {
        string clientid = "388836573808-dcfvec4moer2882oml6res4mgvkripqc.apps.googleusercontent.com";
        string clientsecret = "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";


        string redirection_url = "https://pacs.subharti.org/CPACS/SignUpGmail.aspx"; // in case of published of website
                                                                                     // string redirection_url = "http://localhost:55766/CPACS/SignUpGmail.aspx"; //in case of local
                                                                                     // string url = "https://accounts.google.com/o/oauth2/token";
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["GMAILACCOUNTCRETAED"] != null)
                {

                    switch (Session["GMAILACCOUNTCRETAED"])
                    {
                        case "CREATED":
                            obj.MsgBoxSimpleSwal("Note", "Your Username and Password is sent to your gmail account!!. Kindly use these credentials for login.", "info", this.Page);
                            Session.Remove("GMAILACCOUNTCRETAED");
                            Session["GMAILACCOUNTCRETAED"] = null;
                            break;
                        case "ALLREADYCREATED":
                            obj.MsgBoxSimpleSwal("Note", "Your account already exist. kindly use forgot password to get your password.", "info", this.Page);
                            Session.Remove("GMAILACCOUNTCRETAED");
                            Session["GMAILACCOUNTCRETAED"] = null;
                            break;
                    }

                }

            }
        }
        protected void kt_login_signin_submit_Click(object sender, EventArgs e)
        {
            int l = 0;
            obj.con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from Login where upper(status)='ACTIVE' and UserID=@userid", obj.con);
            adp.SelectCommand.Parameters.AddWithValue("@userid", email.Text);
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                obj.con.Close();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["UserID"].ToString().ToUpper() == email.Text.ToUpper() && Connection.Decrypt(dt.Rows[i]["Pass"].ToString()).ToUpper() == password.Text.ToUpper())
                    {
                        validity(dt.Rows[i]["Usertype"].ToString(), dt.Rows[i]["Uid"].ToString(), dt.Rows[i]["validity"].ToString(), dt.Rows[i]["stvalidity"].ToString(), dt.Rows[i]["edvalidity"].ToString(), sender);
                    }
                    else
                    {
                        l++;
                    }
                }
            }
            else
            {
                obj.MsgBoxSimpleSwal("Note", "Invaild User ID And Password!! or Contact IT Administrator for new user to activate account.", "info", this);
            }
            if (l > 0)
            {
                obj.MsgBoxSimpleSwal("Note", "Invaild User ID And Password!! or Contact IT Administrator for new user to activate account.", "info", this);
            }
        }

        void validity(string usertype, string id, string vtype, string vs, string ve, object sender)
        {

            if (vtype.ToUpper() == "DATE BY")
            {
                if (Convert.ToDateTime(Convert.ToDateTime(vs)) <= Convert.ToDateTime(Convert.ToDateTime(ve)))
                {
                    InsertLoginDetail(id);
                    obj.UpdateQ("Update login set stvalidity=convert(date,'" + Convert.ToString(Convert.ToDateTime(obj.Getdate("Select GETDATE()")).ToString("dd/MM/yyyy")) + "',103) where Uid='" + id + "'");
                    Session["Vmgs"] = magdate(vs, ve);

                    Session["Usertype"] = usertype;
                    Session["UID"] = id;
                    //Session.Timeout = 60;


                    if (usertype == "SUPER" || usertype == "1") // check user type super or admin
                    {
                        // Response.Redirect("Default.aspx");
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {

                    obj.MsgBoxSimpleSwal("OOPS..", " Your Login has Expired.Please Contact Administrator", "warning", this);
                }
            }
            if (vtype.ToUpper() == "CONTINUE")
            {
                InsertLoginDetail(id);
                // Session["Vmgs"] = magdate(vs, ve);               
                Session["Usertype"] = usertype;
                Session["UID"] = id;

                if (usertype == "SUPER" || usertype == "1") // check user type super or admin
                {
                    // Response.Redirect("Default.aspx");
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        string magdate(string vs, string ve)
        {
            DateTime dt = Convert.ToDateTime(Convert.ToDateTime(ve));
            DateTime dt2 = Convert.ToDateTime(Convert.ToDateTime(vs));
            TimeSpan diffResult = dt.Subtract(dt2);
            double h = diffResult.TotalDays;
            string t = "";
            if (h >= 1.0 && h <= 3.0)
            {
                t = "Your Account will be expired in " + h + " days. Please Contact Administrator.!!";
            }
            return t.Trim();
        }
        void InsertLoginDetail(string uid)
        {
            try
            {
                Connection con = new Connection();
                string qry = "insert into LoginSession(UID,Status,Device,IPAddress,Atime,Description)" + "values(@UID,@Status,@Device,@IPAddress,GETDATE(),@Description)";
                int i = obj.New_Insert(qry, obj.Parameter("@UID", uid),
                    obj.Parameter("@Status", "OK"),
                    obj.Parameter("@Device", Request.Browser.Browser + "-V-" + Request.Browser.Version),
                    obj.Parameter("@IPAddress", GETIPAddress_Global_ASP()),
                    obj.Parameter("@Description", "Login")

                    );


            }
            catch (Exception ex)
            {

            }

        }


        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        ///
        protected void gmaillogin_Click(object sender, EventArgs e)
        {
            // string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            string url2 = "https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(url2);
        }
        //////////////////////////////////////
        public static string GETIPAddress_Global_ASP()
        {
            string address = " ";
            WebRequest request = WebRequest.Create("http://checkip.dyndns.org/");
            using (WebResponse response = request.GetResponse())
            using (StreamReader stream = new StreamReader(response.GetResponseStream()))
            {
                address = stream.ReadToEnd();
            }
            int first = address.IndexOf("Address: ") + 9;
            int last = address.IndexOf("</body>");
            address = address.Substring(first, last - first);
            return address;
        }
    }
}