using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspx_crud_operation
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudentList();
            }
        }

        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=aspx_crud_operation;Integrated Security=True");

        protected void Insert_Click(object sender, EventArgs e)
        {
            string stuId = TextBox1.Text,
                   stuName = TextBox2.Text,
                   city = DropDownList1.SelectedValue,
                   sex = RadioButtonList1.SelectedValue;

            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into StudentSetup values ('" + stuId + "','" + stuName + "','" + city + "','" + sex + "')", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this,this.GetType(), "script", "alert('Successfully saved');", true);
            GetStudentList();
        }

        void GetStudentList()
        {
            SqlCommand cmd = new SqlCommand("Select studentId as 'Student Id', studentName as 'Student Name', city as 'City', sex as 'Sex' from StudentSetup", connection);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string stuId = TextBox1.Text,
                   stuName = TextBox2.Text,
                   city = DropDownList1.SelectedValue,
                   sex = RadioButtonList1.SelectedValue;

            connection.Open();
            SqlCommand cmd = new SqlCommand("Update StudentSetup set studentId = '" + stuId + "', studentName = '" + stuName + "', city = '" + city + "', sex = '" + sex + "' where studentId = '"+stuId+"'", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated');", true);
            GetStudentList();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string stuId = TextBox1.Text;

            connection.Open();
            SqlCommand cmd = new SqlCommand("Delete StudentSetup where studentId = '" + stuId + "'", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
            GetStudentList();
        }

        protected void Get_Click(object sender, EventArgs e)
        {
            string stuId = TextBox1.Text;

            SqlCommand cmd = new SqlCommand("Select * from StudentSetup where studentId = '"+stuId+"'", connection);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Load_Click(object sender, EventArgs e)
        {
            GetStudentList();
        }

        
    }
}