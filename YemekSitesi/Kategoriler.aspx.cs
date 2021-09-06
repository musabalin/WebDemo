using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif baglanti = new sqlsinif();
        string id = null;
        string islem = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
                
            }
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", baglanti.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            //silme işlemi 
            if(islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Kategoriler where KategoriID=@p1", baglanti.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                baglanti.baglanti().Close();


            }
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Kategoriler (KategoriAd) values(@p1)",baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglanti.baglanti().Close();

        }
    }
}