using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PrintDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
    SqlDataAdapter adapter1;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        adapter1 = new SqlDataAdapter("Select * from customer", con);
        adapter1.Fill(ds, "Customer");
        GridView1.DataSource = ds.Tables["Customer"];
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        adapter1 = new SqlDataAdapter("Select * from instructor", con);
        adapter1.Fill(ds, "Instructor");
        GridView1.DataSource = ds.Tables["Instructor"];
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        adapter1 = new SqlDataAdapter("Select * from membership", con);
        adapter1.Fill(ds, "Member");
        GridView1.DataSource = ds.Tables["Member"];
        GridView1.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        adapter1 = new SqlDataAdapter("Select * from equipment", con);
        adapter1.Fill(ds, "Equipment");
        GridView1.DataSource = ds.Tables["Equipment"];
        GridView1.DataBind();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        adapter1 = new SqlDataAdapter("Select * from mylocker", con);
        adapter1.Fill(ds, "Locker");
        GridView1.DataSource = ds.Tables["Locker"];
        GridView1.DataBind();
    }
}