using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class ReporteFicha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        showreport();
    }
      private void showreport()
    {
        ReportViewer1.Reset();
        DataTable dt = GetData(int.Parse(TextBox1.Text));
        ReportDataSource rds = new ReportDataSource("DataSet1", dt);
        ReportViewer1.LocalReport.DataSources.Add(rds);
        ReportViewer1.LocalReport.ReportPath = "Reportfichas.rdlc";

        ReportParameter[] rptparams = new ReportParameter[]{
        new ReportParameter("ficha", TextBox1.Text),

        };
        ReportViewer1.LocalReport.SetParameters(rptparams);

        ReportViewer1.LocalReport.Refresh();
 
    }
    private DataTable GetData(int ficha)
    { 
        DataTable dt = new DataTable();
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["Program_Art_ProyectoConnectionString"].ConnectionString;
        using (SqlConnection cn =new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand("reporte_ficha", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ficha", SqlDbType.Int).Value = ficha;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
        }
        return dt;

    }
}

