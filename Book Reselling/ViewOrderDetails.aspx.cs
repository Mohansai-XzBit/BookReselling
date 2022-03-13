using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewOrderDetails : System.Web.UI.Page
{
  SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
  
  int tot = 0;
  protected void Page_Load(object sender, EventArgs e)
  {
    
    
    con.Open();
    SqlCommand cmd = con.CreateCommand();
    cmd.CommandType = CommandType.Text;
    cmd.CommandText = "select * from orderdetails order by id desc";
    cmd.ExecuteNonQuery();
    DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter(cmd);
    da.Fill(dt);
    con.Close();
    r1.DataSource = dt;
    r1.DataBind();


    foreach (DataRow dr in dt.Rows)
    {
      tot = tot + Convert.ToInt32(dr["price"].ToString()); 
    }
   
    r1.DataSource = dt;
    r1.DataBind();
    con.Close();
    l1.Text = "total price=" + tot.ToString();

  }
}
