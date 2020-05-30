﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreeLayer.Model
{
    public class DessertCourse
    {
        public int CourseId { set; get; }
        public int UserId { set; get; }
        public int AdminId { set; get; }
        public string CourseTitle { set; get; }
        public string CourseDetail { set; get; }
        public DateTime CourseTime { set; get; }
        public int CourseTag { set; get; }
        public int CourseComment { set; get; }
        public string CourseCover { set; get; }
        public int CourseBrowse { set; get; }
        public int CourseCheck { set; get; }
        public int CourseUserAdmin { set; get; }
    }
}
