<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  

    <style>
        body
        {
             background-image:url("../images/wall.jpg");
             background-attachment:fixed;
             background-size:100% 100%;
             
        }
     p
    {
        font-family:monospace;
        font-size:larger;
        font-weight:bold;
    }

    /*oneDay:hover
    {
        margin-left:400px; 
        background: yellow;
    }*/

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="fullwidth-block">
        <div class="container">

            <div class="row">
                <div class="content col-md-12">
                    <div class="post single">
                        <h2 class="entry-title" style="color:darkred; font-weight:bold"> Weather Forecast </h2>
                        <div class="featured-image">
                            <%--    <div class="row">
						<div class="col-md-8">
							
								<asp:Button runat="server"  type="button" ID="btn_ThreeDays" Text="Three Days Forecast" OnClick="btn_3_Dyas_Click"/> 
								
							
						</div>
						
					</div>--%>
                        </div>

                        <div class="entry-content">
                            
                            <p> 
                                 Most early forecasting was based on observation of weather patterns. Over the years, the observation of weather patterns has resulted in folk wisdom about the weather, a good deal of which is inaccurate, but some of which is supported by science
                            </p>

                            
                            <p>Whether the sun is shining, the rain is pouring, there are gale force winds or snow is expected, everyone is interested to know what weather is on the way.</p>
              
                            
                            <p style="color:white">
                               Interested in more detailed information on the Weather in Egypt ? </p>
                               <p>Please select the <span style="color:darkred">City</span> you wish to travel to , or the one closest to your destination. Each selected city will show you the following : </p> 
                            
                               <p> 1. Minimum and maximum Temperature , Humidity and Wind for specific  <span style="color:darkred"> Date</span> </p>
                               <p> 2. Display crops and clothes </p>
                               <p> 3. Display charts and maps </p>


                        </div>

                    </div>

                </div>

            </div>

            <div class="filter">
                <div class="count filter-control">
                    <label for="">Location</label>
                    <span class="select control">
                        <asp:DropDownList ID="ddl_Location" runat="server">
                            <asp:ListItem Value="1">Cairo</asp:ListItem>
                            <asp:ListItem Value="2">Alexandria</asp:ListItem>
                            <asp:ListItem Value="3">Hurghada</asp:ListItem>
                            <asp:ListItem Value="4">Assuit</asp:ListItem>
                            <asp:ListItem Value="5">Ismailia</asp:ListItem>
                            <asp:ListItem Value="6">Asswan</asp:ListItem>
                            <asp:ListItem Value="7">portSaid</asp:ListItem>
                        </asp:DropDownList>

                    </span>
                </div>

                <div class="country filter-control">
                    <label for="">Day</label>

                    <span class="select control">
                        <asp:DropDownList ID="ddl_Day" runat="server">

                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="11">11</asp:ListItem>
                            <asp:ListItem Value="12">12</asp:ListItem>
                            <asp:ListItem Value="13">13</asp:ListItem>
                            <asp:ListItem Value="14">14</asp:ListItem>
                            <asp:ListItem Value="15">15</asp:ListItem>
                            <asp:ListItem Value="16">16</asp:ListItem>
                            <asp:ListItem Value="17">17</asp:ListItem>
                            <asp:ListItem Value="18">18</asp:ListItem>
                            <asp:ListItem Value="19">19</asp:ListItem>
                            <asp:ListItem Value="20">20</asp:ListItem>
                            <asp:ListItem Value="21">21</asp:ListItem>
                            <asp:ListItem Value="22">22</asp:ListItem>
                            <asp:ListItem Value="23">23</asp:ListItem>
                            <asp:ListItem Value="24">24</asp:ListItem>
                            <asp:ListItem Value="25">25</asp:ListItem>
                            <asp:ListItem Value="26">26</asp:ListItem>
                            <asp:ListItem Value="27">27</asp:ListItem>
                            <asp:ListItem Value="28">28</asp:ListItem>
                            <asp:ListItem Value="29">29</asp:ListItem>
                            <asp:ListItem Value="30">30</asp:ListItem>
                            <asp:ListItem Value="31">31</asp:ListItem>

                        </asp:DropDownList>
                    </span>
                </div>

                <div class="count filter-control">
                    <label for="">Month</label>
                    <span class="select control">
                        <asp:DropDownList ID="ddl_Month" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1">Jan</asp:ListItem>
                            <asp:ListItem Value="2">Feb</asp:ListItem>
                            <asp:ListItem Value="3">Mar</asp:ListItem>
                            <asp:ListItem Value="4">Apr</asp:ListItem>
                            <asp:ListItem Value="5">May</asp:ListItem>
                            <asp:ListItem Value="6">Jun</asp:ListItem>
                            <asp:ListItem Value="7">Jul</asp:ListItem>
                            <asp:ListItem Value="8">Aug</asp:ListItem>
                            <asp:ListItem Value="9">Sep</asp:ListItem>
                            <asp:ListItem Value="10">Oct</asp:ListItem>
                            <asp:ListItem Value="11">Nov</asp:ListItem>
                            <asp:ListItem Value="12">Dec</asp:ListItem>
                        </asp:DropDownList>

                    </span>
                </div>

                <div class="count filter-control">
                    <label for="">Year</label>
                    <span>

                        <asp:TextBox runat="server" MaxLength="4" 
                           style="background:#262936;"  ID="txt_year" />

        <%--    <asp:RequiredFieldValidator ID="txt_year_RequiredFieldValidator" runat="server" ControlToValidate="txt_year"
                 ErrorMessage="You Must Enter &quot; Year&quot;" ForeColor="Red" ValidationGroup="CheckValidation">*</asp:RequiredFieldValidator>--%>

                     <%--   <asp:CompareValidator ErrorMessage="Numbers Only"
                             ControlToValidate="txt_year" runat="server" ForeColor="Red" Operator="DataTypeCheck" 
                            Type="Integer" ValidationGroup="CheckValidate" ></asp:CompareValidator>--%>
                    </span>
                </div>
                
                  </div>

				<div class="row">
						<div class="col-sm-8">
                          
								<asp:Button runat="server" type="button" ID="btn_OneDay" style="{ margin-left: 15px}"
                                                                                           
                                     Text="One Day Forecast" OnClick="btn_OneDay_Click"/> 
								
							
						</div>
                       
						
					</div>
                <%--    <div class="row">
						<div class="col-md-8">
							
								<asp:Button runat="server"  type="button" ID="btn_ThreeDays" Text="Three Days Forecast" OnClick="btn_3_Dyas_Click"/> 
								
							
						</div>
						
					</div>--%>

          

        </div>
    </div>

</asp:Content>

