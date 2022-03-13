using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SellBook : System.Web.UI.Page
{
  static String imagelink;
  SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      getproductid();
    }

  }

  protected void Button1_Click(object sender, EventArgs e)
  {
    if (uploadimage() == true)
    {
      String query = "insert into AddBook(productid,bookname,authorname,price,productimage) values(" + Label1.Text + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + imagelink + "')";

      con.Open();
      SqlCommand cmd = new SqlCommand();
      cmd.CommandText = query;
      cmd.Connection = con;
      cmd.ExecuteNonQuery();
      Label2.Text = "Product Has Been Successfully Saved";
      getproductid();
      TextBox1.Text = "";
      TextBox2.Text = "";
    }

  }
  private Boolean uploadimage()
  {
    Boolean imagesaved = false;
    if (FileUpload1.HasFile == true)
    {

      String contenttype = FileUpload1.PostedFile.ContentType;

      if (contenttype == "image/jpeg")
      {

        FileUpload1.SaveAs(Server.MapPath("~/images/") + Label1.Text + ".jpg");
        imagelink = "images/" + Label1.Text + ".jpg";
        imagesaved = true;
      }
      else
      {
        Label2.Text = "Kindly Upload JPEG Format Image Only";
      }

    }

    else
    {
      Label2.Text = "You have not selected any file - Browse and Select File First";
    }

    return imagesaved;

  }
  public void getproductid()
  {
    SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

    String myquery = "select productid from AddBook";
    SqlCommand cmd = new SqlCommand();
    cmd.CommandText = myquery;
    cmd.Connection = con1;
    SqlDataAdapter da = new SqlDataAdapter();
    da.SelectCommand = cmd;
    DataSet ds = new DataSet();
    da.Fill(ds);
    con1.Close();
    if (ds.Tables[0].Rows.Count < 1)
    {
      Label1.Text = "1001";

    }
    else
    {



      SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

      String myquery1 = "select max(productid) from AddBook";
      SqlCommand cmd1 = new SqlCommand();
      cmd1.CommandText = myquery1;
      cmd1.Connection = con2;
      SqlDataAdapter da1 = new SqlDataAdapter();
      da1.SelectCommand = cmd1;
      DataSet ds1 = new DataSet();
      da1.Fill(ds1);
      Label1.Text = ds1.Tables[0].Rows[0][0].ToString();
      int a;
      a = Convert.ToInt16(Label1.Text);
      a = a + 1;
      Label1.Text = a.ToString();
      con2.Close();
    }

  }
}
