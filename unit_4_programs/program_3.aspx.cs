using System;
using System.Data.SqlClient;

namespace unit_4_programs
{
    public partial class program_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=.;Database=unit_4_db;Trusted_Connection=true;";
            string userId = txtUserID.Text;
            string currentPassword = txtCurrentPassword.Text;
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (newPassword != confirmPassword)
            {
                lblMessage.Text = "New Password and Confirm Password do not match!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string query = "SELECT Password FROM users WHERE Username = @userId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@userId", userId);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string storedPassword = reader["Password"].ToString();

                    if (storedPassword == currentPassword)
                    {
                        reader.Close();

                        string updateQuery = "UPDATE users SET Password = @newPassword WHERE Username = @userId";
                        SqlCommand updateCmd = new SqlCommand(updateQuery, conn);
                        updateCmd.Parameters.AddWithValue("@newPassword", newPassword);
                        updateCmd.Parameters.AddWithValue("@userId", userId);

                        updateCmd.ExecuteNonQuery();

                        lblMessage.Text = "Password changed successfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        txtUserID.Text = "";
                        txtCurrentPassword.Text = "";
                        txtNewPassword.Text = "";
                        txtConfirmPassword.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "Current Password is incorrect!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblMessage.Text = "User ID not found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

                reader.Close();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
