﻿using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyOnlineExam.Teacher
{
    public partial class teacher_mod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Users user = new Users();           //创建Users对象
                DataSet ds = user.QueryUserMessage(Session["userNum"].ToString());
                UserNum.Text = ds.Tables[0].DefaultView[0].Row[5].ToString();
                UserName.Text = ds.Tables[0].DefaultView[0].Row[1].ToString();
                UserPwd.Text = ds.Tables[0].DefaultView[0].Row[2].ToString();
                UserEmail.Text = ds.Tables[0].DefaultView[0].Row[4].ToString();
            }
        }

        protected void Change_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacher_mes_mod.aspx");
        }
    }
}