using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WeatherPredictionEntities entity = new WeatherPredictionEntities();
            var crops = (from ob in entity.Crops select new { Name = ob.Crop_Name_Eng, Description = ob.Description, ImageUrl = ob.ImageURL }).ToList();

            var gallery = (from ob in crops select new { ob.Name, ob.Description, ImageUrl = ob.ImageUrl.Replace("~", "..") }).ToList();
            Repeater_Gallery.DataSource = gallery;
            Repeater_Gallery.DataBind();
        }
    }
}
