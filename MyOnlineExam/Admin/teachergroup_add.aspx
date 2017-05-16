<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="teachergroup_add.aspx.cs" Inherits="MyOnlineExam.admin.teachergroup_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
        .style2
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table cellSpacing="0" style="FONT-SIZE: 14px; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse; " cellPadding="0" width=500 align="center" bgcolor="#eeeeee" border="1" bordercolor=gray>
		<tr>
			<td colSpan="2" align=center class="style1">						
				<IMG height="25" src="../../res/add.png">
                <b>添加学生用户组</b>			
			</td>
		</tr>	
		<tr height="30px">
			<td align="center" nowrap class="style2" width=150>教师编号</td>
			<td >
				<asp:TextBox id="txtTeacherCode"  runat="server" width=200 MaxLength="20" style="margin-left: 0px" Height="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTeacherCode" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
            </td>
		</tr>				
		<tr height="30px">
			<td align="center" nowrap class="style2" width=150>教师组人数</td>
			<td>
				<asp:TextBox id="txtTeacherNumber" runat="server" width=200 MaxLength="20" Height="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTeacherNumber" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
			</td>
		</tr>
				
		
		<tr align="center" height="55">
			<td colSpan="2">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
				<asp:Button ID="保存" runat="server" Text="保存" onclick="save_Click" />
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  
                <asp:Button ID="清空" runat="server" Text="清空" onclick="clear_Click" />
                &nbsp; &nbsp;
			</td>
		</tr>
	</table>
</asp:Content>
