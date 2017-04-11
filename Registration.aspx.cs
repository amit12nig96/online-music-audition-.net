using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class Registration : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {    
            if (IsPostBack)
            {   
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                String checkuser = "select count(*) from [Table] where UserName='" + UN.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
               int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close(); 
               if (temp == 1)
                {
                    Response.Write("User already Exists");

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           try
            {  
                Guid newGuid = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into [Table] (ID,UserName,Entryno,Email,AuditionType,Password) values (@Id ,@uname ,@entryno ,@email ,@audition ,@pass)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Id", newGuid.ToString());
                com.Parameters.AddWithValue("@uname", UN.Text);
                com.Parameters.AddWithValue("@entryno", EN.Text);
                com.Parameters.AddWithValue("@email", Email.Text);
                com.Parameters.AddWithValue("@audition", audition.SelectedItem.ToString());
                com.Parameters.AddWithValue("@pass", TextBoxPass.Text);
                com.ExecuteNonQuery();
                Response.Redirect("login.aspx");
                Response.Write("Your Registration is Succesful");
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error:"+ex.ToString());
            }

        }

        public void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

    }
    }