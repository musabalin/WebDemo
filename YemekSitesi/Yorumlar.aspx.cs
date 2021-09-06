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
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinif baglan = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            //onaylı yorumlar
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1", baglan.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            //onaysız yorumlar
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0", baglan.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            baglan.baglanti().Close();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}