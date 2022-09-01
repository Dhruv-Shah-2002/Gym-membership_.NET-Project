using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class instructor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");

        int iid = Convert.ToInt32(txtbox1.Text);
        String name = txtbox2.Text;
        String address = txtbox3.Text;
        int salary = Convert.ToInt32(txtbox4.Text);
        int cid = Convert.ToInt32(txtbox5.Text);

        SqlCommand cmd = new SqlCommand("insert into instructor values(" + iid + ",'" + name + "','" + address + "'," + salary + "," + cid + ")", con);
        con.Open();

        int result = cmd.ExecuteNonQuery();

        if (result > 0)
        {
            confirm.Text = "Record Inserted Succefully";
        }
        else
        {
            confirm.Text = "Error :(";
        }
        con.Close();
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");

        int iid = Convert.ToInt32(txtbox1.Text);
        String name = txtbox2.Text;
        String address = txtbox3.Text;
        int salary = Convert.ToInt32(txtbox4.Text);
        int cid = Convert.ToInt32(txtbox5.Text);

        SqlCommand cmd = new SqlCommand("update instructor set Name='" + name + "',Address='" + address + "',Salary=" + salary + ",CustomerID=" + cid + " where Id = " + iid + "", con);
        con.Open();

        int result = cmd.ExecuteNonQuery();

        if (result > 0)
        {
            confirm.Text = "Record Updated Succefully";
        }
        else
        {
            confirm.Text = "Error :(";
        }
        con.Close();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");

        int iid = Convert.ToInt32(txtbox1.Text);

        SqlCommand cmd = new SqlCommand("delete from instructor where Id=" + iid, con);
        con.Open();

        int result = cmd.ExecuteNonQuery();

        if (result > 0)
        {
            confirm.Text = "Record Deleted Succefully";
        }
        else
        {
            confirm.Text = "Error :(";
        }
        con.Close();
    }
}