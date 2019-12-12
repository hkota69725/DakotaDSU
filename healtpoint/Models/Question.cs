using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace healtpoint.Models
{
    public class Question
    {
        public string question { get; set; }
        public string answer { get; set; }
        public int answerValue { get; set; }
        public int questionID { get; set; }
    }
}