<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="standard.apply" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>云南省交通厅</title>
    <link href="../Styles/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>

    <style type="text/css">
        .style1
        {
            width: 285px;
        }
        .style8
        {
            width: 286px;
        }
        .style9
        {
            width: 287px;
        }
        .style10
        {
            width: 677px;
        }
        .style11
        {
            width: 318px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
<div id="contain">
    <div id="header">
        <div class="logo">
            <h1><a href="../index.aspx" >云南省交通运输厅</a></h1>
        </div>

    </div>
    <div class="clear"> </div>
    <div class="i_nav mauto clearfix" id="com_mainmenu" editok="online">
        <div id="smoothmenu1" class="ddsmoothmenu">
            <ul>
                <li class="navline"> <a href="../index.aspx" class="nava">首页</a> </li>

                <li class="navline"> <a href="../process.aspx" class="nava">业务流程</a> </li>
                <li class="navline"> <a href="../introduce.aspx" class="nava">专家组介绍</a> </li>
                <li class="navline"> <a href="../apply.aspx" class="nava">申请提交标准</a> </li>
                <li class="navline"> <a href="#" class="nava">用户中心</a> </li>
                <li class="navline"><a href="../messege.aspx" class="nava">留言板</a></li>


            </ul>
        </div>
    </div>
    <div class="banner">
        <div class="i_banner">
            <div id="banner_bg"></div>
            <!--标题背景-->
            <div id="banner_info"></div>
            <!--标题-->
            <ul>
                <li>1</li>
                <li>2</li>
                <li>3</li>
            </ul>
            <div id="banner_list"> <a href="#" target="_blank"><img src="images/9.jpg" /></a> <a href="#" target="_blank"><img src="images/9.jpg" /></a> <a href="#" target="_blank"><img src="images/9.jpg" /></a> </div>
            <script type="text/javascript">// <![CDATA[
                var t = n = 0, count;
                $(document).ready(function () {
                    count = $("#banner_list a").length;
                    $("#banner_list a:not(:first-child)").hide();
                    $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
                    $("#banner_info").click(function () { window.open($("#banner_list a:first-child").attr('href'), "_blank") });
                    $(".banner li").click(function () {
                        var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
                        n = i;
                        if (i >= count) return;
                        $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
                        $("#banner_info").unbind().click(function () { window.open($("#banner_list a").eq(i).attr('href'), "_blank") })
                        $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
                        $(this).css({ "background": "rgb(204, 51, 0)", 'color': '#fff' }).siblings().css({ "background": "#666", 'color': '#fff' });
                    });
                    t = setInterval("showAuto()", 3000);
                    $(".banner").hover(function () { clearInterval(t) }, function () { t = setInterval("showAuto()", 3000); });
                });
                function showAuto() {
                    n = n >= (count - 1) ? 0 : ++n;
                    $(".banner li").eq(n).trigger('click');
                }
            // ]]></script>
        </div>
        <div class="i_login">
            <div class="i_news01">
                <div class="i_news01_l" id="com_nmdlls_menu_40" editok="online">
                    <div class="mail">
                            <fieldset id="inputs">
                                &nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            </fieldset>
                            <fieldset id="actions">
                                &nbsp;<br />
                                <asp:Button ID="Button2" runat="server" BackColor="#006666" BorderColor="Black" 
                                    BorderStyle="Solid" ForeColor="White" Height="23px" onclick="Button2_Click" 
                                    Text="登录" Width="60px" />
                                <br />
                                <br />
                                <asp:Button ID="Button3" runat="server" BackColor="#006666" BorderColor="Black" 
                                    BorderStyle="Solid" ForeColor="White" Height="22px" Text="注册" Width="62px" 
                                    onclick="Button3_Click" />
                                <br />
                            </fieldset>&nbsp;
                    </div>
                    <div style="padding:20px;">
                        &nbsp;&nbsp; &nbsp; 
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp; 
                        <a href="logout.aspx" id="logout">注销</a><br/><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="i_content">
    <div class="i_border" style="text-align: center">
        <h2>欢迎</h2>
<hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        
                    <br />
                    <table border="1" style="border-style: solid; width: 100%; height: 181px;">
                        <tr>
                            <td class="style1" style="border-style: solid; text-align: center">
                                <asp:Label ID="Label23" runat="server" Text="标准项目名称"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1" style="border-style: solid; text-align: center">
                                <asp:Label ID="Label2" runat="server" Text="标准级别"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px;">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                                    <asp:ListItem Value="国家标准"></asp:ListItem>
                                    <asp:ListItem Value="行业标准"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1" style="border-style: solid; text-align: center">
                                <asp:Label ID="Label3" runat="server" Text="体系表编号"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 100%; height: 175px;">
                        <tr>
                            <td class="style8" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label4" runat="server" Text="预计起始年限"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label5" runat="server" Text="预计完成年限"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label6" runat="server" Text="主要起草单位"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 100%; height: 172px;">
                        <tr>
                            <td class="style11" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label7" runat="server" Text="联系人"></asp:Label>
                            </td>
                            <td class="style10" style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label8" runat="server" Text="联系电话"></asp:Label>
                            </td>
                            <td class="style10" style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label9" runat="server" Text="电子邮箱"></asp:Label>
                            </td>
                            <td class="style10" style="border-style: solid; padding-left: 40px;">
                                <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 100%; height: 185px;">
                        <tr>
                            <td class="style9" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label10" runat="server" Text="目的及意义"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px; padding-top: -40px;">
                                <asp:TextBox ID="TextBox9" runat="server" Height="36px" TextMode="MultiLine" 
                                    Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label11" runat="server" Text="范围和主要技术内容"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px; padding-top: -40px;">
                                <asp:TextBox ID="TextBox10" runat="server" Height="41px" TextMode="MultiLine" 
                                    Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" style="border-style: solid; text-align: center;">
                                <asp:Label ID="Label12" runat="server" Text="备注"></asp:Label>
                            </td>
                            <td style="border-style: solid; padding-left: 40px; padding-top: -40px;">
                                <asp:TextBox ID="TextBox11" runat="server" Height="36px" TextMode="MultiLine" 
                                    Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="24px" onclick="Button1_Click" 
                        Text="提交" Width="119px" />
        
    &nbsp;<asp:FileUpload ID="FileUpload" runat="server" />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="上传" />
        <asp:Literal ID="literal" runat="server"></asp:Literal>
&nbsp;&nbsp;
        
    </div>
</div>
<div class="i_footer"></div>
    </form>
</body>
</html>

