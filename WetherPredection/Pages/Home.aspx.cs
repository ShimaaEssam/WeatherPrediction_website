using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;

public partial class Pages_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OneDay_Click(object sender, EventArgs e)
    {

        #region PYTHON CODE

        // full path of python interpreter 
        string python = @"C:\Users\LENOVO\PycharmProjects\untitled\venv\Scripts\python.exe";
        // python app to call 
        string myPythonApp = @"C:\Users\LENOVO\PycharmProjects\untitled\RegLine_HighTemp.py";
        // dummy parameters to send Python script  
        int d = Convert.ToInt32(ddl_Day.SelectedValue),
            m = Convert.ToInt32(ddl_Month.SelectedValue),
            y = Convert.ToInt32(txt_year.Text);
           string city = ddl_Location.SelectedItem.ToString();
           int cityIndex = ddl_Location.SelectedIndex;

        // Create new process start info 
        ProcessStartInfo myProcessStartInfo = new ProcessStartInfo(python);
        // make sure we can read the output from stdout 
        myProcessStartInfo.UseShellExecute = false;
        myProcessStartInfo.RedirectStandardOutput = true;
        // start python app with 3 arguments  
        // 1st arguments is pointer to itself,  
        // 2nd and 3rd are actual arguments we want to send 
        myProcessStartInfo.Arguments = myPythonApp + " " + d + " " + m + " " + y + " " + city;
        Process myProcess = new Process();
        // assign start information to the process 
        myProcess.StartInfo = myProcessStartInfo;
        Console.WriteLine("Calling Python script with arguments {0} and {1} and {2}", d, m, y);
        // start the process 
        myProcess.Start();
        // Read the standard output of the app we called.  
        // in order to avoid deadlock we will read output first 
        // and then wait for process terminate: 
        StreamReader myStreamReader = myProcess.StandardOutput;
        string myString = myStreamReader.ReadLine();
        myProcess.WaitForExit();
        myProcess.Close();
        string res = myString;
        /*if you need to read multiple lines, you might use: string myString = myStreamReader.ReadToEnd() */
        // wait exit signal from the app we called and then close it. 
        /*** another*/
        string myPythonApp1 = @"C:\Users\LENOVO\PycharmProjects\untitled\RegLine_LowTemp.py";
        myProcessStartInfo = new ProcessStartInfo(python);
        myProcessStartInfo.UseShellExecute = false;
        myProcessStartInfo.RedirectStandardOutput = true;
        myProcessStartInfo.Arguments = myPythonApp1 + " " + d + " " + m + " " + y + " " + city;
        myProcess = new Process();
        myProcess.StartInfo = myProcessStartInfo;
        myProcess.Start();
        myStreamReader = myProcess.StandardOutput;
        string myString1 = myStreamReader.ReadLine();
        myProcess.WaitForExit();
        myProcess.Close();
        string res1 = myString1;
        //new
        string myPythonApp2 = @"C:\Users\LENOVO\PycharmProjects\untitled\RegLine_avgHumidity.py";
        myProcessStartInfo = new ProcessStartInfo(python);
        myProcessStartInfo.UseShellExecute = false;
        myProcessStartInfo.RedirectStandardOutput = true;
        myProcessStartInfo.Arguments = myPythonApp2 + " " + d + " " + m + " " + y + " " + city;
        myProcess = new Process();
        myProcess.StartInfo = myProcessStartInfo;
        myProcess.Start();
        myStreamReader = myProcess.StandardOutput;
        string myString2 = myStreamReader.ReadLine();
        myProcess.WaitForExit();
        myProcess.Close();
        string res2 = myString2;
        //new
        string myPythonApp3 = @"C:\Users\LENOVO\PycharmProjects\untitled\RegLine_avgWind.py";
        myProcessStartInfo = new ProcessStartInfo(python);
        myProcessStartInfo.UseShellExecute = false;
        myProcessStartInfo.RedirectStandardOutput = true;
        myProcessStartInfo.Arguments = myPythonApp3 + " " + d + " " + m + " " + y + " " + city;
        myProcess = new Process();
        myProcess.StartInfo = myProcessStartInfo;
        myProcess.Start();
        myStreamReader = myProcess.StandardOutput;
        string myString3 = myStreamReader.ReadLine();
        myProcess.WaitForExit();
        myProcess.Close();
        string res3 = myString3;



        #endregion

        // write the output we got from python app 
        #region pyth

        Char charRange = '.';
        int Index = res.IndexOf(charRange);
        string maxtemp = res.Substring(1, Index - 1).ToString();
        string mintemp = res1.Substring(1, Index - 1).ToString();
        string humi = res2.Substring(1, Index - 1).ToString();
        string wind = res3.Substring(1, Index - 1).ToString();

     
        #endregion

        

        Session["MinTemp"] = mintemp;
        Session["MaxTemp"] = maxtemp.ToString();
        Session["Humidity"] = humi;
        Session["Wind"] = wind;

        Session["CityName"] = city;

        Session["CityIndex"] = cityIndex;

        Response.Redirect("~/Pages/Predictions_Results.aspx");
    }
    //protected void btn_3_Dyas_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Pages/NextDaysPredection.aspx");
    //}
}