<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="say1.aspx.cs" Inherits="standard.say1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>云南省交通厅</title>
    <link href="../Styles/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>

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
            <ul style="width: 500px">
                <li class="navline"> <a href="../index.aspx" class="nava">首页</a> </li>

                <li class="navline"> <a href="../process.aspx" class="nava">业务流程</a> </li>
                <li class="navline"> <a href="../introduce.aspx" class="nava">专家组介绍</a> </li>
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
                                &nbsp;&nbsp;</fieldset>
                            <fieldset id="actions">
                                &nbsp;<br />
                                欢迎！<br />
                                <br />
                                您的身份为：初级审核人员<br />
                                <br />
                                <br />
                            </fieldset>&nbsp;
                    </div>
                    <div style="padding:20px;">
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp; 
                        <a href="logout.aspx" id="logout">注销</a><br/><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
<div class="i_content">
    <div class="i_border">
        <h2>欢迎</h2>
        <p>&nbsp;</p>
        <hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        <br />
        <div id="show" align="center" style="width: auto; height: 84%; top: auto">
            <h2 style="height: 20px; width: 8%;">
                你的意见</h2>
            <div style="height: 97%">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            <table id="admintable" style="" border="0" align="center">
                <tr>

                    <td align="left" valign="middle"><span class="STYLE13">内容：</span></td>
                    <td><label>
                        &nbsp;<asp:TextBox 
                            ID="TextBox6" runat="server" Rows="30" TextMode="MultiLine" 
                            Width="400px" Height="500px"></asp:TextBox>
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
    </div>
</div>
<div class="i_footer"></div>
    </form>
</body>
</html>
