using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddToCart : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      DataTable dt = new DataTable();
      DataRow dr;
      dt.Columns.Add("sno");
      dt.Columns.Add("productid");
      dt.Columns.Add("bookname");
      dt.Columns.Add("price");
      dt.Columns.Add("productimage");
      dt.Columns.Add("cost");
      dt.Columns.Add("totalprice");

      if (Request.QueryString["id"] != null)
      {
        if (Session["Buyitems"] == null)
        {

          dr = dt.NewRow();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
          String myquery = "select * from AddBook where productid=" + Request.QueryString["id"];
          SqlCommand cmd = new SqlCommand();
          cmd.CommandText = myquery;
          cmd.Connection = con;
          SqlDataAdapter da = new SqlDataAdapter();
          da.SelectCommand = cmd;
          DataSet ds = new DataSet();
          da.Fill(ds);
          dr["sno"] = 1;
          dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
          dr["bookname"] = ds.Tables[0].Rows[0]["bookname"].ToString();
          dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
          dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
          int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
          int totalprice = price;
          dr["totalprice"] = totalprice;

          dt.Rows.Add(dr);
          GridView1.DataSource = dt;
          GridView1.DataBind();

          Session["buyitems"] = dt;
          GridView1.FooterRow.Cells[4].Text = "Total Amount";
          GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
          Response.Redirect("AddToCart.aspx");
        }
        else
        {

          dt = (DataTable)Session["buyitems"];
          int sr;
          sr = dt.Rows.Count;

          dr = dt.NewRow();
          SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
          String myquery = "select * from AddBook where productid=" + Request.QueryString["id"];
          SqlCommand cmd = new SqlCommand();
          cmd.CommandText = myquery;
          cmd.Connection = con1;
          SqlDataAdapter da = new SqlDataAdapter();
          da.SelectCommand = cmd;
          DataSet ds = new DataSet();
          da.Fill(ds);
          dr["sno"] = sr + 1;
          dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
          dr["bookname"] = ds.Tables[0].Rows[0]["bookname"].ToString();
          dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
          dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
          int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
          int totalprice = price;
          dr["totalprice"] = totalprice;
          dt.Rows.Add(dr);
          GridView1.DataSource = dt;
          GridView1.DataBind();

          Session["buyitems"] = dt;
          GridView1.FooterRow.Cells[4].Text = "Total Amount";
          GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
          Response.Redirect("AddToCart.aspx");

        }
      }
      else
      {
        dt = (DataTable)Session["buyitems"];
        GridView1.DataSource = dt;
        GridView1.DataBind();
        if (GridView1.Rows.Count > 0)
        {
          GridView1.FooterRow.Cells[4].Text = "Total Amount";
          GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();

        }


      }
      Label2.Text = GridView1.Rows.Count.ToString();

    }

  }
  public int grandtotal()
  {
    DataTable dt = new DataTable();
    dt = (DataTable)Session["buyitems"];
    int nrow = dt.Rows.Count;
    int i = 0;
    int gtotal = 0;
    while (i < nrow)
    {
      gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

      i = i + 1;
    }
    return gtotal;
  }


  protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
  {
    DataTable dt = new DataTable();
    dt = (DataTable)Session["buyitems"];


    for (int i = 0; i <= dt.Rows.Count - 1; i++)
    {
      int sr;
      int sr1;
      string qdata;
      string dtdata;
      sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
      TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
      qdata = cell.Text;
      dtdata = sr.ToString();
      sr1 = Convert.ToInt32(qdata);

      if (sr == sr1)
      {
        dt.Rows[i].Delete();
        dt.AcceptChanges();
        //Label1.Text = "Item Has Been Deleted From Shopping Cart";
        break;

      }
    }

    for (int i = 1; i <= dt.Rows.Count; i++)
    {
      dt.Rows[i - 1]["sno"] = i;
      dt.AcceptChanges();
    }

    Session["buyitems"] = dt;
    Response.Redirect("AddToCart.aspx");
  }

  protected void Button1_Click(object sender, EventArgs e)
  {
    Response.Redirect("Checkout.aspx");
  }

}

