using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class iletisim : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_mesajlar (mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtadsoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtkonu.Text);
            komut.Parameters.AddWithValue("@p3", txtmail.Text);
            komut.Parameters.AddWithValue("@p4", txtmesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}