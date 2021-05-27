using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_yemekler where yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtad.Text = dr[1].ToString();
                    txtmalzeme.Text = dr[2].ToString();
                    txttarif.Text = dr[3].ToString();
                    DropDownList1.Text = dr[7].ToString();
                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
           FileUpload1.SaveAs(Server.MapPath("/yemekler/" + FileUpload1.FileName));


            SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4,yemekresim=@p6 where yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtad.Text);
            komut.Parameters.AddWithValue("@p2", txtmalzeme.Text);
            komut.Parameters.AddWithValue("@p3", txttarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/yemekler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}