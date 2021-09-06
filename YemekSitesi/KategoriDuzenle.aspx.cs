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
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif baglanti = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where KategoriId=@p1", baglanti.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                baglanti.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriID=@p3", baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            baglanti.baglanti().Close();
        }
    }
}