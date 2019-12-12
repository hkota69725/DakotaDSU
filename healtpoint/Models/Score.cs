using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace healtpoint.Models
{
    public class Score
    {
        public string AuditScore { get; set;}
        public string DrugScore { get; set; }
        public string PhqScore { get; set; }
        public string TobaccoScore { get; set; }
        public string TotalScore { get; set; }
        public string SingleDrugScore { get; set; }

    }
}