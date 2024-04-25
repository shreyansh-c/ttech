using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ToothTech.TTech.Patient_reg
{
    /// <summary>
    /// Summary description for Patient_registration1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class Patient_registration1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string AddPatient(string Patient_Name, string Father_Name, string P_Address, string Age, string Mobile, string Gender, string Marital_Status, string Country)
        {

            try
            {
                Connection obj = new Connection();
                obj.New_SP_Insert_STR_OP("Usp_Patient_RegNew", "@RESULT",
                obj.Parameter("@Patient_Name", Patient_Name),
                obj.Parameter("@Father_Name", Father_Name),
                obj.Parameter("@P_Address", P_Address),
                obj.Parameter("@Age", Age),
                obj.Parameter("@Mobile", Mobile),
                obj.Parameter("@Gender", Gender),
                obj.Parameter("@Marital_Status", Marital_Status),
                obj.Parameter("@Country", Country));

                return "SUCCESS";
            }
            catch (Exception ex)
            {

                throw;
            }

        }
    }
}
