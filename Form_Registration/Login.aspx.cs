using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\3-Third Year\2- F15\WB\ISE_WB_F15_Aaaignment_Emad_55372_leen_52984_Ghalia_57338\Homework_f15\App_Data\company.mdf;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT * FROM Users WHERE Username='"+Username.Text+"'AND Password='"+Password.Text+"'",con);
        con.Open();
        dr = cmd.ExecuteReader();
         if (dr.Read())
        {
            Session["username"] = Username.Text;
            if (Username.Text == dr[9].ToString() && Password.Text == dr[10].ToString())
            {
                if (Username.Text == "admin")
                {
                    Response.Redirect("Default2.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");

                }
            }
        }
         con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reg2.aspx");
    }
}