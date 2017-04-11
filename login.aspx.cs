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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "select count(*) from [Table] where UserName='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt16(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from [Table] where UserName='" + TextBoxUN.Text + "'";
                SqlCommand passcom = new SqlCommand(checkPasswordQuery, conn);
                string password = passcom.ExecuteScalar().ToString().Replace(" ","");
                if(password==TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUN.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("WebForm.aspx");
                }
                else
                {
                    Response.Write("Password is incorrect");
                }
            }
            else
            {
                Response.Write("UserName is INcorrect");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}