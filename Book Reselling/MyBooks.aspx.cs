using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyBooks : System.Web.UI.Page
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



  protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)

  {
    if (e.CommandName == "addtocart")
    {
      Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString());
    }


  }


}
