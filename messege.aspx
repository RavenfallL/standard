<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messege.aspx.cs" Inherits="standard.messege" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>云南省交通厅</title>
    <link href="../Styles/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>

    <style type="text/css">
        .style1
        {
            height: 53px;
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
            <ul style="width: 600px">
                <li class="navline"> <a href="../index.aspx" class="nava">首页</a> </li>

                <li class="navline"> <a href="../process.aspx" class="nava">业务流程</a> </li>
                <li class="navline"> <a href="../introduce.aspx" class="nava">专家组介绍</a> </li>
                <li class="navline"> <a href="../apply.aspx" class="nava">申请提交标准</a> </li>
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
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </fieldset>
                            <fieldset id="actions">
                                &nbsp;<br />
                                <asp:Button ID="Button1" runat="server" BackColor="#006666" BorderColor="Black" 
                                    BorderStyle="Solid" ForeColor="White" Height="23px" onclick="Button1_Click" 
                                    Text="登录" Width="60px" />
                                <br />
                                <br />
                                <asp:Button ID="Button2" runat="server" BackColor="#006666" BorderColor="Black" 
                                    BorderStyle="Solid" ForeColor="White" Height="22px" Text="注册" Width="62px" 
                                    onclick="Button2_Click" />
                                <br />
                            </fieldset>&nbsp;
                    </div>
                    <div style="margin: -30px; padding: 20px; text-align: center;">
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp; <a href="logout.aspx" 
                            id="logout">注销</a><br/><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
<div class="i_content">
    <div class="i_border">
        <hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        <h2>你的留言</h2>
            <table id="admintable" style="" border="0" align="center">
                </tr>
                <tr>

                    <td width="58" align="center" ><span class="STYLE13">姓名：</span></td>
                    <td width="200">
                        <label>
                        <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    </label></td>
                </tr>
                <tr>

                    <td align="left" valign="middle"><span class="STYLE13">邮箱：</span></td>
                    <td><label>
                        &nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                    </label></td>
                </tr>
                <tr>

                    <td align="left" valign="middle" class="style1"><span class="STYLE13">QQ：</span></td>
                    <td class="style1"><label>
                        &nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                    </label></td>
                </tr>
                <tr>

                    <td align="left" valign="middle"><span class="STYLE13">内容：</span></td>
                    <td><label>
                        &nbsp;<asp:TextBox ID="TextBox6" runat="server" Rows="15" TextMode="MultiLine" 
                            Width="400px"></asp:TextBox>
                    </label></td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                    <td>
                        <label>&nbsp;<asp:Button ID="Button3" runat="server" BorderColor="#999999" BorderStyle="Solid" 
                            BorderWidth="2px" Height="31px" onclick="Button3_Click" Text="提交" 
                            Width="87px" />
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;

                    </label></td>
                </tr>

            </table>

    </div>
</div>
</form>
<div class="i_footer"></div>
</body>
</html>

