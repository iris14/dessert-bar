using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreeLayer.Model
{
    public class Reply
    {
        public int ReplyId { set; get; }
        public int UserId { set; get; }
        public int CommentId { set; get; }
        public string ReplyDetail { set; get; }
        public DateTime ReplyTime{ set; get; }
    }
}
