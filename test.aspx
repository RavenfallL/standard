<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="standard.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>









<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理平台</title>
<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE3 {color: #528311; font-size: 12px; }
.STYLE4 {
	color: #42870a;
	font-size: 12px;
}

    .style1
    {
        height: 30px;
    }

    .style2
    {
        width: 421px;
    }

    .style3
    {
        width: 77%;
    }
    .style4
    {
        height: 30px;
        width: 77%;
    }
    .style5
    {
        width: 27%;
    }
    .style6
    {
        height: 30px;
        width: 27%;
    }
    .style7
    {
        width: 172px;
    }

</style></head>

<body>
<form id="register" runat="server">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#e5f6cf">&nbsp;</td>
  </tr>
  <tr>
    <td height="608" background="images/login_03.gif"><table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="266" background="images/login_04.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="95"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="95" background="images/login_06.gif" class="style2">&nbsp;</td>
            <td background="images/login_07.gif" class="style7">
                <table border="0" cellspacing="0" 
                    cellpadding="0" style="width: 140%">
              <tr>
                <td width="21%" height="30"><div align="center"><span class="STYLE3">用户</span></div></td>
                <td height="30" class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-right: 0px" 
                        Width="175px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1"><div align="center"><span class="STYLE3">密码</span></div></td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="165px"></asp:TextBox>
                  </td>
              </tr>
       

              <tr>
                <td height="30">&nbsp;</td>
                <td height="30" class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">普通用户</asp:ListItem>
                        <asp:ListItem Value="1">初级审核人员</asp:ListItem>
                        <asp:ListItem Value="2">二级审核人员</asp:ListItem>
                        <asp:ListItem Value="3">标委会</asp:ListItem>
                        <asp:ListItem Value="4">系统管理员</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                  </td>
              </tr>
            </table></td>
            <td width="255" background="images/login_08.gif">
                <br />
                <br />
                <br />
              </td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="images/login_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
              </td>
            <td width="22%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="44%" height="20">&nbsp;</td>
                <td width="56%" class="STYLE4">云南省标准化信息管理平台</td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
</table>
</form>

</body>
</html>