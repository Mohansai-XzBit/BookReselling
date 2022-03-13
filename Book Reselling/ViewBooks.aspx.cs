using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewBooks : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    DataTable dt = new DataTable();
    dt = (DataTable)Session["buyitems"];
    if (dt != null)
    {

      Label4.Text = dt.Rows.Count.ToString();
    }
    else
    {
      Label4.Text = "0";
    }

  }

  protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
  {
      if (e.CommandName == "addtocart")
    {
      Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString());

    }

  }


  protected void Button2_Click(object sender, EventArgs e)
  {
    if (TextBox1.Text != "")
    {
      DataList1.DataSourceID = null;
      DataList1.DataSource = SqlDataSource2;
      DataList1.DataBind();
    }
  }

  protected void LinkButton1_Click(object sender, EventArgs e)
  {
    DataList1.DataSourceID = null;
    DataList1.DataSource = SqlDataSource1;
    DataList1.DataBind();
  }

}
