using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyOnlineExam.Teacher
{
    public partial class Teacher : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Users user = new Users();           //创建Users对象
                DataSet ds = user.QueryUserName(Session["userNum"].ToString());     //调用QueryUsers方法查询用户并将查询结果放到DataSet数据集中
                lbl_adminId.Text = ds.Tables[0].DefaultView[0].Row[0].ToString();
            }
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeNode node = this.TreeView1.SelectedNode;
            if (string.IsNullOrEmpty(node.Value) || string.IsNullOrEmpty(node.ToolTip))
                return;

            ICommand cmd = (ICommand)Assembly.Load("MyOnlineExam").CreateInstance(node.ToolTip);//使用反射创建具体的命令类，通俗点讲，利用反射机制获取ICommand类的方法和属性
            cmd.Execute(node.Value); 
        }
    }
}