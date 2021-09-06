using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif baglan = new sqlsinif();
        string YemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
         
            YemekID = Request.QueryString["YemekID"];
            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where YemekID=@p1", baglan.baglanti());
            
            komut.Parameters.AddWithValue("@p1", YemekID);
            SqlDataReader dr = komut.ExecuteReader();
          
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString() ;
              
            }
            baglan.baglanti().Close();
            //yorumları listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YemekID=@p2",baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", YemekID);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumICerik,YemekID)" +
                " values(@p1,@p2,@p3,@p4)", baglan.baglanti());

            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox4.Text);
            komut.Parameters.AddWithValue("@p4", YemekID);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}