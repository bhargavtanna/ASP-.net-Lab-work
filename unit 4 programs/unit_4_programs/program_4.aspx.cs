using System;
using System.Data;
using System.Data.SqlClient;

namespace unit_4_programs
{
    public partial class program_4 : System.Web.UI.Page
    {
        string connectionString = "Server=.;Database=unit_4_db;Trusted_Connection=true;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployees();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string employeeName = txtEmployeeName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string position = txtPosition.Text;
            string department = ddlDepartment.SelectedValue;
            string salary = txtSalary.Text;
            string address = txtAddress.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "INSERT INTO employees (EmployeeName, Email, Phone, Position, Department, Salary, Address) VALUES (@name, @email, @phone, @position, @department, @salary, @address)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", employeeName);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@position", position);
                cmd.Parameters.AddWithValue("@department", department);
                cmd.Parameters.AddWithValue("@salary", salary);
                cmd.Parameters.AddWithValue("@address", address);

                cmd.ExecuteNonQuery();
                conn.Close();

                lblMessage.Text = "Employee added successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                ClearFields();
                LoadEmployees();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string employeeName = txtEmployeeName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string position = txtPosition.Text;
            string department = ddlDepartment.SelectedValue;
            string salary = txtSalary.Text;
            string address = txtAddress.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "UPDATE employees SET Email = @email, Phone = @phone, Position = @position, Department = @department, Salary = @salary, Address = @address WHERE EmployeeName = @name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@position", position);
                cmd.Parameters.AddWithValue("@department", department);
                cmd.Parameters.AddWithValue("@salary", salary);
                cmd.Parameters.AddWithValue("@address", address);
                cmd.Parameters.AddWithValue("@name", employeeName);

                int rowsAffected = cmd.ExecuteNonQuery();
                conn.Close();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Employee updated successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Employee not found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

                ClearFields();
                LoadEmployees();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string employeeName = txtEmployeeName.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "DELETE FROM employees WHERE EmployeeName = @name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", employeeName);

                int rowsAffected = cmd.ExecuteNonQuery();
                conn.Close();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Employee deleted successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Employee not found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

                ClearFields();
                LoadEmployees();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchName = txtSearchName.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "SELECT * FROM employees WHERE EmployeeName LIKE @name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", "%" + searchName + "%");

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    gvEmployees.DataSource = dt;
                    gvEmployees.DataBind();
                    lblMessage.Text = "Search Results Found!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "No employees found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    gvEmployees.DataSource = null;
                    gvEmployees.DataBind();
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void LoadEmployees()
        {
            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "SELECT * FROM employees";
                SqlCommand cmd = new SqlCommand(query, conn);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                gvEmployees.DataSource = dt;
                gvEmployees.DataBind();

                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error loading employees: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void ClearFields()
        {
            txtEmployeeName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtPosition.Text = "";
            ddlDepartment.SelectedIndex = 0;
            txtSalary.Text = "";
            txtAddress.Text = "";
            txtSearchName.Text = "";
        }
    }
}
