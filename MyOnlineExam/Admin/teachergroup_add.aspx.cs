using BusinessLogicLayer;
using MyOnLineExam.BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyOnlineExam.admin
{
    public partial class teachergroup_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            bool rv = false;
            string teacherCode = txtTeacherCode.Text.Trim();//班级编号
            int tmpNum = 0;
            int.TryParse(txtTeacherNumber.Text.Trim(), out tmpNum);

            Users user = GetPrototype();
            for (int i = 1; i <= tmpNum; i++)
            {
                Users temp = user.Clone();
                temp.UserNum = string.Format("{0}{1}", teacherCode, i.ToString().PadLeft(2, '0'));
                temp.UserName = "新增教师" + i.ToString();
                user.UserEmail = string.Format("{0}@qq.com", user.UserName);
                rv = temp.InsertByProc();
                if (rv == false) break;
            }

            if (rv)
            {
                lblMessage.Text = "教师组添加成功";
            }
            else
            {
                lblMessage.Text = "教师组添加失败";
            }
        }

        private Users GetPrototype()
        {
            Users user = new Users();       //创建Users对象        
            user.UserNum = "";
            user.UserName = "教师";
            user.UserPwd = "123";
            user.UserPower = 1;
            user.UserEmail = "";
            return user;

        }

        protected void clear_Click(object sender, EventArgs e)
        {
            txtTeacherNumber.Text = null;//清空文本框
            txtTeacherCode.Text = null;
            txtTeacherCode.Focus();//班级编号框获取焦点
        }


    }
}