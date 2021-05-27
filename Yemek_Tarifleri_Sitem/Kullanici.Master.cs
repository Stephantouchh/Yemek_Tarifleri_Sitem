using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifleri_Sitem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();


        }
    }
}