<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher.Master" AutoEventWireup="true" CodeBehind="fillblank_add.aspx.cs" Inherits="MyOnlineExam.teacher.fillblank_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <p>&nbsp;</p>
    </div>
    <table cellSpacing="0" style="FONT-SIZE: 14px; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse; " cellPadding="0" width=500 align="center" bgcolor="#eeeeee" border="1" bordercolor=gray>
        <tr>
			<td colSpan="2" align=center class="style1">						
				<IMG height="25" src="../../res/add.png">
                <b>填空题</b>				
			</td>
		</tr>				
		<tr>
			<td align="center" width="60">科&nbsp; &nbsp;目：</td>
			<td>
                <asp:dropdownlist id="ddlCourse" runat="server" Font-Size="9pt" Width="200px">
                </asp:dropdownlist>
            </td>
		</tr>				
		<tr>
			<td align="center" nowrap>前描述：</td>
			<td>
				<asp:textbox id="txtFrontTitle"  runat="server" Width="500px" TextMode="MultiLine" Height="80px">
                </asp:textbox>
			</td>
		</tr>
		<tr>
			<td align="center" >后描述：</td>
			<td>
				<asp:textbox id="txtBackTitle"  runat="server"  Width="500px" TextMode="MultiLine" Height="80px">
                </asp:textbox>
            </td>
		</tr>
		<tr>
			<td align="center">答&nbsp; &nbsp;案：</td>
			<td>
				<asp:textbox id="txtAnswer"  runat="server"  Width="500px" Height="40px">
                </asp:textbox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnswer" ErrorMessage="不能为空！">
                </asp:RequiredFieldValidator>
            </td>
		</tr>				
		<tr align="center" height="55">
			<td colSpan="2"><asp:Label ID="lblMessage" runat="server" ForeColor=red></asp:Label><br />
				<asp:Button ID="保存" runat="server" Text="保存" onclick="save_Click" />
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  
                <asp:Button ID="清空" runat="server" Text="清空" onclick="clear_Click" />
                &nbsp; &nbsp;
			</td>
		</tr>
	</table>

</asp:Content>
