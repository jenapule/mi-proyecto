using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class ReporteAprendiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ini_Aprendiz.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        showreport();
    }
     private void showreport()
    {
        ReportViewer1.Reset();
        DataTable dt=GetData(DateTime.Parse(TextBox1.Text), DateTime.Parse(TextBox2.Text));
        ReportDataSource rds = new ReportDataSource("DataSet1", dt);
        ReportViewer1.LocalReport.DataSources.Add(rds);
        ReportViewer1.LocalReport.ReportPath = "ReporteAprendiz.rdlc";

        ReportParameter[] rptparams = new ReportParameter[]{
        new ReportParameter("fecha_inicio", TextBox1.Text),
        new ReportParameter("fecha_fin", TextBox2.Text)

        };
        ReportViewer1.LocalReport.SetParameters(rptparams);

        ReportViewer1.LocalReport.Refresh();
 
    }
    private DataTable GetData(DateTime FromDate,DateTime ToDate)
    { 
        DataTable dt = new DataTable();
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["Program_Art_ProyectoConnectionString"].ConnectionString;
        using (SqlConnection cn =new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand("buscar_ina_aprendiz", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@From", SqlDbType.DateTime).Value = FromDate;
            cmd.Parameters.Add("@To", SqlDbType.DateTime).Value = ToDate;
            cmd.Parameters.Add("@Documento", SqlDbType.Int).Value = Session["aprendiz_id"].ToString(); ;

            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
        }
        return dt;

    }
}
