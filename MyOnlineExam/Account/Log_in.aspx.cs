using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyOnlineExam.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Users user = new Users();//创建Users对象user
            if (user.CheckPassword(txtUserNum.Text.Trim()))//根据用户编号查询用户密码
            {
                if (user.UserPwd == txtPwd.Text.Trim())//输入密码与用户密码相同
                {
                    if (user.UserPower == 0)
                    {
                        Session["userNum"] = txtUserNum.Text.Trim();//存储用户编号
                        Session["userID"] = txtUserNum.Text.Trim();
                        Response.Redirect("~/student/student_mes.aspx");//转向学生操作界面 
                    }
                    else if (user.UserPower == 1)
                    {
                        Session["userNum"] = txtUserNum.Text.Trim();//存储用户编号
                        Response.Redirect("~/teacher/teacher_mes.aspx");//转向老师操作界面 
                    }
                    else
                    {
                        Session["userNum"] = txtUserNum.Text.Trim();//存储用户编号
                        Response.Redirect("~/admin/admin_mes.aspx");//转向总管理员操作界面 
                    }

                }
                else//密码错误，给出提示
                {
                    lblMessage.Text = "您输入的密码错误！";
                }
            }
            else//用户不存在，给出提示
            {
                lblMessage.Text = "该用户不存在！";
            }
        }
    }
}