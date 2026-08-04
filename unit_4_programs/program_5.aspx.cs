using System;
using System.Data;
using System.Data.SqlClient;

namespace unit_4_programs
{
    public partial class program_5 : System.Web.UI.Page
    {
        string connectionString = "Server=.;Database=unit_4_db;Trusted_Connection=true;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMarksheets();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string rollNumber = txtRollNumber.Text;
            string studentName = txtStudentName.Text;
            int subject1 = Convert.ToInt32(txtSubject1.Text);
            int subject2 = Convert.ToInt32(txtSubject2.Text);
            int subject3 = Convert.ToInt32(txtSubject3.Text);
            int subject4 = Convert.ToInt32(txtSubject4.Text);
            int subject5 = Convert.ToInt32(txtSubject5.Text);
            int totalMarks = subject1 + subject2 + subject3 + subject4 + subject5;
            double percentage = (totalMarks / 500.0) * 100;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "INSERT INTO marksheets (RollNumber, StudentName, Subject1, Subject2, Subject3, Subject4, Subject5, TotalMarks, Percentage) VALUES (@roll, @name, @s1, @s2, @s3, @s4, @s5, @total, @percent)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@roll", rollNumber);
                cmd.Parameters.AddWithValue("@name", studentName);
                cmd.Parameters.AddWithValue("@s1", subject1);
                cmd.Parameters.AddWithValue("@s2", subject2);
                cmd.Parameters.AddWithValue("@s3", subject3);
                cmd.Parameters.AddWithValue("@s4", subject4);
                cmd.Parameters.AddWithValue("@s5", subject5);
                cmd.Parameters.AddWithValue("@total", totalMarks);
                cmd.Parameters.AddWithValue("@percent", percentage);

                cmd.ExecuteNonQuery();
                conn.Close();

                lblMessage.Text = "Marksheet added successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                ClearFields();
                LoadMarksheets();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string rollNumber = txtRollNumber.Text;
            string studentName = txtStudentName.Text;
            int subject1 = Convert.ToInt32(txtSubject1.Text);
            int subject2 = Convert.ToInt32(txtSubject2.Text);
            int subject3 = Convert.ToInt32(txtSubject3.Text);
            int subject4 = Convert.ToInt32(txtSubject4.Text);
            int subject5 = Convert.ToInt32(txtSubject5.Text);
            int totalMarks = subject1 + subject2 + subject3 + subject4 + subject5;
            double percentage = (totalMarks / 500.0) * 100;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "UPDATE marksheets SET StudentName = @name, Subject1 = @s1, Subject2 = @s2, Subject3 = @s3, Subject4 = @s4, Subject5 = @s5, TotalMarks = @total, Percentage = @percent WHERE RollNumber = @roll";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", studentName);
                cmd.Parameters.AddWithValue("@s1", subject1);
                cmd.Parameters.AddWithValue("@s2", subject2);
                cmd.Parameters.AddWithValue("@s3", subject3);
                cmd.Parameters.AddWithValue("@s4", subject4);
                cmd.Parameters.AddWithValue("@s5", subject5);
                cmd.Parameters.AddWithValue("@total", totalMarks);
                cmd.Parameters.AddWithValue("@percent", percentage);
                cmd.Parameters.AddWithValue("@roll", rollNumber);

                int rowsAffected = cmd.ExecuteNonQuery();
                conn.Close();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Marksheet updated successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Roll number not found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

                ClearFields();
                LoadMarksheets();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string rollNumber = txtRollNumber.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "DELETE FROM marksheets WHERE RollNumber = @roll";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@roll", rollNumber);

                int rowsAffected = cmd.ExecuteNonQuery();
                conn.Close();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Marksheet deleted successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Roll number not found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

                ClearFields();
                LoadMarksheets();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchRoll = txtSearchRoll.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "SELECT * FROM marksheets WHERE RollNumber LIKE @roll";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@roll", "%" + searchRoll + "%");

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    gvMarksheet.DataSource = dt;
                    gvMarksheet.DataBind();
                    lblMessage.Text = "Marksheet found!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "No marksheet found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    gvMarksheet.DataSource = null;
                    gvMarksheet.DataBind();
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void LoadMarksheets()
        {
            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "SELECT * FROM marksheets";
                SqlCommand cmd = new SqlCommand(query, conn);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                gvMarksheet.DataSource = dt;
                gvMarksheet.DataBind();

                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error loading marksheets: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void ClearFields()
        {
            txtRollNumber.Text = "";
            txtStudentName.Text = "";
            txtSubject1.Text = "";
            txtSubject2.Text = "";
            txtSubject3.Text = "";
            txtSubject4.Text = "";
            txtSubject5.Text = "";
            txtSearchRoll.Text = "";
        }
    }
}
