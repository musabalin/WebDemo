using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitesi
{
    public partial class YemekOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        sqlsinif baglan = new sqlsinif();
        protected void BtnTarif_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtTarifMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", TxtTarifYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpTarif.FileName);
            komut.Parameters.AddWithValue("@t5", TxtTarifKisiAdi.Text);
            komut.Parameters.AddWithValue("@t6", TxtTarifMailAdi.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır.");

        }
    }
}