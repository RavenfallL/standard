<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="standard.index" %>

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
                        &nbsp;&nbsp;&nbsp; &nbsp; 
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
        <p>欢迎访问云南省交通厅，以下为标准公示内容</p>
        <hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BorderColor="#CCCCCC" BorderWidth="1px" DataSourceID="SqlDataSource1" 
            Font-Bold="True" Height="768px" 
            style="margin-left: 4px; margin-right: 0px" Width="954px" 
            AllowPaging="True" BackColor="White" BorderStyle="None" CellPadding="3" 
            DataKeyNames="number">
            <Columns>
                <asp:BoundField DataField="标准项目名称" HeaderText="标准项目名称" 
                    SortExpression="标准项目名称" />
                <asp:BoundField DataField="number" HeaderText="number" 
                    SortExpression="number" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="体系表编号" HeaderText="体系表编号" 
                    SortExpression="体系表编号" />
                <asp:BoundField DataField="预计起始年限" HeaderText="预计起始年限" 
                    SortExpression="预计起始年限" />
                <asp:BoundField DataField="预计完成年限" HeaderText="预计完成年限" 
                    SortExpression="预计完成年限" />
                <asp:BoundField DataField="主要起草单位" HeaderText="主要起草单位" 
                    SortExpression="主要起草单位" />
                <asp:BoundField DataField="范围和主要技术内容" HeaderText="范围和主要技术内容" 
                    SortExpression="范围和主要技术内容" />
                <asp:BoundField DataField="目的及意义" HeaderText="目的及意义" SortExpression="目的及意义" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            </Columns>
            <EditRowStyle BorderStyle="Dashed" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Left" 
                VerticalAlign="Middle" BackColor="White" ForeColor="#000066" />
            <RowStyle BorderColor="Black" BorderStyle="Double" BorderWidth="2px" 
                ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BorderColor="Black" BorderStyle="Solid" 
                BorderWidth="2px" BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BorderColor="Black" BorderStyle="Groove" 
                BackColor="#007DBB" />
            <SortedDescendingCellStyle BorderColor="Black" BorderStyle="Groove" 
                BorderWidth="2px" BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BorderColor="Black" BorderStyle="Groove" 
                BorderWidth="2px" BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=(local);Initial Catalog=standard;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" 
            
            SelectCommand="SELECT [标准项目名称], [number], [体系表编号], [预计起始年限], [预计完成年限], [主要起草单位], [范围和主要技术内容], [目的及意义], [备注] FROM [bz] WHERE ([类型] = @类型)">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="类型" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
<div class="i_footer"></div>
    </form>
</body>
</html>

