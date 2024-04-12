using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System;
using System.Data.Sql;



/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
    public SqlConnection con = new SqlConnection();

    public SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter adp = new SqlDataAdapter();
    public SqlDataReader dr;
    public SqlCommandBuilder scb = new SqlCommandBuilder();
    public DataSet ds = new DataSet();

    //  String Connectionstr = @"Data Source=PC1\ABHI_OFC;Initial Catalog=CENTRALSTORE;uid=sa;pwd=123;Integrated Security=False;Connect Timeout=200;Max Pool Size=20000;";

    String Connectionstr = ConfigurationManager.ConnectionStrings["VIDHIKDB"].ConnectionString;

    public Connection()
    {
        con.ConnectionString = Connectionstr;
        cmd.Connection = con;
        adp.SelectCommand = cmd;
    }
    public static String varDB = "Subharti.";

    public string PrePost_InvertedComma(string value)
    {
        String[] aa = value.Split(',');
        string a = "";
        int iteration = 0;
        foreach (string ab in aa)
        {
            iteration++;
            if (aa.Length == iteration)
            { a += "'" + ab + "'"; }
            else { a += "'" + ab + "',"; }
        }

        return a;
    }

    public void MsgBox(string msg, Page refP)
    {
        Label lbl = new Label();
        string lb = "window.alert('" + msg + "')";
        ScriptManager.RegisterClientScriptBlock(refP, GetType(), "UniqueKey", lb, true);
        // ScriptManager.RegisterStartupScript(refP, this.GetType(), "modal-success", "$('#modal-success').modal();", true);
        refP.Controls.Add(lbl);
    }
    public void MsgBoxtoaster(string msg, Page refP)
    {
        Label lbl = new Label();

        string lb = "  setTimeout(function () {toastr.info('" + msg + "'); }, 100);";
        ScriptManager.RegisterStartupScript(refP, GetType(), "abc", lb, true);
        refP.Controls.Add(lbl);
    }
    public void MsgBoxSwal(string msg, Page refP, string icon, string position)
    {
        Label lbl = new Label();
        // string lb = "window.alert('" + msg + "')";
        string lb = "window.onload = function abc() {  Swal.mixin({ toast: true, position: '" + position + "', showConfirmButton: false, timer: 5000 }).fire({icon: '" + icon + "',title: '" + msg + "'}); };";

        //  ScriptManager.RegisterClientScriptBlock(refP, GetType(), "UniqueKey", lb, true);
        ScriptManager.RegisterStartupScript(refP, this.GetType(), "abc", lb, true);
        refP.Controls.Add(lbl);
    }
    public void MsgBoxSwalinsideupdate(string msg, Page refP, string icon, string position, object sender)
    {
        Label lbl = new Label();
        // string lb = "window.alert('" + msg + "')";
        string lb = " Swal.mixin({ toast: true, position: '" + position + "', showConfirmButton: false, timer: 5000 }).fire({icon: '" + icon + "',title: '" + msg + "'}); ";
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "abc", lb, true);
        refP.Controls.Add(lbl);
    }
    public void MsgBoxSimpleSwal(string msg1, string msg2, string icon, Page refP)
    {
        //Label lbl = new Label();
        //// string lb = "window.alert('" + msg + "')";
        //// string lb = "window.onload = function abc() {  Swal.fire('"+msg1+"','"+msg2+"','"+icon+"'); };"; 
        //string lb = "Swal.fire('" + msg1 + "','" + msg2 + "','" + icon + "');";
        ////  ScriptManager.RegisterClientScriptBlock(refP, GetType(), "UniqueKey", lb, true);
        ////  refP.ClientScript.RegisterStartupScript(GetType(), "swal", "Swal.fire('Good job!','You clicked the button!','success');", true);
        ////  ScriptManager.RegisterStartupScript(refP, this.GetType(), "abc", lb, true);

        //ScriptManager.RegisterStartupScript(refP, GetType(), "abc", lb, true);
        //refP.Controls.Add(lbl);


        Label lbl = new Label();
        // string lb = "window.alert('" + msg + "')";
        string lb = "window.onload = function abc() {Swal.fire('" + msg1 + "','" + msg2 + "','" + icon + "')};";

        // ScriptManager.RegisterClientScriptBlock(refP, GetType(), "UniqueKey", lb, true);
        // ScriptManager.RegisterStartupScript(refP, this.GetType(), "abc", lb, true);

        ScriptManager.RegisterStartupScript(refP, this.GetType(), "abc", lb, true);
        refP.Controls.Add(lbl);
    }
    public void MsgBoxSimpleSwalinsideupdate(string msg1, string msg2, string icon, Page refP, object sender)
    {
        Label lbl = new Label();
        // string lb = "window.alert('" + msg + "')";
        string lb = " Swal.fire('" + msg1 + "','" + msg2 + "','" + icon + "'); ";
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "abc", lb, true);
        refP.Controls.Add(lbl);
    }


    public void ddlbind(DropDownList id, string q, string t, string v)
    {
        con.ConnectionString = Connectionstr;
        DataTable dt = new DataTable();
        SqlConnectionOpen();
        adp = new SqlDataAdapter(q, con);
        adp.Fill(dt);
        id.DataSource = dt;
        id.DataTextField = t;
        id.DataValueField = v;
        id.DataBind();
        //id.Items.Insert(0, "---Select---");
        id.Items.Insert(0, new ListItem("---Select---", "0"));
        SqlConnectionClose();

    }
    public string Getdate(String SqlQry)
    {
        string dt = "";
        con.Close();
        SqlConnectionOpen();
        SqlCommand cmd = new SqlCommand(SqlQry, con);
        try
        {
            dt = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            dt = "";
        }
        con.Close();
        return dt;
    }
    public void ddlbindUserid(DropDownList id, string q, string t, string v)
    {
        con.ConnectionString = Connectionstr;
        DataSet dt = new DataSet();
        DataView dv = new DataView();
        SqlConnectionOpen();
        adp = new SqlDataAdapter(q, con);
        adp.Fill(dt);
        if (dt.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
            {
                dt.Tables[0].Rows[i]["userID"] = dt.Tables[0].Rows[i]["userID"].ToString();
                dt.Tables[0].Rows[i]["UserNames"] = dt.Tables[0].Rows[i]["userName"].ToString();
                dt.Tables[0].Rows[i]["Usertype"] = dt.Tables[0].Rows[i]["Usertype"].ToString();
            }
            dv = dt.Tables[0].DefaultView;
            dv.RowFilter = "Usertype='1' or Usertype='User'";

        }
        id.DataSource = dv;
        id.DataTextField = t;
        id.DataValueField = v;
        id.DataBind();
        //id.Items.Insert(0, "---Select---");
        id.Items.Insert(0, new ListItem("---Select---", "0"));
        SqlConnectionClose();

    }

    public void ddlbindUserid(DropDownList id, string q, string t, string v, string usrID)
    {
        con.ConnectionString = Connectionstr;
        DataSet dt = new DataSet();
        DataView dv = new DataView();
        SqlConnectionOpen();
        adp = new SqlDataAdapter(q, con);
        adp.Fill(dt);
        if (dt.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
            {
                dt.Tables[0].Rows[i]["Userid"] = dt.Tables[0].Rows[i]["Userid"].ToString();
                dt.Tables[0].Rows[i]["createUid"] = dt.Tables[0].Rows[i]["createUid"].ToString();
                dt.Tables[0].Rows[i]["UserNames"] = '(' + dt.Tables[0].Rows[i]["Userid"].ToString() + ") " + dt.Tables[0].Rows[i]["Username"].ToString() + " - " + dt.Tables[0].Rows[i]["Usertype"].ToString() + " , " + dt.Tables[0].Rows[i]["dept"].ToString();
            }
            dv = dt.Tables[0].DefaultView;
            dv.RowFilter = "createUid='" + usrID.ToString() + "'";

        }
        id.DataSource = dv;
        id.DataTextField = t;
        id.DataValueField = v;
        id.DataBind();
        id.Items.Insert(0, new ListItem("---Select---", "0"));
        SqlConnectionClose();

    }
    public void FillGridview(GridView id, string st)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        DataTable dt = new DataTable(st);
        SqlDataAdapter adp = new SqlDataAdapter(st, con);
        adp.Fill(dt);
        id.DataSource = dt;
        id.DataBind();
        con.Close();
    }
    public void New_FillGridview(GridView id, string st, String[] datakeyname)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        DataTable dt = new DataTable(st);
        SqlDataAdapter adp = new SqlDataAdapter(st, con);
        adp.Fill(dt);
        id.DataSource = dt;
        id.DataKeyNames = datakeyname;
        id.DataBind();
        con.Close();
    }
    public string TelegramMessage_chat(string UID, string From_UID, string DemandNumner, String MessageContent)
    {
        string From_User = New_Get_details("SELECT userName FROM Login where uid=@fuid", Parameter("@fuid", From_UID));
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "SELECT uid,userName,mobile FROM Login where uid=@uid";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@uid", UID);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string query2 = "insert into TelegramMessage (MessageText,UserMob,DemandNumber) values(@message,@mobno,@demandno)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@message", "Dear *" + dt.Rows[0]["userName"].ToString().Trim() + "* ...,\n " + MessageContent + "\n Message From: " + From_User);
            cmd.Parameters.AddWithValue("@mobno", dt.Rows[0]["mobile"].ToString().Trim());
            cmd.Parameters.AddWithValue("@demandno", DemandNumner);
            int p = cmd.ExecuteNonQuery();
            con.Close();
            return "MSGINSERTED";

        }
        else { con.Close(); return "NORECORD"; }

    }
    public string TelegramMessage(string UID, string DemandNumner, String MessageContent)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "SELECT uid,userName,mobile FROM Login where uid=@uid";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@uid", UID);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string query2 = "insert into TelegramMessage (MessageText,UserMob,DemandNumber) values(@message,@mobno,@demandno)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@message", "Dear *" + dt.Rows[0]["userName"].ToString().Trim() + "* ...,\n " + MessageContent);
            cmd.Parameters.AddWithValue("@mobno", dt.Rows[0]["mobile"].ToString().Trim());
            cmd.Parameters.AddWithValue("@demandno", DemandNumner);
            int p = cmd.ExecuteNonQuery();
            con.Close();
            return "MSGINSERTED";

        }
        else { con.Close(); return "NORECORD"; }

    }
    public string TelegramMessage2(string DemandNumner, String MessageContent)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "SELECT distinct Demands.Mobile,Login.userName FROM Demands inner join login on Login.uid= Demands.Demand_usr where DemandNo=@dmdno";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@dmdno", DemandNumner);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string query2 = "insert into TelegramMessage (MessageText,UserMob,DemandNumber) values(@message,@mobno,@demandno)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@message", "Dear *" + dt.Rows[0]["userName"].ToString().Trim() + "* ...,\n " + MessageContent);
            cmd.Parameters.AddWithValue("@mobno", dt.Rows[0]["Mobile"].ToString().Trim());
            cmd.Parameters.AddWithValue("@demandno", DemandNumner);
            int p = cmd.ExecuteNonQuery();
            con.Close();
            return "MSGINSERTED";

        }
        else { con.Close(); return "NORECORD"; }

    }

    public void Demand_LOG(string DemandNO, String ActionMsg, String UID, String UID_forname)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "SELECT userName FROM  login where uid=@uidforname";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@uidforname", UID_forname);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string query2 = "insert into Demand_log (DemandNo,ActionTaken,ActionTime,From_UserID) values(@demandno,@actionmsg,GetDate(),@uid)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.Parameters.AddWithValue("@actionmsg", ActionMsg + " " + dt.Rows[0]["userName"].ToString());
            cmd.Parameters.AddWithValue("@demandno", DemandNO);
            int p = cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    public void Receipt_LOG(string ReceiptID, String ActionMsg, String UID, String UID_forname)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "SELECT userName FROM  login where uid=@uidforname";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@uidforname", UID_forname);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string query2 = "insert into ReceiptBook_log(RID,ActionTaken,ActionTime,From_UserID) values(@rid,@actionmsg,GetDate(),@uid)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.Parameters.AddWithValue("@actionmsg", ActionMsg + " " + dt.Rows[0]["userName"].ToString());
            cmd.Parameters.AddWithValue("@rid", ReceiptID);
            int p = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public void PO_LOG(string PONO, String ActionMsg, String UID, String UID_forname)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "SELECT userName FROM  login where uid=@uidforname";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@uidforname", UID_forname);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string query2 = "insert into PO_LOG(PONO,ActionTaken,ActionTime,FromUserID) values(@pono,@actionmsg,GetDate(),@uid)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.Parameters.AddWithValue("@actionmsg", ActionMsg + " " + dt.Rows[0]["userName"].ToString());
            cmd.Parameters.AddWithValue("@pono", PONO);
            int p = cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    public string IUD(string userid, string page1)
    {
        con.ConnectionString = Connectionstr;
        con.Open();
        string id = "";
        string str = "select Permission,InsertOP,updateOP,DeleteOP FROM menuPermission where userid='" + userid + "' and menuid=(select id from menuStructure where href='" + page1 + "')";

        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            id = dt.Rows[0]["Permission"] + "|" + dt.Rows[0]["InsertOP"] + "|" + dt.Rows[0]["updateOP"] + "|" + dt.Rows[0]["DeleteOP"];
        }
        con.Close();
        return id;
    }
    public int Insert(string q)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        i = cmd.ExecuteNonQuery();
        con.Close();
        return (i);
    }
    public int UpdateQ(string q)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        i = cmd.ExecuteNonQuery();
        con.Close();
        return (i);
    }
    public int DeleteQ(string q)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        i = cmd.ExecuteNonQuery();
        con.Close();
        return (i);
    }
    public int countnmQ(string q)
    {
        con.ConnectionString = Connectionstr;
        int i;
        ds.Clear();
        cmd.CommandText = q;
        adp.Fill(ds, "vt");
        return (i = Convert.ToInt32(ds.Tables["vt"].Rows.Count));
    }
    public int selectQ(string q)
    {
        con.ConnectionString = Connectionstr;
        SqlConnectionOpen();
        int i;
        try
        {
            DataTable dt = new DataTable();
            adp = new SqlDataAdapter(q, con);
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
                i = 1;
            else
                i = 0;
            con.Close();
            con.Dispose();
        }
        finally
        {
            con.Close();
        }
        return (i);
    }
    public string Get_details(string sql)
    {
        con.ConnectionString = Connectionstr;

        con.Open();
        string detail = String.Empty;
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter(sql, con);
            if (ad.SelectCommand.ExecuteScalar() != null)
            {
                detail = ad.SelectCommand.ExecuteScalar().ToString();
            }
            ad.Dispose();
            con.Close();
        }
        finally
        {
            con.Close();
        }
        return detail;
    }
    public static string ConvertNumbertoWords(int number)
    {
        if (number == 0)
            return "ZERO";
        if (number < 0)
            return "minus " + ConvertNumbertoWords(Math.Abs(number));
        string words = "";
        if ((number / 100000) > 0)
        {
            words += ConvertNumbertoWords(number / 100000) + " LACK ";
            number %= 100000;
        }
        if ((number / 1000) > 0)
        {
            words += ConvertNumbertoWords(number / 1000) + " THOUSAND ";
            number %= 1000;
        }
        if ((number / 100) > 0)
        {
            words += ConvertNumbertoWords(number / 100) + " HUNDRED ";
            number %= 100;
        }
        if (number > 0)
        {
            if (words != "")
                words += "AND ";
            var unitsMap = new[] { "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN", "EIGHTEEN", "NINETEEN" };
            var tensMap = new[] { "ZERO", "TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY" };

            if (number < 20)
                words += unitsMap[number];
            else
            {
                words += tensMap[number / 10];
                if ((number % 10) > 0)
                    words += " " + unitsMap[number % 10];
            }
        }
        return words;
    }

    //   public void SetParameters(SqlCommand command, params SqlParameter[] parameters)
    //   {
    //       command.Parameters.AddRange(parameters);
    //   }

    public SqlParameter Parameter(string name, object value)
    {
        return new SqlParameter(name, value);
    }
    public DataTable NEW_FillDataTable(String query_with_parameters, params SqlParameter[] parameters)
    {
        con.ConnectionString = Connectionstr;
        DataTable dt = new DataTable();
        SqlConnectionOpen();

        cmd.CommandText = query_with_parameters;

        try
        {
            cmd.Parameters.AddRange(parameters);
            dt.Load(cmd.ExecuteReader());
            cmd.Parameters.Clear();
        }
        catch { }
        finally
        {
            SqlConnectionClose();
        }
        //  SqlConnectionClose();
        return dt;
    }
    public string New_Get_details(string query_with_parameters, params SqlParameter[] parameters)
    {
        con.ConnectionString = Connectionstr;

        con.Open();
        string detail = String.Empty;
        try
        {
            cmd.CommandText = query_with_parameters;
            cmd.Parameters.AddRange(parameters);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            if (ad.SelectCommand.ExecuteScalar() != null)
            {
                detail = ad.SelectCommand.ExecuteScalar().ToString();
            }
            ad.Dispose();
            cmd.Parameters.Clear();
            con.Close();
        }
        finally
        {
            con.Close();
        }
        return detail;
    }
    public int New_UpdateQ(string query_with_parameters, params SqlParameter[] parameters)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(query_with_parameters, con);
        cmd.Parameters.AddRange(parameters);
        i = cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        return (i);
    }
    public string New_SP_Insert(string ProcedureName, string Outputparams, params SqlParameter[] parameters)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(ProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(parameters);
        cmd.Parameters.Add(Outputparams, SqlDbType.Int).Direction = ParameterDirection.Output;
        i = cmd.ExecuteNonQuery();
        string id = cmd.Parameters[Outputparams].Value.ToString();

        cmd.Parameters.Clear();
        con.Close();
        return (id);
    }
    public string New_SP_Insert_STR_OP(string ProcedureName, string Outputparams, params SqlParameter[] parameters)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(ProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(parameters);
        cmd.Parameters.Add(Outputparams, SqlDbType.NVarChar, 100).Direction = ParameterDirection.Output;
        i = cmd.ExecuteNonQuery();
        string id = cmd.Parameters[Outputparams].Value.ToString();

        cmd.Parameters.Clear();
        con.Close();
        return (id);
    }
    public int New_Insert(string query_with_parameters, params SqlParameter[] parameters)
    {
        con.ConnectionString = Connectionstr;
        int i;
        con.Open();
        SqlCommand cmd = new SqlCommand(query_with_parameters, con);
        cmd.Parameters.AddRange(parameters);
        i = cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        return (i);
    }
    public DataTable FillDataTable(string sql)
    {
        con.ConnectionString = Connectionstr;
        DataTable dt = new DataTable();
        SqlConnectionOpen();
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        try
        {

            adp.Fill(dt);
        }
        finally
        {
            adp.Dispose();
            SqlConnectionClose();
        }
        SqlConnectionClose();
        return dt;
    }
    public void runSqlQueryStr(String SqlQry, out string j)
    {
        con.Close();
        SqlConnectionOpen();
        SqlCommand cmd = new SqlCommand(SqlQry, con);
        try
        {
            j = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            j = "FALSE";
        }
        con.Close();
        //cmd.ExecuteNonQuery();
    }
    public void SqlConnectionOpen()
    {
        con.ConnectionString = Connectionstr;

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        else
        {
            con.Close();
            con.Open();
        }
    }

    public void SqlConnectionClose()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        else
        {
            con.Close();
        }
    }
    public void DisposeConnection()
    {
        if (con != null)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Dispose();
            // con = null;
        }
    }
    public static string Encrypt(string text)
    {
        string secret = "SanjayKumar";
        if (string.IsNullOrEmpty(text)) { throw new ArgumentNullException("text"); }

        if (string.IsNullOrEmpty(secret))
            throw new ArgumentNullException("secret");

        var salt = Encoding.UTF8.GetBytes(secret);

        using (var aes = new RijndaelManaged())
        {
            var key = new Rfc2898DeriveBytes(secret, salt);

            aes.Key = key.GetBytes(aes.KeySize / 8);

            var encryptor = aes.CreateEncryptor(aes.Key, aes.IV);

            using (var ms = new MemoryStream())
            {
                ms.Write(BitConverter.GetBytes(aes.IV.Length), 0, sizeof(int));
                ms.Write(aes.IV, 0, aes.IV.Length);
                using (var cs = new CryptoStream(ms, encryptor, CryptoStreamMode.Write))
                using (var sw = new StreamWriter(cs))
                {
                    sw.Write(text);
                }
                return Convert.ToBase64String(ms.ToArray());
            }
        }
    }

    public static string Decrypt(string cipher)
    {
        string secret = "SanjayKumar";
        if (string.IsNullOrEmpty(cipher))
            throw new ArgumentNullException("cipher");
        if (string.IsNullOrEmpty(secret))
            throw new ArgumentNullException("secret");

        var salt = Encoding.UTF8.GetBytes(secret);

        using (var aes = new RijndaelManaged())
        {
            var key = new Rfc2898DeriveBytes(secret, salt);

            var bytes = Convert.FromBase64String(cipher);
            using (var ms = new MemoryStream(bytes))
            {
                aes.Key = key.GetBytes(aes.KeySize / 8);
                aes.IV = ReadByteArray(ms);

                var decryptor = aes.CreateDecryptor(aes.Key, aes.IV);
                using (var cs = new CryptoStream(ms, decryptor, CryptoStreamMode.Read))
                using (var sr = new StreamReader(cs))
                {
                    return sr.ReadToEnd();
                }
            }
        }
    }
    private static byte[] ReadByteArray(Stream s)
    {
        var rawLength = new byte[sizeof(int)];
        if (s.Read(rawLength, 0, rawLength.Length) != rawLength.Length)
        {
            throw new SystemException("Stream did not contain properly formatted byte array");
        }

        var buffer = new byte[BitConverter.ToInt32(rawLength, 0)];
        if (s.Read(buffer, 0, buffer.Length) != buffer.Length)
        {
            throw new SystemException("Did not read byte array properly");
        }

        return buffer;
    }

    public static string GetCurrentPageName()
    {
        string pageName = "";
        string Path = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
        System.IO.FileInfo Info = new System.IO.FileInfo(Path);
        string[] pathal = Path.Split('/');
        pageName = Path;
        //if (pathal.Length == 5)
        //{
        //  //  pageName = "../" + pathal[3].ToString() + "/" + pathal[4].ToString();
        //    pageName = "/" + pathal[3].ToString() + "/" + pathal[4].ToString();
        //}
        //if (pathal.Length == 3)
        //{
        //   // pageName = "../" + pathal[1].ToString() + "/" + pathal[2].ToString() + ".aspx";
        //    pageName = "/" + pathal[1].ToString() + "/" + pathal[2].ToString() + "";
        //}
        return pageName.ToUpper();
    }
    public string StudyLogs(string Desc, string STID, string UID)
    {
        try
        {          

            Connection obj = new Connection();
         
            string a = obj.New_SP_Insert_STR_OP("SPLogs", "@returnoutput",
                   obj.Parameter("@Description", Desc),
                   obj.Parameter("@stid", STID),
                   obj.Parameter("@uid", UID),
                   obj.Parameter("@FLAG", "StudyLogsInsert"));
            return a;
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }

    }
    public string Logs(string Desc, string UID)
    {
        try
        {
            Connection obj = new Connection();

            string a = obj.New_SP_Insert_STR_OP("SPLogs", "@returnoutput",
                        obj.Parameter("@Description", Desc),
                        obj.Parameter("@uid", UID),
                        obj.Parameter("@FLAG", "LogsInserted"));

            return a;
        }
        catch (Exception ex)
        {
            return ex.ToString();

        }
    }


}