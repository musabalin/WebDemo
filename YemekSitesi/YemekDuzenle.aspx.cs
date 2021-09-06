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
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif baglan = new sqlsinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
            if(Page.IsPostBack==false)
            {
                SqlCommand komut1 = new SqlCommand("Select * from Tbl_Yemekler where YemekID=@p1", baglan.baglanti());
                komut1.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut1.ExecuteReader();

                if(dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }
                baglan.baglanti().Close();


            }

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", baglan.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,KategoriID=@p4 where YemekID=@p5", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            //Kategori Arttırma

            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@p2", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}