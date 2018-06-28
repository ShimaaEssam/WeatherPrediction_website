using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Predictions_Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WeatherPredictionEntities entity = new WeatherPredictionEntities();

            if (Session["MinTemp"] != null && Session["MaxTemp"] != null && Session["Humidity"] != null && Session["Wind"] != null)
            {
                var Min_Temp = Session["MinTemp"];
                var Max_Temp = Session["MaxTemp"];
                var Humidity = Session["Humidity"];
                var Wind = Session["Wind"];

                lbl_minTemp.Text = Min_Temp.ToString();
                lbl_maxTemp.Text = Max_Temp.ToString();
                lbl_humidity.Text = Humidity.ToString();
                lbl_wind.Text = Wind.ToString();

                var cityName = Session["CityName"];

                lbl_1_city.Text = cityName.ToString();
                lbl_2_city.Text = cityName.ToString();
                lbl_3_city.Text = cityName.ToString();
                lbl_4_city.Text = cityName.ToString();


               

            }
            else
            {
                Response.Write("nothing found");


            }
        }
    }
    protected void btn_ViewCrops_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pages/Crops.aspx");
    }
    protected void btn_ViewClothes_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pages/Clothes.aspx");
    }
    protected void btn_ViewPlaces_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pages/Places.aspx");
    }
    protected void btn_charts_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pages/Charts.aspx");
    }
    protected void btn_Viewmaps_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pages/Maps.aspx");
    }
}