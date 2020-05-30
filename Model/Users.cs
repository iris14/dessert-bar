using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreeLayer.Model
{
    public class Users
    {
        public int UserId { set; get; }
        public string UserName { set; get; }
        public string UserTel { set; get; }
        public string UserPwd { set; get; }
        public string UserGender { set; get; }
        public string UserEmail { set; get; }
        public string UserCard { set; get; }
        public DateTime UserTime { set; get; }
    }
}
