using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

public partial class Checkout : System.Web.UI.Page
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
      dt.Columns.Add("totalprice");
      dt.Columns.Add("productimage");


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
          dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
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
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

          String myquery = "select * from AddBook where productid=" + Request.QueryString["id"];
          SqlCommand cmd = new SqlCommand();
          cmd.CommandText = myquery;
          cmd.Connection = con;
          SqlDataAdapter da = new SqlDataAdapter();
          da.SelectCommand = cmd;
          DataSet ds = new DataSet();
          da.Fill(ds);
          dr["sno"] = sr + 1;
          dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
          dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
          dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
          dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
          int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
         
          int totalprice = price ;
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
        string totalprice = grandtotal().ToString();
        //Label3.Text = GridView1.Rows.Count.ToString();
        Label3.Text = totalprice;
      }
      

    }
    Label2.Text = DateTime.Now.ToShortDateString();
    findorderid();
    Random random = new Random();
    txnid.Value = (Convert.ToString(random.Next(10000, 20000)));
    txnid.Value = "txn" + txnid.Value.ToString();
    Response.Write(txnid.Value.ToString());


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
  public void findorderid()
  {
    String pass = "abcdefghijklmnopqrstuvwxyz123456789";
    Random r = new Random();
    char[] mypass = new char[5];
    for (int i = 0; i < 5; i++)
    {
      mypass[i] = pass[(int)(35 * r.NextDouble())];

    }
    String orderid;
    orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

    Label1.Text = orderid;


  }

  public void saveaddress()
  {
    String updatepass = "insert into orderaddress1(orderid,name,address,mobilenumber,price) values('" + Label1.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','"+Label3.Text+"')";
    SqlConnection s = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    s.Open();
    SqlCommand cmd1 = new SqlCommand();
    cmd1.CommandText = updatepass;
    cmd1.Connection = s;
    cmd1.ExecuteNonQuery();
    s.Close();
  }

  protected void Button1_Click(object sender, EventArgs e)
  {
    DataTable dt;
    dt = (DataTable)Session["buyitems"];



    for (int i = 0; i <= dt.Rows.Count - 1; i++)
    {
      String updatepass = "insert into orderdetails(orderid,sno,productid,bookname,price,dateoforder) values('" + Label1.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["productid"] + ",'" + dt.Rows[i]["bookname"] + "'," + dt.Rows[i]["price"] + ",'" + Label2.Text + "')";
      SqlConnection s = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
      s.Open();
      SqlCommand cmd1 = new SqlCommand();
      cmd1.CommandText = updatepass;
      cmd1.Connection = s;
      cmd1.ExecuteNonQuery();
      s.Close();

    }
    saveaddress();
    Double amount = Convert.ToDouble(Label3.Text);

    String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "Books" + "|" + TextBox3.Text + "|" + TextBox1.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
    //Response.Write(text);
    byte[] message = Encoding.UTF8.GetBytes(text);

    UnicodeEncoding UE = new UnicodeEncoding();
    byte[] hashValue;
    SHA512Managed hashString = new SHA512Managed();
    string hex = "";
    hashValue = hashString.ComputeHash(message);
    foreach (byte x in hashValue)
    {
      hex += String.Format("{0:x2}", x);
    }
    hash.Value = hex;

    System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
    data.Add("key", key.Value);
    data.Add("txnid", txnid.Value);
    data.Add("amount", amount);
    data.Add("hash", hex.ToString());
    data.Add("productinfo", "Books");


    // string AmountForm = ;// eliminating trailing zeros


    data.Add("firstname", TextBox3.Text.Trim());
    data.Add("email", TextBox1.Text.Trim());
    data.Add("phone", TextBox2.Text.Trim());
    
    
    data.Add("udf1", "1");
    data.Add("udf2", "1");
    data.Add("udf3", "1");
    data.Add("udf4", "1");
    data.Add("udf5", "1");

    data.Add("surl", "http://localhost:53582/OrderPlaced.aspx");
    data.Add("furl", "http://localhost:53582/FailurePayment.aspx");

    data.Add("service_provider", "");


    string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
    Page.Controls.Add(new LiteralControl(strForm));




  }

  private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
  {
    //Set a name for the form
    string formID = "PostForm";
    //Build the form using the specified data to be posted.
    StringBuilder strForm = new StringBuilder();
    strForm.Append("<form id=\"" + formID + "\" name=\"" +
                   formID + "\" action=\"" + url +
                   "\" method=\"POST\">");

    foreach (System.Collections.DictionaryEntry key in data)
    {

      strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                     "\" value=\"" + key.Value + "\">");
    }


    strForm.Append("</form>");
    //Build the JavaScript which will do the Posting operation.
    StringBuilder strScript = new StringBuilder();
    strScript.Append("<script language='javascript'>");
    strScript.Append("var v" + formID + " = document." +
                     formID + ";");
    strScript.Append("v" + formID + ".submit();");
    strScript.Append("</script>");
    //Return the form and the script concatenated.
    //(The order is important, Form then JavaScript)
    return strForm.ToString() + strScript.ToString();
  }








}
