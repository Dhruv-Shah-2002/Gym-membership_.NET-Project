using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class equipment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");

        int eid = Convert.ToInt32(txtbox1.Text);
        String name = txtbox2.Text;
        int avai = Convert.ToInt32(txtbox3.Text);
        string company = txtbox4.Text;
        String condition = txtbox5.Text;

        SqlCommand cmd = new SqlCommand("insert into equipment values(" + eid + ",'" + name + "'," + avai + ",'" + company + "','" + condition + "')", con);
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

        int eid = Convert.ToInt32(txtbox1.Text);
        String name = txtbox2.Text;
        int avai = Convert.ToInt32(txtbox3.Text);
        string company = txtbox4.Text;
        String condition = txtbox5.Text;

        SqlCommand cmd = new SqlCommand("update equipment set Name='"+name +"',Availiability="+avai+",Company='"+company+"',ConditionVal='"+condition+"' where EquipID = "+eid+"", con);
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

    protected void btndelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");

        int eid = Convert.ToInt32(txtbox1.Text);

        SqlCommand cmd = new SqlCommand("delete from equipment where EquipID="+eid, con);
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