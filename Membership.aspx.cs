using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("Select * from customer", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DropDownList3.Items.Clear();
            while (dr.Read())
            {
                DropDownList3.Items.Add(dr.GetInt32(0).ToString());
            }
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(TextBox1.Text);
        int custid = Convert.ToInt32(DropDownList3.SelectedValue);
        string tenure = DropDownList2.SelectedValue;
        string facility = DropDownList1.SelectedValue;

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cd = new SqlCommand("Insert into membership(CustID, Tenure, Facility, Amount) values(" + custid + ", '" + tenure + "', '" + facility + "', " + amount + ")", con);
        int nra = cd.ExecuteNonQuery();
        if (nra > 0)
        {
            Label1.Text = "Congratulations, You are now a member of Crushing Rock Gym";
        }
        else
        {
            Label1.Text = "Sorry, Facing Some Issues. Try Again Later";
        }
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int amount = 0;
        if (DropDownList2.SelectedValue == "1 Month")
        {
            amount = 1;
        }
        else if (DropDownList2.SelectedValue == "3 Months")
        {
            amount = 3;
        }
        else if (DropDownList2.SelectedValue == "6 Months")
        {
            amount = 6;
        }
        else if (DropDownList2.SelectedValue == "9 Months")
        {
            amount = 9;
        }
        else if (DropDownList2.SelectedValue == "12 Months")
        {
            amount = 12;
        }

        if (DropDownList1.SelectedValue == "Group Training")
        {
            amount *= 500;
        }
        else
        {
            amount *= 1000;
        }

        TextBox1.Text = amount.ToString();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(TextBox1.Text);
        int custid = Convert.ToInt32(DropDownList3.SelectedValue);
        string tenure = DropDownList2.SelectedValue;
        string facility = DropDownList1.SelectedValue;

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand command = new SqlCommand(null, con);
        command.CommandText = "UPDATE Membership set Tenure = @tenure, Facility = @facility, Amount = @amount where CustID = @cid";
        SqlParameter tenureParam = new SqlParameter("@tenure", SqlDbType.VarChar, 30);
        SqlParameter facilityParam = new SqlParameter("@facility", SqlDbType.VarChar, 50);
        SqlParameter amountParam = new SqlParameter("@amount", SqlDbType.Int, 0);
        SqlParameter cidParam = new SqlParameter("@cid", SqlDbType.Int, 0);
        tenureParam.Value = tenure;
        facilityParam.Value = facility;
        amountParam.Value = amount;
        cidParam.Value = custid;
        command.Parameters.Add(tenureParam);
        command.Parameters.Add(facilityParam);
        command.Parameters.Add(amountParam);
        command.Parameters.Add(cidParam);
        command.Prepare();
        int nra = command.ExecuteNonQuery();
        if (nra > 0)
        {
            Label1.Text = "Congratulations, your details are updated successfully.";
        }
        else
        {
            Label1.Text = "Sorry, Updation failed. Please try again later";
        }
        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(TextBox1.Text);
        int custid = Convert.ToInt32(DropDownList3.SelectedValue);
        string tenure = DropDownList2.SelectedValue;
        string facility = DropDownList1.SelectedValue;

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand command = new SqlCommand(null, con);
        command.CommandText = "DELETE FROM customer where CustID = @cid";
        SqlParameter cidParam = new SqlParameter("@cid", SqlDbType.Int, 0);
        cidParam.Value = custid;
        command.Parameters.Add(cidParam);
        command.Prepare();
        int nra = command.ExecuteNonQuery();
        if (nra > 0)
        {
            Label1.Text = "Congratulations, your membership is cancelled successfully.";
        }
        else
        {
            Label1.Text = "Sorry, Cancellation failed. Please try again later";
        }
        con.Close();
    }
}
