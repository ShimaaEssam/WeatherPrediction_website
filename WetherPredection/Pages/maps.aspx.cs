using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_maps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Getweatherinfo(sender, e);
    }
   /* protected void Getweatherinfo(object sender, EventArgs e)
    {
        string appid = "d3a8a9da807a553a272c0f51dbf02604";
       // string url = string.Format("http://api.openweathermap.org/data/2.5/forecast/daily?q={0}}&units=metric&cnt=1&APPID={1}","Cairo",appid);
    
        string url = string.Format("http://api.openweathermap.org/data/2.5/weather?q=Delhi&appid=d3a8a9da807a553a272c0f51dbf02604");
        using(WebClient client=new WebClient())
        {
            string json = client.DownloadString(url);
            WeatherInfo weatherinfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
            //lblCity_country.Text = weatherinfo.city.name ;
            //lblDesc.Text = weatherinfo.list[0].weather[0].description;
            imgWeatherIcon.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherinfo.list[0].weather[0].icon);
            lblTempMin.Text = string.Format("{0}.c", Math.Round(weatherinfo.list[0].temp.min, 1));
            lblTempMax.Text = string.Format("{0}.c", Math.Round(weatherinfo.list[0].temp.max, 1));
            lblTempDay.Text = string.Format("{0}.c", Math.Round(weatherinfo.list[0].temp.day, 1));
            lblTempNight.Text = string.Format("{0}.c", Math.Round(weatherinfo.list[0].temp.night, 1));
            lblHum.Text = weatherinfo.list[0].humidity.ToString();

        }

    }
    public class WeatherInfo
    {
        public City city { get; set;}
        public List<List> list { get; set; }

    }
    public class City
    {
        public string name { get; set; }
        public string country { get; set; }

    }
    public class Temp
    {
        public double day { get; set; }
        public double min{ get; set; }
        public double max { get; set; }
        public double night { get; set; }
    }
    public class Weather
    {
        public string description { get; set; }
        public string icon { get; set; }
    }
    public class List
    {
        public Temp temp { get; set; }
        public int humidity { get; set; }
        public List<Weather> weather { get; set; }
    }*/
    //public class Coord
    //{

        
    //    public double Lon { get; set; }
    //    public double Lat { get; set; }
    //}

    //public class Weather
    //{

        
    //    public int Id { get; set; }
    //    public string Main { get; set; }

    //    public string Description { get; set; }

    //    public string Icon { get; set; }
    //}

    //public class Main
    //{

    //    public double Temp { get; set; }

    //    public int Pressure { get; set; }

    //    public int Humidity { get; set; }

    //    public double TempMin { get; set; }

    //    public double TempMax { get; set; }
    //}

    //public class Wind
    //{

    //    public double Speed { get; set; }

    //    public int Deg { get; set; }
    //}

    //public class Clouds
    //{

    //    public int All { get; set; }
    //}

    //public class Sys
    //{

    //    public int Type { get; set; }
    //    public int Id { get; set; }
    //    public double Message { get; set; }

       
    //    public string Country { get; set; }
    //    public int Sunrise { get; set; }
    //    public int Sunset { get; set; }
    //}

    //public class we
    //{

    //    public Coord Coord { get; set; }
    //    public IList<Weather> Weather { get; set; }
    //    public string Base { get; set; }
    //    public Main Main { get; set; }
    //    public int Visibility { get; set; }
    //    public Wind Wind { get; set; }
    //    public Clouds Clouds { get; set; }
    //    public int Dt { get; set; }
    //    public Sys Sys { get; set; }
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //    public int Cod { get; set; }
    //}
   
   

}