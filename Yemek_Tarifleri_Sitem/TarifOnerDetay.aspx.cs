using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_tarifler where tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txttarifad.Text = dr[1].ToString();
                    txtmalzemeler.Text = dr[2].ToString();
                    txtyapilis.Text = dr[3].ToString();
                    txtoneren.Text = dr[5].ToString();
                    txtonerenmail.Text = dr[6].ToString();
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

        protected void btnonayla_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifad=@p1,tarifmalzeme=@p2,tarifyapilis=@p3,tarifsahip=@p4,tarifsahipmail=@p5,tarifdurum=1 where tarifid=@p6", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txttarifad.Text);
            komut.Parameters.AddWithValue("@p2", txtmalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", txtyapilis.Text);
            komut.Parameters.AddWithValue("@p4", txtoneren.Text);
            komut.Parameters.AddWithValue("@p5", txtonerenmail.Text);
            komut.Parameters.AddWithValue("@p6", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txttarifad.Text);
            komut2.Parameters.AddWithValue("@p2", txtmalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txtyapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}