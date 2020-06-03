using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
namespace Dessert.DynamicData.FieldTemplates
{
    public partial class step : System.Web.DynamicData.FieldTemplateUserControl
    {
        string mappath;
        public override Control DataControl
        {
            get
            {
                return Literal1;
            }
        }
        public string GetTextBoxValue
        {
            get
            {
                return TextBox1.Text;
            }
        }
        public string GetImageFile
        {
            get
            {
                return mappath;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean fileOk = false;
            if (FileUpload1.HasFile) //验证是否包含文件
            {
                //取得文件的扩展名并转换成小写
                string fileExtension = Path.GetExtension(FileUpload1.FileName).ToLower();
                //验证上传文件是否图片格式
                fileOk = IsImage(fileExtension);
                if (fileOk)
                {
                    //对上传文件的大小进行检测，限定文件最大不超过8m
                    if(FileUpload1.PostedFile.ContentLength < 8192000)
                    {
                        string filepath = "/uploadimages/";
                        if(Directory.Exists(Server.MapPath(filepath)) == false) //如果不存在就创建file文件夹
                        {
                            Directory.CreateDirectory(Server.MapPath(filepath));
                        }
                        string virpath = filepath + fileExtension;
                        //这是存到服务器上的虚拟路径
                        mappath = Server.MapPath(virpath); //转换成服务器上的物理路径
                        FileUpload1.PostedFile.SaveAs(mappath); //保存图片
                        //显示图片
                        Image1.ImageUrl = virpath;
                        //清空提示
                        Label1.Text = "";
                    }
                    else
                    {
                        Image1.ImageUrl = "";
                        Label1.Text = "文件大小超出8M！请重新选择！";
                    }
                }
                else
                {
                    Image1.ImageUrl = "";
                    Label1.Text = "要上传的文件类型不对！请重新选择！";
                }
            }
            else
            {
                Image1.ImageUrl = "";
                Label1.Text = "请选择要上传的图片！";
            }
        }

        //验证是否指定的图片格式
        public bool IsImage(string str)
        {
            bool isimage = false;
            string thestr = str.ToLower();
            //限定只能上传jpg和gif图片
            string[] allowExtension = { ".jpg", ".gif", ".bmp", ".png" };
            //对上传的文件的类型进行一个个匹对
            for(int i = 0; i < allowExtension.Length; i++)
            {
                if(thestr == allowExtension[i])
                {
                    isimage = true;break;
                }
            }
            return isimage;
        }
        //创建一个指定长度的随机salt值
        //public string CreateSalt(int saltLength)
        //{
        //    //生成一个加密的随机数
        //    RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        //    byte[] buff = new byte[saltLength];
        //    rng.GetBytes(buff);
        //    //返回一个base64随机数的字符串
        //    return Convert.ToBase64String(buff);
        //}
        ////返回加密后的字符串
        //public string CreatePasswordHash(string pwd, int saltLength)
        //{
        //    string strSalt = CreateSalt(saltLength);
        //    //把密码和Salt连起来
        //    string saltAndPwd = String.Concat(pwd, strSalt);
        //    //对密码进行哈希
        //    string hashenPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(saltAndPwd, "sha1");
        //    //转为小写字符并截取前16个字符串
        //    hashenPwd = hashenPwd.ToLower().Substring(0, 16);
        //    //返回哈希后的值
        //    return hashenPwd;
        //}
    }
}
