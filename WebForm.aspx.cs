using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace WebApplication3
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["New"]!=null)
            {
               Label2.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            if (FileUpload1.HasFiles)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);


            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
                FileInfo fi = new FileInfo(strfile);
                dt.Rows.Add(fi.Name, fi.Length, fi.Extension);
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName =="Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            if (FileUpload1.HasFiles)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);


            }

            DataTable dt = new DataTable();
            dt.Columns.Add("S.NO", typeof(int));
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
                FileInfo fi = new FileInfo(strfile);
                dt.Rows.Add( fi.CreationTime, fi.Name, fi.Length, fi.Extension);
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
          
        }
    }