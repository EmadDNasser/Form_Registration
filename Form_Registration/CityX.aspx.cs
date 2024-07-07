using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class CityX : System.Web.UI.Page
{
    SqlConnection conection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\3-Third Year\2- F15\WB\ISE_WB_F15_Aaaignment_Emad_55372_leen_52984_Ghalia_57338\Homework_f15\App_Data\company.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void DropDownListCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("SELECT * FROM Stat_Province WHERE Contries_id=" + DropDownListCountry.SelectedItem.Value + " ", conection);
            conection.Open();

            DropDownListState.DataSource = cmd.ExecuteReader();
            DropDownListState.DataBind();
            DropDownListState.DataTextField = "Name";
            DropDownListState.DataValueField = "Id";
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            conection.Close();
        }
        conection.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (country.Text != "")
            {
                cmd = new SqlCommand("INSERT INTO Contries (Name) VALUES ('" + country.Text + "')", conection);
                conection.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "DONE !";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (State.Text != "")
            {
                cmd = new SqlCommand("INSERT INTO Stat_Province (Name,Contries_id) VALUES ('" + State.Text + "'," + DropDownListCountry.SelectedItem.Value + ")", conection);
                conection.Open();
                cmd.ExecuteNonQuery();
                Label2.Text = "DONE";
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (city.Text != "")
            {
                cmd = new SqlCommand("INSERT INTO Cities (Name,Stat_Province_id) VALUES ('" + city.Text + "'," + DropDownListState.SelectedItem.Value + ")", conection);
                conection.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "DONE";
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
}