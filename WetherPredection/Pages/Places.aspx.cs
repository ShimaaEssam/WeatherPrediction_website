using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Places : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CityName"] != null && Session["CityIndex"] != null)
        {
            WeatherPredictionEntities entity = new WeatherPredictionEntities();

            var CityInd = Session["CityIndex"];
            int City_In = Convert.ToInt32(CityInd) + 1;


            var items = (from tab in entity.Places
                         where (tab.City_ID == City_In)
                         select new { tab.City_Name, tab.Description_Eng }).ToList();


            var places = (from obj in entity.PlacesImages
                          where (obj.CityID == City_In)
                          select new { ImageUrl = obj.ImageURL, Name = obj.PlaceName }).ToList();


            var ClothesResults = (from ob in places
                                  select new { ImageUrl = ob.ImageUrl.Replace("~", ".."), Name = ob.Name }).ToList();


            for (int i = 0; i < items.Count; i++)
            {
                string CityName = items[i].City_Name.ToString();
                string CityDes = items[i].Description_Eng.ToString();

                lbl_cityname.Text = CityName;
                p_citydesc.InnerText = CityDes;
            }

            Repeater_Places.DataSource = ClothesResults;
            Repeater_Places.DataBind();



        }
        else
        {
            Response.Write("Nothing Found!");
        }
    }
}