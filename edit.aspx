<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="standard.edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>云南省交通厅</title>
    <link href="../Styles/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <style type="text/css">


        table {
    *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0;
        }

.bordered {
    border: solid #ccc 1px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0 1px 1px #ccc; 
    -moz-box-shadow: 0 1px 1px #ccc; 
    box-shadow: 0 1px 1px #ccc;         
}

.bordered tr:hover {
    background: #fbf8e9;
    -o-transition: all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;     
}    
    
.bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 10px;
    text-align: left;    
}

.bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
}

.bordered td:first-child, .bordered th:first-child {
    border-left: none;
}

.bordered th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;
}

.bordered th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.bordered th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}



/*----------------------*/

.zebra td, .zebra th {
    padding: 10px;
    border-bottom: 1px solid #f2f2f2;    
}

.zebra tbody tr:nth-child(even) {
    background: #f5f5f5;
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
}

.zebra th {
    text-align: left;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
    border-bottom: 1px solid #ccc;
    background-color: #eee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
    background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
    background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
    background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
    background-image:      -o-linear-gradient(top, #f5f5f5, #eee); 
    background-image:         linear-gradient(top, #f5f5f5, #eee);
}

.zebra th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;  
}

.zebra th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.zebra th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.zebra tfoot td {
    border-bottom: 0;
    border-top: 1px solid #fff;
    background-color: #f1f1f1;  
}

.zebra tfoot td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.zebra tfoot td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}

.zebra tfoot td:only-child{
    -moz-border-radius: 0 0 6px 6px;
    -webkit-border-radius: 0 0 6px 6px
    border-radius: 0 0 6px 6px
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
<div class="i_content" style="height: 1000px">
    <div class="i_border">
        <h2>欢迎</h2>
        <p>欢迎访问云南省交通厅，以下为用户提交标准状态</p>
        <hr style="width:98%; margin-left:auto; margin-right:auto; color:#999;" />
        <br />
        <div id="show" align="center" style="width: auto; height: 80%; top: auto">
        <h3>待审核标准</h3>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="number" 
                    DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                    Height="16px" HorizontalAlign="Center" Width="623px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="White" BorderColor="#333300" BorderStyle="Double" 
                        BorderWidth="2px" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="number" HeaderText="number" InsertVisible="False" 
                            ReadOnly="True" SortExpression="number" />
                        <asp:BoundField DataField="标准项目名称" HeaderText="标准项目名称" 
                            SortExpression="标准项目名称" />
                        <asp:BoundField DataField="标准级别" HeaderText="标准级别" SortExpression="标准级别" />
                        <asp:BoundField DataField="体系表编号" HeaderText="体系表编号" SortExpression="体系表编号" />
                        <asp:BoundField DataField="预计起始年限" HeaderText="预计起始年限" 
                            SortExpression="预计起始年限" />
                        <asp:BoundField DataField="预计完成年限" HeaderText="预计完成年限" 
                            SortExpression="预计完成年限" />
                        <asp:BoundField DataField="主要起草单位" HeaderText="主要起草单位" 
                            SortExpression="主要起草单位" />
                        <asp:BoundField DataField="联系人" HeaderText="联系人" SortExpression="联系人" />
                        <asp:BoundField DataField="联系电话" HeaderText="联系电话" SortExpression="联系电话" />
                        <asp:BoundField DataField="电子邮箱" HeaderText="电子邮箱" SortExpression="电子邮箱" />
                        <asp:BoundField DataField="范围和主要技术内容" HeaderText="范围和主要技术内容" 
                            SortExpression="范围和主要技术内容" />
                        <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
                        <asp:BoundField DataField="目的及意义" HeaderText="目的及意义" SortExpression="目的及意义" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerSettings PageButtonCount="6" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:DetailsView>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                    Text="提交" Width="109px" />
            </p>
          
            
            </div>
    </div>
</div>
<div class="i_footer">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=(local);Initial Catalog=standard;Integrated Security=True" 
        DeleteCommand="DELETE FROM [bz] WHERE [number] = @number" 
        InsertCommand="INSERT INTO [bz] ([标准项目名称], [标准级别], [体系表编号], [预计起始年限], [预计完成年限], [主要起草单位], [联系人], [联系电话], [电子邮箱], [范围和主要技术内容], [备注], [目的及意义]) VALUES (@标准项目名称, @标准级别, @体系表编号, @预计起始年限, @预计完成年限, @主要起草单位, @联系人, @联系电话, @电子邮箱, @范围和主要技术内容, @备注, @目的及意义)" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT [number], [标准项目名称], [标准级别], [体系表编号], [预计起始年限], [预计完成年限], [主要起草单位], [联系人], [联系电话], [电子邮箱], [范围和主要技术内容], [备注], [目的及意义] FROM [bz] WHERE ([number] = @number)" 
        UpdateCommand="UPDATE [bz] SET [标准项目名称] = @标准项目名称, [标准级别] = @标准级别, [体系表编号] = @体系表编号, [预计起始年限] = @预计起始年限, [预计完成年限] = @预计完成年限, [主要起草单位] = @主要起草单位, [联系人] = @联系人, [联系电话] = @联系电话, [电子邮箱] = @电子邮箱, [范围和主要技术内容] = @范围和主要技术内容, [备注] = @备注, [目的及意义] = @目的及意义 WHERE [number] = @number">
        <DeleteParameters>
            <asp:Parameter Name="number" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="标准项目名称" Type="String" />
            <asp:Parameter Name="标准级别" Type="String" />
            <asp:Parameter Name="体系表编号" Type="String" />
            <asp:Parameter Name="预计起始年限" Type="String" />
            <asp:Parameter Name="预计完成年限" Type="String" />
            <asp:Parameter Name="主要起草单位" Type="String" />
            <asp:Parameter Name="联系人" Type="String" />
            <asp:Parameter Name="联系电话" Type="String" />
            <asp:Parameter Name="电子邮箱" Type="String" />
            <asp:Parameter Name="范围和主要技术内容" Type="String" />
            <asp:Parameter Name="备注" Type="String" />
            <asp:Parameter Name="目的及意义" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="number" QueryStringField="number" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="标准项目名称" Type="String" />
            <asp:Parameter Name="标准级别" Type="String" />
            <asp:Parameter Name="体系表编号" Type="String" />
            <asp:Parameter Name="预计起始年限" Type="String" />
            <asp:Parameter Name="预计完成年限" Type="String" />
            <asp:Parameter Name="主要起草单位" Type="String" />
            <asp:Parameter Name="联系人" Type="String" />
            <asp:Parameter Name="联系电话" Type="String" />
            <asp:Parameter Name="电子邮箱" Type="String" />
            <asp:Parameter Name="范围和主要技术内容" Type="String" />
            <asp:Parameter Name="备注" Type="String" />
            <asp:Parameter Name="目的及意义" Type="String" />
            <asp:Parameter Name="number" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
