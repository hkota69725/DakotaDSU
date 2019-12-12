using System;
using System.Web;

namespace healtpoint.Models
{
    public class PatientDemographics : IHttpHandler
    {
        /// <summary>
        /// You will need to configure this handler in the Web.config file of your 
        /// web and register it with IIS before being able to use it. For more information
        /// see the following link: https://go.microsoft.com/?linkid=8101007
        /// </summary>
        /// 
        public string reportingDate { get; set; }
        public string visitType { get; set; }
        public string visitStatus { get; set; }
        public string MRN_Number { get; set; }
        public string Gender { get; set; }
        public string Patient_Ethics { get; set; }
        public string Patient_Race { get; set; }
        public string dateOfBirth { get; set; }

        #region IHttpHandler Members

        public bool IsReusable
        {
            // Return false in case your Managed Handler cannot be reused for another request.
            // Usually this would be false in case you have some state information preserved per request.
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            //write your handler implementation here.
        }

        #endregion
    }
}