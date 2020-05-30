using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreeLayer.Model
{
    public class Comment
    {
        public int CommentId { set; get; }
        public int UserId { set; get; }
        public int  CourseId { set; get; }
        public string CommentDetail { set; get; }
        public DateTime CommentTime { set; get; }


    }
}
