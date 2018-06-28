using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;
public partial class Pages_Charts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ddl_factor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void Get_chart(string count, string type)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-CMV477P\MSSQLSERVERR;Initial Catalog=WeatherPrediction;Integrated Security=True"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  Year, " + type + " from WeatherPrediction.dbo." + count + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        int[] x = new int[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            x[i] = Convert.ToInt32(dt.Rows[i][0]);
            y[i] = Convert.ToInt32(dt.Rows[i][1]);
        }

        Chart1.Series[0].Points.DataBindXY(x, y);
        //Chart1.Series[0].ChartType = SeriesChartType. Column
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.ChartAreas[0].AxisX.Title = type;
        Chart1.ChartAreas[0].AxisY.Title = "Year";

        string chartType = ddl_chartType.SelectedValue;
        chartypefun(chartType);



    }
    private void chartypefun(string chartType)
    {
        switch (chartType)
        {
            case "Column Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Column;
                break;
            case "Bar Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Bar;
                break;
            case "BoxPlot Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.BoxPlot;
                break;
            case "Point Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Point;
                break;
            case "Bubble Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Bubble;
                break;
            case "Candlestick Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Candlestick;
                break;
            case "Stock Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Stock;
                break;
            case "Three Line Break  Chart":
                Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.ThreeLineBreak;
                break;

        }

    }

    protected void Enter_Click(object sender, EventArgs e)
    {
        Chart1.Visible = true;
        string counteryname = ddl_Location.SelectedItem.ToString();
        string chartType = ddl_chartType.SelectedValue;
        string wtype = ddl_factor.SelectedValue;
        string countr = counteryname + "$";
        string type;
        if (wtype == "High Tempereture")
        {
            type = "Temp_high";
            Get_chart(countr, type);

        }
        else if (wtype == "Low Tempereture")
        {
            type = "Temp_low";
            Get_chart(countr, type);

        }
        else if (wtype == "Humidity")
        {
            type = "Humidity_avg";
            Get_chart(countr, type);
        }
        else if (wtype == "Wind")
        {
            type = "Wind_avg";
            Get_chart(countr, type);
        }
        chartypefun(chartType);


    }
}

