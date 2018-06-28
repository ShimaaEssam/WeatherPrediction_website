<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maps.aspx.cs" Inherits="Pages_maps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
       /* Set the size of the div element that contains the map */
      #map {
        height: 400px;  /* The height is 400 pixels */
        width: 100%;  /* The width is the width of the web page */
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
             <!--The div element for the map -->
    <div id="map"></div>
    <script>
        var temp = 200000;
        // Initialize and add the map
        function initMap() {
            var country = "Alex";
            var pos1 = { lat: 30.0444196, lng: 31.23571160000006 };
            var pos2 = { lat: 31.2000924, lng: 29.91873869999995 };
            var nuluru = { lat: 26.8206, lng: 30.8025 };
            
          

            
       
            //else if (country == "Aswan") {
            //     The location of Uluru
            //    var uluru = { lat: 24.088938, lng: 32.8998293 };

            //}
            // The map, centered at Uluru
            var map = new google.maps.Map(
                document.getElementById('map'), { zoom: 5, center: nuluru });

            infoWindow1 = new google.maps.InfoWindow;
            infoWindow2 = new google.maps.InfoWindow;


            /* Creation */
            infoWindow1.setPosition(pos1);
            infoWindow1.setContent('Cairo');
            infoWindow1.open(map);


            infoWindow2.setPosition(pos2);
            infoWindow2.setContent('Alex');
            infoWindow2.open(map);

            map.setCenter(pos1);

        }

      </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwO7zOxoP1LpyjV_k9KYXi1nfzaPIykJE&callback=initMap">
    </script>
    
    </div>
        <br />
        <br />
        <br />
        <br /><br /><br />
        <asp:label runat="server"   ID="lblCity_country" /><asp:label runat="server"   ID="lblDesc" />
        <br />
        <asp:image runat="server"   ID="imgWeatherIcon" /><asp:label runat="server"   ID="lblTempMin" />
        <br />
        <asp:label runat="server"   ID="lblTempMax" /> <asp:label runat="server"   ID="lblTempDay" />
        <br />
        <asp:label runat="server"   ID="lblTempNight" /> <asp:label runat="server"   ID="lblHum" />

    </form>
</body>
</html>
