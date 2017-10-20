<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user0.aspx.cs" Inherits="standard.user0" %>

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
                                &nbsp;&nbsp;</fieldset>
                            <fieldset id="actions">
                                &nbsp;<br />
                                欢迎！<br />
                                <br />
                                您的身份为：普通用户<br />
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
        <p>欢迎访问云南省交通厅，以下为用户提交标准状态</p>
        <hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        <br />
        <div id="show" align="center" style="width: auto; height: 84%; top: auto">
        <h3 style="height: 20px; width: 8%;">待审核标准</h3>
        <div style="height: 40%">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Width="671px" CellPadding="3" 
                GridLines="Horizontal" AllowPaging="True" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Height="16px" 
                PageSize="5">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="标准项目名称" HeaderText="标准项目名称" 
                        SortExpression="标准项目名称" />
                    <asp:BoundField DataField="标准级别" HeaderText="标准级别" SortExpression="标准级别" />
                    <asp:BoundField DataField="体系表编号" HeaderText="体系表编号" SortExpression="体系表编号" />
                    <asp:BoundField DataField="主要起草单位" HeaderText="主要起草单位" 
                        SortExpression="主要起草单位" />
                    <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerSettings PageButtonCount="5" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=(local);Initial Catalog=standard;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                
                
                SelectCommand="SELECT [标准项目名称], [标准级别], [体系表编号], [主要起草单位], [备注] FROM [bz] WHERE (([类型] &gt; @类型) AND ([类型] &lt; @类型2))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="类型" Type="Int32" />
                    <asp:Parameter DefaultValue="4" Name="类型2" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
            <h3>&nbsp;</h3>
            <h3>&nbsp;</h3>
            <h3>&nbsp;</h3>
            <h3>&nbsp;</h3>
            <h3>未通过标准</h3>
            <div style="height: 40%">
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                    GridLines="None" Width="677px" DataKeyNames="number" 
                    onrowcommand="GridView2_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="number" HeaderText="number" InsertVisible="False" 
                            ReadOnly="True" SortExpression="number" />
                        <asp:BoundField DataField="标准项目名称" HeaderText="标准项目名称" 
                            SortExpression="标准项目名称" />
                        <asp:BoundField DataField="标准级别" HeaderText="标准级别" SortExpression="标准级别" />
                        <asp:BoundField DataField="主要起草单位" HeaderText="主要起草单位" 
                            SortExpression="主要起草单位" />
                        <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
                        <asp:BoundField DataField="一阶段修改意见" HeaderText="一阶段修改意见" 
                            SortExpression="一阶段修改意见" />
                        <asp:BoundField DataField="二阶段修改意见" HeaderText="二阶段修改意见" 
                            SortExpression="二阶段修改意见" />
                        <asp:BoundField DataField="标委会意见" HeaderText="标委会意见" SortExpression="标委会意见" />
                        <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="操作" 
                            ShowHeader="True" Text="修改" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=(local);Initial Catalog=standard;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    
                    SelectCommand="SELECT [标准项目名称], [标准级别], [主要起草单位], [备注], [一阶段修改意见], [二阶段修改意见], [标委会意见], [number] FROM [bz] WHERE ([类型] = @类型)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="类型" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            
            </div>
    </div>
</div>
<div class="i_footer"></div>
    </form>
</body>
</html>