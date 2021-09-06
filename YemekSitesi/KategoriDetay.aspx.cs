using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitesi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        sqlsinif baglan = new sqlsinif();
        string KategoriID = "";//anasayfadan gönderilen id için oluşturulan değişken
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriID = Request.QueryString["KategoriID"];//anasayfadan gelen değişkeni yakalama komutu
            SqlCommand komut =  new SqlCommand("Select * from Tbl_Yemekler where KategoriID=@p1", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", KategoriID);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            baglan.baglanti().Close();


        }
    }
}