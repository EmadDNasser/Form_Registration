using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Reg4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\3-Third Year\2- F15\WB\ISE_WB_F15_Aaaignment_Emad_55372_leen_52984_Ghalia_57338\Homework_f15\App_Data\company.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            username.Text = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("UPDATE Users SET First_Name='" + first_name.Text + "',Middle_Initial='" + midle_initial.Text + "',Last_Name='" + last_name.Text + "',City='" + city.SelectedItem + "',State_Province='" + state.SelectedItem + "',Country='" + country.SelectedItem + "',Comments='" + comments.Text + "' WHERE Username= '"+username.Text+"' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "DONE !";
        }
        catch (SqlException ex)
        {
           Label1.Text= ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
    protected void edit_password_Click(object sender, EventArgs e)
    {
        new_pass.Visible = true;
        repeat_pass.Visible = true;
        NewPass.Visible = true;
        RepeatPass.Visible = true;
        submit.Visible = true;
        cancel.Visible = true;
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        new_pass.Visible = false;
        repeat_pass.Visible = false;
        NewPass.Visible = false;
        RepeatPass.Visible = false;
        submit.Visible = false;
        cancel.Visible = false;

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (new_pass.Text == repeat_pass.Text)
            {
                cmd = new SqlCommand("UPDATE Users SET Password='" + new_pass.Text + "' WHERE Username= '" + username.Text + "' ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                Label2.Visible = true;
                Label2.Text = "DONE !";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Password didn't matched !";
                return;
            }
        }
        catch (SqlException ex)
        {
            Label2.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}