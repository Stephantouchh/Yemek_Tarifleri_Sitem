using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        string yemekid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];


            SqlCommand komut = new SqlCommand("select yemekad from tbl_yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into tbl_yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", txtadsoyad.Text);
            komut3.Parameters.AddWithValue("@p2", txtmail.Text);
            komut3.Parameters.AddWithValue("@p3", txtyorum.Text);
            komut3.Parameters.AddWithValue("@p4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}