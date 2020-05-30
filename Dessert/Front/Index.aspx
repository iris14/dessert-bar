<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Dessert.Front.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.css" rel="stylesheet">
    <script src="/js/bootstrap-collapse.js"></script>
    <script src="/js/jquery.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <link href="css/index.css" rel="stylesheet">-->
    <style>
        .carouse {
            width: 800px;
            float: left;
        }

        .hot {
            margin-left:820px;
            margin-top: 0px;
            width: 380px;
            height: 600px;
            background-color: #fff;
            padding: 30px 20px 30px 20px;
        }

        .hotTitle, .newTitle, .typeTitle{
            color: #666;
            font-size: 22px;
        }
        .new{
            margin-top: -260px;
            width: 800px;
            height: 580px;
            background: #fff;
            padding: 30px 20px 30px 20px;
        }
        .hotType{
            margin-left: 820px;
            margin-top: -300px;
            width: 380px;
            height: 300px;
            background-color: #fff;
            padding: 30px 20px 30px 20px;
        }
    </style>
    <div class="container">
        
        <div class="carouse">
            <div class="carousel slide" id="myCarousel" style="margin-top: 0px;">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li class="active" data-target="#myCarousel" data-slide-to="0"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>

                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img width="100%" alt="First slide" src="/images/banner1.jpg">
                    </div>
                    <div class="item">
                        <img width="100%" alt="Second slide" src="/images/banner2.jpg">
                    </div>
                    <div class="item">
                        <img width="100%" alt="Third slide" src="/images/banner3.jpg">
                    </div>
                    <div class="item">
                        <img width="100%" alt="fouth slide" src="/images/banner4.jpg">
                    </div>
                    <div class="item">
                        <img width="100%" alt="fifth slide" src="/images/banner5.jpg">
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" role="button" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                </a>
                <a class="right carousel-control" role="button" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                </a>
            </div>
            <script>
                $(function () {
                    // 初始化轮播
                    $(".start-slide").click(function () {
                        $("#myCarousel").carousel('cycle');
                    });
                    // 停止轮播
                    $(".pause-slide").click(function () {
                        $("#myCarousel").carousel('pause');
                    });
                    // 循环轮播到上一个项目
                    $(".prev-slide").click(function () {
                        $("#myCarousel").carousel('prev');
                    });
                    // 循环轮播到下一个项目
                    $(".next-slide").click(function () {
                        $("#myCarousel").carousel('next');
                    });
                    // 循环轮播到某个特定的帧 
                    $(".slide-one").click(function () {
                        $("#myCarousel").carousel(0);
                    });
                    $(".slide-two").click(function () {
                        $("#myCarousel").carousel(1);
                    });
                    $(".slide-three").click(function () {
                        $("#myCarousel").carousel(2);
                    });
                });
        </script>
        </div>
        <!-- 热门菜谱 -->
        <div class="hot">
            <p class="hotTitle">热门甜品</p>
            <div style="color:#895359;">

                <asp:DataList ID="DataList2" runat="server" DataKeyField="DessertId" RepeatColumns="2" Width="350px">
                    <ItemTemplate>
                        <br />
                        ☀
                        <asp:Label ID="DessertNameLabel" runat="server" Text='<%# Eval("DessertName") %>' />
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
        <!-- 新秀菜谱 -->
        <div class="new">
            <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertCourse] ORDER BY [CourseTime] DESC, [CourseBrowse] DESC" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="DessertId" RepeatColumns="4" RepeatDirection="Horizontal" Width="400px">
                    <HeaderTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <p class="newTitle">
                                        甜品新秀</p>
                                </td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="28px" ImageUrl="~/images/last.png" OnClick="ImageButton2_Click" Width="21px" />
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="28px" ImageUrl="~/images/next.png" Width="21px" OnClick="ImageButton3_Click" />
                                </td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <br />
                        <table class="nav-justified" style="text-align: center">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" ImageUrl='<%# Eval("Cover", "~/images/dessert/{0}") %>' Width="180px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="DessertNameLabel" runat="server" Text='<%# Eval("DessertName") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
        <!-- 人气分类 -->
        <div class="hotType">
            <p class="typeTitle">人气分类</p>
            <div>

                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1" Height="280px" RepeatColumns="3" RepeatDirection="Horizontal" Width="380px" DataKeyField="CourseId">
                    <ItemTemplate>
                        CourseId:
                        <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                        <br />
                        UserId:
                        <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                        <br />
                        AdminId:
                        <asp:Label ID="AdminIdLabel" runat="server" Text='<%# Eval("AdminId") %>' />
                        <br />
                        CourseTitle:
                        <asp:Label ID="CourseTitleLabel" runat="server" Text='<%# Eval("CourseTitle") %>' />
                        <br />
                        CourseDetail:
                        <asp:Label ID="CourseDetailLabel" runat="server" Text='<%# Eval("CourseDetail") %>' />
                        <br />
                        CourseTime:
                        <asp:Label ID="CourseTimeLabel" runat="server" Text='<%# Eval("CourseTime") %>' />
                        <br />
                        CourseTag:
                        <asp:Label ID="CourseTagLabel" runat="server" Text='<%# Eval("CourseTag") %>' />
                        <br />
                        CourseComment:
                        <asp:Label ID="CourseCommentLabel" runat="server" Text='<%# Eval("CourseComment") %>' />
                        <br />
                        CourseCover:
                        <asp:Label ID="CourseCoverLabel" runat="server" Text='<%# Eval("CourseCover") %>' />
                        <br />
                        CourseBrowse:
                        <asp:Label ID="CourseBrowseLabel" runat="server" Text='<%# Eval("CourseBrowse") %>' />
                        <br />
                        CourseCheck:
                        <asp:Label ID="CourseCheckLabel" runat="server" Text='<%# Eval("CourseCheck") %>' />
                        <br />
                        CourseUserAdmin:
                        <asp:Label ID="CourseUserAdminLabel" runat="server" Text='<%# Eval("CourseUserAdmin") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
    </div>
</asp:Content>
