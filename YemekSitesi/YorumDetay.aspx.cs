using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace YemekSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif baglan = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yemekler.YemekID=Tbl_Yorumlar.YemekID where YorumID=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();
                }
                baglan.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set YorumOnay=@p1 where YorumID=@p2", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1","True");
            komut.Parameters.AddWithValue("@p2", id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

        }
    }
}