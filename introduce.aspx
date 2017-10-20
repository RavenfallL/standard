<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="introduce.aspx.cs" Inherits="standard.introduce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
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
                    <div style="padding:20px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp; 
                        <a href="logout.aspx" id="logout">注销</a><br/><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
</form>
<div class="i_content">
    <div class="i_border">
        <hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        <div class="clear"></div>
        <div class="clear"></div>
        <!--main-->
        <div class="bwhtitle"><h2>全国专业标准化技术委员会</h2></div>
        <div class="clear"></div>
        <div class="list_list">
            <table class="" border="0" cellSpacing="1" cellPadding="1" width="98%" align="left" id="color_table" >
                <thead>
                </thead>
                <tbody>
                <TR class="D_TR_ODD">
                    <TD align="left" width="80%">
                        <a href="#" title="全国港口标准化技术委员会疏浚装备分技术委员会" target="_blank">
                            全国港口标准化技术委员会疏浚装备分技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2017-05-23
                    </TD>
                </TR>
                <TR class="D_TR_EVE">
                    <TD align="left" width="80%">
                        <a href="#" title="全国水运专用计量器具计量技术委员会" target="_blank">
                            全国水运专用计量器具计量技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2017-05-22
                    </TD>
                </TR>
                <TR class="D_TR_ODD">
                    <TD align="left" width="80%">
                        <a href="#" title="全国公路专用计量器具计量技术委员会" target="_blank">
                            全国公路专用计量器具计量技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2017-05-22
                    </TD>
                </TR>
                <TR class="D_TR_EVE">
                    <TD align="left" width="80%">
                        <a href="#" title="全国道路运输标准化技术委员会" target="_blank">
                            全国道路运输标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_ODD">
                    <TD align="left" width="80%">
                        <a href="#" title="全国城市客运标准化技术委员会" target="_blank">
                            全国城市客运标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_EVE">
                    <TD align="left" width="80%">
                        <a href="#" title="全国智能运输系统标准化技术委员会" target="_blank">
                            全国智能运输系统标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_ODD">
                    <TD align="left" width="80%">
                        <a href="#" title="全国交通工程设施（公路）标准化技术委员会" target="_blank">
                            全国交通工程设施（公路）标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_EVE">
                    <TD align="left" width="80%">
                        <a href="#" title="全国集装箱标准化技术委员会" target="_blank">
                            全国集装箱标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_ODD">
                    <TD align="left" width="80%">
                        <a href="#" title="全国汽车维修标准化技术委员会" target="_blank">
                            全国汽车维修标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_EVE">
                    <TD align="left" width="80%">
                        <a href="#" title="全国港口标准化技术委员会" target="_blank">
                            全国港口标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                <TR class="D_TR_ODD">
                    <TD align="left" width="80%">
                        <a href="#" title="全国内河船标准化技术委员会" target="_blank">
                            全国内河船标准化技术委员会</a>
                    </TD>
                    <TD align="left" width="20%">
                        2015-11-10
                    </TD>
                </TR>
                </tbody>
            </table>
        </div>
        <div class="clear"></div>
        <div class="bwhtitle"></div>
        <div class="clear"></div>

    </div>
</div>
<div class="i_footer"></div>
</body>
</html>

