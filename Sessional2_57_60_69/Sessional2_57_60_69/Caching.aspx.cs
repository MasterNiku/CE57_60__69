using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sessional2_57_60_69
{
    public partial class Caching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["myitem"] == null)
            {
                String id = Request.QueryString["id"];
                String sql = "select Name from Niku where StudentId=@id";
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=CELAB5;Initial Catalog=MasterNiku;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                String data = rdr["Name"].ToString() + " " + DateTime.Now.ToString();
                Cache.Insert("myitem", data, null, DateTime.Now.AddMinutes(1), TimeSpan.Zero);
                Label1.Text = Cache["myitem"].ToString();
            }
            else
            {
                Label1.Text = Cache["myitem"].ToString();

            }
           

        }
    }
}