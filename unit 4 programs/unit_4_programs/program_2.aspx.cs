using System;
using System.Data.SqlClient;

namespace unit_4_programs
{
    public partial class program_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=.;Database=unit_4_db;Trusted_Connection=true;";
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string rollNumber = txtRollNumber.Text;
            string course = ddlCourse.SelectedValue;
            string phone = txtPhone.Text;
            string dob = txtDOB.Text;
            string address = txtAddress.Text;
            string userId = email;
            string password = System.Guid.NewGuid().ToString().Substring(0, 8);

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "INSERT INTO students (FirstName, LastName, Email, RollNumber, Course, Phone, DOB, Address, UserID, Password) VALUES (@firstName, @lastName, @email, @rollNumber, @course, @phone, @dob, @address, @userId, @password)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@firstName", firstName);
                cmd.Parameters.AddWithValue("@lastName", lastName);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@rollNumber", rollNumber);
                cmd.Parameters.AddWithValue("@course", course);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@address", address);
                cmd.Parameters.AddWithValue("@userId", userId);
                cmd.Parameters.AddWithValue("@password", password);

                cmd.ExecuteNonQuery();
                conn.Close();

                lblMessage.Text = "Registration Successful! UserId: " + userId + " | Password: " + password;
                lblMessage.ForeColor = System.Drawing.Color.Green;
                ClearFields();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void ClearFields()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtRollNumber.Text = "";
            ddlCourse.SelectedIndex = 0;
            txtPhone.Text = "";
            txtDOB.Text = "";
            txtAddress.Text = "";
        }
    }
}
