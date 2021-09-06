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
    public partial class YemeklerAdmin : System.Web.UI.Page
    {
        sqlsinif baglan = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekID"];
                islem = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", baglan.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";//görünecek alan
                DropDownList1.DataValueField = "KategoriID";//işleme giren alan
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();


            }
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Yemekler Where YemekID=@p1", baglan.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                baglan.baglanti().Close();
            }

            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", baglan.baglanti());
            komut.ExecuteNonQuery();
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriID) values(@p1,@p2,@p3,@p4)", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            //KAtegori Arttırma

            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@p2", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}