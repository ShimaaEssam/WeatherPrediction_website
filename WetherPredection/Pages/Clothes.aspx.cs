using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Clothes : System.Web.UI.Page
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

                int Selected_SeasonID = (from obj in entity.Clothes
                                         where (min >= obj.MinTemp && max <= obj.MaxTemp)
                                         select obj.SeasonID).FirstOrDefault();

                var clothes = (from ob in entity.ClothesImages
                               where (Selected_SeasonID == ob.SeasonID)
                               select new { ImageUrl = ob.ImageURL }).ToList();

                var ClothesResults = (from ob in clothes
                                      select new { ImageUrl = ob.ImageUrl.Replace("~", "..") }).ToList();


                Repeater_Clothes.DataSource = ClothesResults;
                Repeater_Clothes.DataBind();
            }
            else
            {
                Response.Write("Nothing Found!");
            }
        }
    }
}

    