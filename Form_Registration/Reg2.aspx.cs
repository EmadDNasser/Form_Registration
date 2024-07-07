using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
public partial  class Reg2 : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\3-Third Year\2- F15\WB\ISE_WB_F15_Aaaignment_Emad_55372_leen_52984_Ghalia_57338\Homework_f15\App_Data\company.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void zib_TextChanged(object sender, EventArgs e)
    {
        if (zip.Text.Length < 5 || zip.Text.Length > 10 )
        {

            CustomValidator1.IsValid = false;
        }
        else
        {
            CustomValidator1.IsValid = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection.Open();
        SqlDataReader dr;
        cmd = new SqlCommand("SELECT * FROM Users WHERE Username='"+username.Text+"'",connection);
        cmd.Parameters.AddWithValue("@Username", username.Text);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            Label1.Text = "EXSIST";
            connection.Close();
        }
        else
        {
            connection.Close();
            Session["value"] = first_name.Text;
            Session["value1"] = middle_initial.Text;
            Session["value2"] = last_name.Text;
            Session["value3"] = cities.SelectedItem;
            Session["value4"] = state.SelectedItem;
            Session["value5"] = countries.SelectedItem;
            Session["value6"] = zip.Text;
            Session["value7"] = email.Text;
            Session["value8"] = username.Text;
            Session["value9"] = password.Text;
            Session["value10"] = comments.Text;
            
            Random rnd1 = new Random();
            string s1 = "";
            string s2 = "";
            for (int i = 1; i <= 100; i++)
            {
                s1 = rnd1.Next(1000, 10000).ToString();
            }
            s2 = s1;
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("");
            msg.To.Add(email.Text);
            msg.Body ="Hi "+first_name.Text +"\n"+"Thanks for registration. These are your information:\nUsername: "+username.Text+"\nYour Password: "+password.Text+"\nYour Confermation Code: "+ s2;
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            NetworkCredential net = new System.Net.NetworkCredential();
            net.UserName = "";
            net.Password = "";
            client.UseDefaultCredentials = false;
            client.Credentials = net;
            client.Port = 587;
            client.EnableSsl = true;
            client.Timeout = 50000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            msg.Subject = "Confirm your account";
            client.Send(msg);

            SqlCommand cmd2;
            cmd2 = new SqlCommand("INSERT INTO account_Confirm (confirm_number,Username,Password) VALUES('" + s2 + "','" + username.Text + "','" + password.Text + "')", connection);
            connection.Open();
            cmd2.ExecuteNonQuery();
            connection.Close();

            Response.Redirect("Confirm.aspx");

        }
    }
}