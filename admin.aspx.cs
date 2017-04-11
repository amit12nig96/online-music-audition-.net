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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            co.Open();
            String checkuser = "select count(*) from AdminNO where AdminName='" + TextBoxAN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, co);
            int temp = Convert.ToInt16(com.ExecuteScalar().ToString());
            co.Close();
            if (temp == 1)
            {
                co.Open();
                string checkPasswordQuery = "select AdminPass from AdminNO where AdminName='" + TextBoxAN.Text + "'";
                SqlCommand passcon = new SqlCommand(checkPasswordQuery, co);
                string password = passcon.ExecuteScalar().ToString().Replace(" ","");
                if(password==TextBoxAP.Text)
                {
                    Session["New"] = TextBoxAN.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Manager.aspx");
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
        }
    }