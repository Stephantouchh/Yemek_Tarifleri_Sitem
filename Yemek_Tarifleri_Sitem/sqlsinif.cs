using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace Yemek_Tarifleri_Sitem
{
    public class sqlsinif
    {
      public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=NIHAT-OVALıOĞLU;Initial Catalog=Dbo_YemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}