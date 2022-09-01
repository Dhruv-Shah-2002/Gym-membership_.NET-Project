using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            string name = textBox_name.Text;
            string ad_1 = text_Area_al1.Value;
            string ad_2 = text_Area_al2.Value;
            string height_string = textBox_height.Text;
            string weight_string = textBox_weight.Text;
            
            bool name_is_null = string.IsNullOrEmpty(name);
            bool ad1_is_null = string.IsNullOrEmpty(ad_1);
            bool ad2_is_null = string.IsNullOrEmpty(ad_2);
            bool height_is_null = string.IsNullOrEmpty(height_string);
            bool weight_is_null = string.IsNullOrEmpty(weight_string);
            
            if (!name_is_null && !ad1_is_null && !ad2_is_null && !height_is_null && !weight_is_null)
            {
                float height = (float)Convert.ToDecimal(textBox_height.Text);
                float weight = (float)Convert.ToDecimal(textBox_weight.Text);
                float BMI = weight / (height * height);

                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                SqlCommand command = new SqlCommand(null, con);
                command.CommandText = "INSERT INTO customer (Name, Address_l1, Address_l2, BMI) " + "VALUES (@name, @al1, @al2, @BMI)";
                SqlParameter nameParam = new SqlParameter("@name", SqlDbType.VarChar, 30);
                SqlParameter al1Param = new SqlParameter("@al1", SqlDbType.VarChar, 50);
                SqlParameter al2Param = new SqlParameter("@al2", SqlDbType.VarChar, 50);
                SqlParameter BMIParam = new SqlParameter("@BMI", SqlDbType.Float, 0);
                nameParam.Value = name;
                al1Param.Value = ad_1;
                al2Param.Value = ad_2;
                BMIParam.Value = Math.Round(BMI, 2);
                command.Parameters.Add(nameParam);
                command.Parameters.Add(al1Param);
                command.Parameters.Add(al2Param);
                command.Parameters.Add(BMIParam);
                command.Prepare();
                int nra = command.ExecuteNonQuery();
                command.CommandText = "SELECT Customer_id from customer where Name = @name";
                command.Prepare();
                int customer_id = (int)command.ExecuteScalar();
            if (nra > 0)
                {
                    Label1.Text = "Congratulations " + name + ", you are registered successfully with Customer ID: " + customer_id.ToString();
                }
                else
                {
                    Label1.Text = "Sorry, Registration failed. Please try again later";
                }
                con.Close();
        } else
        {
            Label1.Text = "Please enter all the values for successful Registration.";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string name = textBox_name.Text;
        string ad_1 = text_Area_al1.Value;
        string ad_2 = text_Area_al2.Value;
        string height_string = textBox_height.Text;
        string weight_string = textBox_weight.Text;

        bool name_is_null = string.IsNullOrEmpty(name);
        bool ad1_is_null = string.IsNullOrEmpty(ad_1);
        bool ad2_is_null = string.IsNullOrEmpty(ad_2);
        bool height_is_null = string.IsNullOrEmpty(height_string);
        bool weight_is_null = string.IsNullOrEmpty(weight_string);

        if (!name_is_null && !ad1_is_null && !ad2_is_null && !height_is_null && !weight_is_null)
        {
            float height = (float)Convert.ToDecimal(textBox_height.Text);
            float weight = (float)Convert.ToDecimal(textBox_weight.Text);
            float BMI = weight / (height * height);

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand command = new SqlCommand(null, con);
            command.CommandText = "UPDATE customer set Name = @name, Address_l1 = @al1, Address_l2 = @al2, BMI = @BMI where Name = @name_cond";
            SqlParameter nameParam = new SqlParameter("@name", SqlDbType.VarChar, 30);
            SqlParameter al1Param = new SqlParameter("@al1", SqlDbType.VarChar, 50);
            SqlParameter al2Param = new SqlParameter("@al2", SqlDbType.VarChar, 50);
            SqlParameter BMIParam = new SqlParameter("@BMI", SqlDbType.Float, 0);
            SqlParameter name_condParam = new SqlParameter("@name_cond", SqlDbType.VarChar, 30);
            nameParam.Value = name;
            al1Param.Value = ad_1;
            al2Param.Value = ad_2;
            BMIParam.Value = Math.Round(BMI, 2);
            name_condParam.Value = name;
            command.Parameters.Add(nameParam);
            command.Parameters.Add(al1Param);
            command.Parameters.Add(al2Param);
            command.Parameters.Add(BMIParam);
            command.Parameters.Add(name_condParam);
            command.Prepare();
            int nra = command.ExecuteNonQuery();
            if (nra > 0)
            {
                Label1.Text = "Congratulations " + name + ", your details are updated successfully.";
            }
            else
            {
                Label1.Text = "Sorry, Updation failed. Please try again later";
            }
            con.Close();
        }
        else
        {
            Label1.Text = "Please enter all the values for successful Updation.";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string name = textBox_name.Text;
        string height_string = textBox_height.Text;
        string weight_string = textBox_weight.Text;

        bool name_is_null = string.IsNullOrEmpty(name);
        bool height_is_null = string.IsNullOrEmpty(height_string);
        bool weight_is_null = string.IsNullOrEmpty(weight_string);

        if (!name_is_null && !height_is_null && !weight_is_null)
        {
            float height = (float)Convert.ToDecimal(textBox_height.Text);
            float weight = (float)Convert.ToDecimal(textBox_weight.Text);
            float BMI = weight / (height * height);

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SWEETHOME\\Documents\\Gym.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand command = new SqlCommand(null, con);
            command.CommandText = "DELETE FROM customer where Name = @name AND BMI = @BMI";
            SqlParameter nameParam = new SqlParameter("@name", SqlDbType.VarChar, 30);
            SqlParameter BMIParam = new SqlParameter("@BMI", SqlDbType.Float, 0);
            nameParam.Value = name;
            BMIParam.Value = Math.Round(BMI, 2);
            command.Parameters.Add(nameParam);
            command.Parameters.Add(BMIParam);
            command.Prepare();
            int nra = command.ExecuteNonQuery();
            if (nra > 0)
            {
                Label1.Text = "Congratulations " + name + ", your account is deleted successfully.";
            }
            else
            {
                Label1.Text = "Sorry, Deletion failed. Please try again later";
            }
            con.Close();
        }
        else
        {
            Label1.Text = "Please Name, Height and Weight for successful Deletion.";
        }
    }
}