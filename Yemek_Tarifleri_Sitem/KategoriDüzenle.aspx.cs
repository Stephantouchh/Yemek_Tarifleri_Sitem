using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_kategoriler where kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox3.Text = dr[1].ToString();
                    TextBox4.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", TextBox4.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}