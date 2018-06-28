<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Predictions_Results.aspx.cs" Inherits="Pages_Predictions_Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="../custome.css" rel="stylesheet" />
    <link href="../cardsStyle.css" rel="stylesheet" />
     <style>
     {
        font-family:monospace;
        font-size:x-large;
        font-weight:bold;
        color:white;
    }

   </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div class="fullwidth-block">
        <div class="container">

            <div class="row">
                <p style="
                font-family:monospace;
                font-size:x-large;
                font-weight:bold;
                color:white;
                    }">
                    This is the one day local weather forecast results for <asp:Label runat="server" ID="lbl_city" Text=""></asp:Label>  in Egypt.
                    
                </p>

                <p style="
                    font-family:monospace;
                font-size:x-large;
                font-weight:bold;
                color:white;">
                    <span style="color:red; font-weight:bold">WePrediction</span> offers forecast information 
                    including expected temperatures, humidity and wind.
                </p>

            </div>



            <div class="row">

                <div class="col-3">
                    <div class="weather-card one" style="background-image: url('../images/WallPapers/min.jpg'); background-repeat: no-repeat">
                        <div class="top">
                            <div class="wrapper">
                                <div class="mynav">
                                    <a href="javascript:;"><span class="lnr lnr-chevron-left"></span></a>
                                    <a href="javascript:;"><span class="lnr lnr-cog"></span></a>
                                </div>
                                <h1 class="heading" style="margin-left: -20px;">Minimum Temperature</h1>
                                <h3 class="location">
                                    <asp:Label runat="server" ID="lbl_1_city" Text=""></asp:Label>
                                </h3>
                                <p class="temp">
                                    <span class="temp-value">
                                        <asp:Label ID="lbl_minTemp" runat="server" Text=""></asp:Label></span>
                                    <span class="deg">0</span>
                                    <a href="javascript:;"><span class="temp-type">C</span></a>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-3">
                    <div class="weather-card two" style="background-image: url('../images/WallPapers/max.jpg'); background-repeat: no-repeat">
                        <div class="top">
                            <div class="wrapper">
                                <div class="mynav">
                                    <a href="javascript:;"><span class="lnr lnr-chevron-left"></span></a>
                                    <a href="javascript:;"><span class="lnr lnr-cog"></span></a>
                                </div>
                                <h1 class="heading" style="margin-left: -20px;">Maximum Temperature</h1>
                                <h3 class="location">
                                    <asp:Label runat="server" ID="lbl_2_city" Text=""></asp:Label>
                                </h3>
                                <p class="temp">
                                    <span class="temp-value">
                                        <asp:Label ID="lbl_maxTemp" runat="server" Text=""></asp:Label></span>

                                    <span class="deg">0</span>
                                    <a href="javascript:;"><span class="temp-type">C</span></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-3">
                    <div class="weather-card three" style="background-image: url('../images/WallPapers/hu.jpg'); background-repeat: no-repeat">
                        <div class="top">
                            <div class="wrapper">
                                <div class="mynav">
                                    <a href="javascript:;"><span class="lnr lnr-chevron-left"></span></a>
                                    <a href="javascript:;"><span class="lnr lnr-cog"></span></a>
                                </div>
                                <h1 class="heading" style="margin-top: 25px;">Humidity</h1>
                                <h3 class="location">
                                    <asp:Label runat="server" ID="lbl_3_city" Text=""></asp:Label>
                                </h3>
                                <p class="temp">
                                    <span class="temp-value">
                                        <asp:Label ID="lbl_humidity" Style="margin-top: 15px;" runat="server" Text=""></asp:Label>

                                    </span>

                                    <%--<span class="deg">0</span>
                                    --%>
                                    <a href="javascript:;"><span class="temp-type" style="margin-top: 35px;">%</span></a>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-3">
                    <div class="weather-card four" style="background-image: url('../images/WallPapers/wind2.jpg'); background-repeat: no-repeat">
                        <div class="top">
                            <div class="wrapper">
                                <div class="mynav">
                                    <a href="javascript:;"><span class="lnr lnr-chevron-left"></span></a>
                                    <a href="javascript:;"><span class="lnr lnr-cog"></span></a>
                                </div>
                                <h1 class="heading" style="margin-top: 25px;">Wind</h1>
                                <h3 class="location">
                                    <asp:Label runat="server" ID="lbl_4_city" Text=""></asp:Label>
                                </h3>
                                <p class="temp">
                                    <span class="temp-value">
                                        <asp:Label ID="lbl_wind" runat="server" Text=""></asp:Label>

                                    </span>
                                    <%--    <span class="deg">0</span>--%>
                                    <a href="javascript:;"><span class="temp-type" style="margin-top: 35px; margin-left: -15px;">Km/h</span></a>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


             <div class="row">
                <p style="
                font-family:monospace;
                font-size:x-large;
                font-weight:bold;
                color:white;
                    }">
                    Based on these information ,  <span style="color:red; font-weight:bold">WePrediction</span> allow you to ..
                </p>

                
            </div>

            <div class="row">
                <div class="col-md-12">

                    <div class="col-md-4">
                        <asp:Button runat="server" type="button" ID="btn_ViewCrops"
                                     Text="View Crops" OnClick="btn_ViewCrops_Click"/>
                    </div>
                    <div class="col-md-4">
                        <asp:Button runat="server" type="button" ID="btn_ViewClothes"
                                     Text="View Clothes" OnClick="btn_ViewClothes_Click"/>
                    </div>
                    <div class="col-md-4">
                        <asp:Button runat="server" type="button" ID="btn_ViewPlaces"
                                     Text="View Places" OnClick="btn_ViewPlaces_Click"/>
                    </div>
                </div>
            </div>

            <hr />
<br /><br />
            <div class ="row">

                <h3 style="color:white; font-weight:bold; font-size:larger" > <span style="color:red; font-weight:bold">WePrediction</span> 
                     Visualizations , Make a clear and obvious results </h3>

            </div>
      
            <%--<p style="font-size:larger; font-weight:bold;"> Make a clear and obvious results </p>
    --%>      
          
                 <div class ="row">
                     <div class="col-md-12" style="margin-left:2px;">
                         <div class="col-md-4">
                             <asp:Button runat="server" type="button" ID="btn_Viewcharts"
                                     Text="View Charts" OnClick="btn_charts_Click"/>
                               <%--<asp:HyperLink ID="hyper_charts" runat="server" NavigateUrl="~/Pages/Charts.aspx" Text="Charts"></asp:HyperLink>--%>

                     </div>
                         <div class="col-md-4">
                             <asp:Button runat="server" type="button" ID="btn_Viewmaps"
                                     Text="View Maps" OnClick="btn_Viewmaps_Click"/>
                             
<%--                               <asp:HyperLink ID="hyper_maps" runat="server" NavigateUrl="~/Pages/Maps.aspx" Text="Maps"></asp:HyperLink>--%>

                     </div>

                     </div>

                  
          
                  
          

           

        </div>
    </div>
    </div>

</asp:Content>

