using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select yorumadsoyad,yorummail,yorumicerik,yemekad from tbl_yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtad.Text = dr[0].ToString();
                    txtmail.Text = dr[1].ToString();
                    txticerik.Text = dr[2].ToString();
                    txtyemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void btnonayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}