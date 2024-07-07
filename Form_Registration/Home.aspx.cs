using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["username"] != null)
        //{
        //    username.Text = Session["username"].ToString();
        //}
        //else
        //{
        //    Response.Redirect("Login.aspx");
        //}
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reg1.html");
    }
    protected void LinkButton2_click(object sender , EventArgs e)
    {
        Response.Redirect("Reg2.aspx");
    }

    protected void LinkButton3_click(object sender, EventArgs e)
    {
        Response.Redirect("Reg3.aspx");
    }
    protected void LinkButton4_click(object sender, EventArgs e)
    {
        Response.Redirect("Reg4.aspx");
    }
    protected void LinkButton5_click(object sender, EventArgs e)
    {
        Response.Redirect("CityX.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}