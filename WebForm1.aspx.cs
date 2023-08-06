using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace convocation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get the search text from the textbox
            string searchText = TextBox1.Text;

            // Create a connection to the database
            SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=test;Integrated Security=True");

            try
            {
                // Open the connection
                connection.Open();

                // Create a command to select employees by ID or name
                string sql = "SELECT * FROM convocationform WHERE ID = @Member_No OR Member_Name LIKE @Name";
                SqlCommand command = new SqlCommand(sql, connection);

                // Set the parameters
                command.Parameters.AddWithValue("@ID", searchText);
                command.Parameters.AddWithValue("@Name", "%" + searchText + "%");

                // Execute the command
                SqlDataReader reader = command.ExecuteReader();

                // Bind the data to the GridView
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // Display an error message
               // Label1.Text = ex.Message;
            }
            finally
            {
                // Close the connection
                connection.Close();
            }
        }

    }
}