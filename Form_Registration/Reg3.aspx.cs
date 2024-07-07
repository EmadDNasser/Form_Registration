using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Reg3 : System.Web.UI.Page
{
    SqlConnection conection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\3-Third Year\2- F15\WB\ISE_WB_F15_Aaaignment_Emad_55372_leen_52984_Ghalia_57338\Homework_f15\App_Data\company.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("INSERT INTO Users (First_Name,Middle_Initial,Last_Name,City,State_Province,Country,Zip,Email,Username,Password,Comments) VALUES('" + first_name.Text + "','" + middle_initial.Text + "','" + last_name.Text + "','" + city.Text + "','" + state.Text + "','" + contry.Text + "','" + zip.Text + "','" + email.Text + "','" + username.Text + "','" + password.Text + "','" + comments.Text + "')", conection);
            conection.Open();
            cmd.ExecuteNonQuery();
            
            Label1.Text = "DONE !";
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            conection.Close();
        }
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("SELECT * FROM Users WHERE Username LIKE '%" + search.Text + "%'", conection);
            conection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr[0].ToString();
                first_name.Text = dr[1].ToString();
                middle_initial.Text = dr[2].ToString();
                last_name.Text = dr[3].ToString();
                city.Text = dr[4].ToString();
                state.Text = dr[5].ToString();
                contry.Text = dr[6].ToString();
                zip.Text = dr[7].ToString();
                email.Text = dr[8].ToString();
                username.Text = dr[9].ToString();
                password.Text = dr[10].ToString();
                comments.Text = dr[11].ToString();
            }
         
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            conection.Close();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        first_name.ReadOnly = false;
        middle_initial.ReadOnly = false;
        last_name.ReadOnly = false;
        city.ReadOnly = false;
        state.ReadOnly = false;
        contry.ReadOnly = false;
        zip.ReadOnly = false;
        email.ReadOnly = false;
        username.ReadOnly = false;
        password.ReadOnly = false;
        comments.ReadOnly = false;
        btnupdate.Visible = true;
        BtnEdit.Visible = false;
    }
    protected void BtnEdit0_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("DELETE FROM Users WHERE Id='" + Label2.Text + "'", conection);
            conection.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "DONE DELETED";
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            conection.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("UPDATE Users SET First_Name='" + first_name.Text + "',Middle_Initial='" + middle_initial.Text + "',Last_Name='" + last_name.Text + "',City='" + city.Text + "',State_Province='" + state.Text + "',Country='" + contry.Text + "',Zip='" + zip.Text + "',EMail='" + email.Text + "',Username='" + username.Text + "',Password='" + password.Text + "',Comments='" + comments.Text + "'WHERE Id='" + Label2.Text + "'", conection);
            conection.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "DONE EDITED";
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            conection.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}