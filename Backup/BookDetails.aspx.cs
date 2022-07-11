using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Donatino_new
{
    public partial class BookDetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_db(book,carton,weight,category) VALUES (@books,@carton,@weight,@category)", con);


                cmd.Parameters.AddWithValue("@books", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@carton", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@weight", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Value);
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Pickup Placed will contact you soon');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}