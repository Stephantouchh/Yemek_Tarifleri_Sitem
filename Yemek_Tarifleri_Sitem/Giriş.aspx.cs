using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Giriş : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Add("yoneticiad", TextBox1.Text);
            Response.Redirect("Admin.aspx");
        }
    }
}