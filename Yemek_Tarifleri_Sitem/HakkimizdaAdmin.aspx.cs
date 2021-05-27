using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class HakkimizdaAdminn : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_hakkimizda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtmetin.Text = dr[0].ToString();
                }
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("update tbl_hakkimizda set Metin=@a1", bgl.baglanti());
            komut.Parameters.AddWithValue("@a1", txtmetin.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
