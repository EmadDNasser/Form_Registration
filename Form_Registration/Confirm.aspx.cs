using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Confirm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\3-Third Year\2- F15\WB\ISE_WB_F15_Aaaignment_Emad_55372_leen_52984_Ghalia_57338\Homework_f15\App_Data\company.mdf;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT * FROM account_Confirm WHERE confirm_number='" + confirm_num.Text + "'AND Username='" + username.Text + "'AND Password='"+pass.Text+"'", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           
            if (username.Text == dr[2].ToString() && pass.Text == dr[3].ToString() && confirm_num.Text==dr[1].ToString())
            {
                string s, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10;
                s = Session["value"].ToString();
                s1 = Session["value1"].ToString();
                s2 = Session["value2"].ToString();
                s3 = Session["value3"].ToString();
                s4 = Session["value4"].ToString();
                s5 = Session["value5"].ToString();
                s6 = Session["value6"].ToString();
                s7 = Session["value7"].ToString();
                s8 = Session["value8"].ToString();
                s9 = Session["value9"].ToString();
                s10 = Session["value10"].ToString();

                dr.Close();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO Users (First_Name,Middle_Initial,Last_Name,City,State_Province,Country,Zip,Email,Username,Password,Comments) VALUES('" + s + "','" + s1 + "','" + s2 + "','" +s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s7 + "','" + s8 + "','" + s9 + "','" + s10 + "')", con);
                cmd1.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "ERROR";
                return;
            }
        }
        
        con.Close();
    }
}