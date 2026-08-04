using System;
using System.Data.SqlClient;

namespace unit_4_programs
{
    public partial class program_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=.;Database=unit_4_db;Trusted_Connection=true;";
            string fullName = txtFullName.Text;
            string email = txtEmail.Text;
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "INSERT INTO users (FullName, Email, Username, Password, Phone, Address) VALUES (@fullName, @email, @username, @password, @phone, @address)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@fullName", fullName);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@address", address);

                cmd.ExecuteNonQuery();
                conn.Close();

                lblMessage.Text = "Sign Up Successful! You can now login.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                txtFullName.Text = "";
                txtEmail.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";
                txtPhone.Text = "";
                txtAddress.Text = "";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
