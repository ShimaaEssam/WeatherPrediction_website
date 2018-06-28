    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Charts.aspx.cs" Inherits="Pages_Charts" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="fullwidth-block">
        <div class="container">


            
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
                    <label for=""> Weather Factor</label>

                    <span class="select control">
                        <asp:DropDownList ID="ddl_factor" runat="server" OnSelectedIndexChanged="ddl_factor_SelectedIndexChanged">

                      <asp:ListItem>High Tempereture</asp:ListItem>
                      <asp:ListItem>Low Tempereture</asp:ListItem>
                      <asp:ListItem>Humidity</asp:ListItem>
                      <asp:ListItem>Wind</asp:ListItem>

                        </asp:DropDownList>
                    </span>
                </div>

                    <div class="count filter-control">
                    <label for="">Chart Type</label>
                    <span class="select control">
                        <asp:DropDownList ID="ddl_chartType" runat="server" CssClass="form-control">
                          <asp:ListItem>Column Chart</asp:ListItem>
                           <asp:ListItem>Bar Chart</asp:ListItem>
                           <asp:ListItem>BoxPlot Chart</asp:ListItem>
                           <asp:ListItem>Bubble Chart</asp:ListItem>
                           <asp:ListItem>Candlestick Chart</asp:ListItem>
                           <asp:ListItem>Stock Chart</asp:ListItem>
                           <asp:ListItem>Three Line Break Chart</asp:ListItem>
                           <asp:ListItem>Point Chart</asp:ListItem>
                                               </asp:DropDownList>

                    </span>
                </div>

              
                
                  </div>

            <asp:Button ID="Enter" runat="server" OnClick="Enter_Click" Text="Visualize" />
                

                  <br />
                

                  <br />
                <asp:Chart ID="Chart1" runat="server" Visible="false">
                    <series>
                        <asp:Series Name="Series1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                

                  <div class="filter">
            </div>
                

                  </div>
            </div>

           

</asp:Content>

