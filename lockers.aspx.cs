using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class lockers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnCreate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");

        int eid = Convert.ToInt32(DropDownList1.Text);
        int loc = Convert.ToInt32(txtlock.Text);
        int avai = Convert.ToInt32(txtPass.Text);
       

        SqlCommand cmd = new SqlCommand("insert into mylocker values(" + eid + ","+loc+"," + avai + ")", con);
        con.Open();

        int result = cmd.ExecuteNonQuery();

        if (result > 0)
        {
            Label5.Text = "Record Inseted Succefully";
        }
        else
        {
            Label5.Text = "Error :(";
        }
        con.Close();

    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
        int eid = Convert.ToInt32(DropDownList1.Text);
        int loc = Convert.ToInt32(txtlock.Text);
        int avai = Convert.ToInt32(txtPass.Text);

        SqlCommand cmd = new SqlCommand("update mylocker set LockerNo = " + loc + ", LockerPass = " + avai + " WHERE MemID=" + eid + ";", con);
       
        con.Open();

        int result = cmd.ExecuteNonQuery();

        if (result > 0)
        {
            Label5.Text = "Record Updated Succefully";
        }
        else
        {
            Label5.Text = "Error :(";
        }
        con.Close();
    }


    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
        int eid = Convert.ToInt32(DropDownList1.Text);


        SqlCommand cmd = new SqlCommand("delete from mylocker where MemID=" + eid, con);
        con.Open();

        int result = cmd.ExecuteNonQuery();

        if (result > 0)
        {
            Label5.Text = "Record Deleted Succefully";
        }
        else
        {
            Label5.Text = "Error :(";
        }
        con.Close();
    }
}



