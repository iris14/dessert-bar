using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreeLayer.Model
{
    public class DessertImage
    {
        public int ImageId { set; get; }
        public int CourseId { set; get; }
        public string ImageFile { set; get; }
        public string CourseDetail { set; get; }
        public int DessertStep { set; get; }
    }
}
