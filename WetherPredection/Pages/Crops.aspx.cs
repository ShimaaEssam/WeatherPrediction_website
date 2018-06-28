using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Crops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WeatherPredictionEntities entity = new WeatherPredictionEntities();

            if (Session["MinTemp"] != null && Session["MaxTemp"] != null)
            {
                var minTemp = Session["MinTemp"].ToString();
                var maxTemp = Session["MaxTemp"].ToString();
                int min = Convert.ToInt16(minTemp);
                int max = Convert.ToInt16(maxTemp);

                var crops = (from ob in entity.Crops select new { Name = ob.Crop_Name_Eng,
                    Description = ob.Description, ImageUrl = ob.ImageURL ,MinTemp= ob.MinTemp, MaxTemp = ob.MaxTemp }).ToList();

                var ResultedCrops = (from ob in crops
                               where (min >= ob.MinTemp && max <= ob.MaxTemp)
                               select new { ob.Name, ob.Description, ImageUrl = ob.ImageUrl.Replace("~", "..") }).ToList();
           
                Rep_Crops.DataSource = ResultedCrops;
                Rep_Crops.DataBind();

            }
            else
            {
                Response.Write("nothing found");


            }
        }
    }
}