<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 2017/11/3
  Time: 11:18
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Xenon Boostrap Admin Panel"/>
    <meta name="author" content=""/>

    <title>Xenon - Charts</title>

    <%--<link rel="stylesheet" href="http://fonts.useso.com/css?family=Arimo:400,700,400italic">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts/linecons/css/linecons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-core.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-forms.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-components.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-skins.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css">
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/pager.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body class="page-body">


</div>

<div class="page-container">
    <!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

    <!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
    <!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
    <!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
    <div class="sidebar-menu toggle-others fixed">
        <div class="sidebar-menu-inner">
            <header class="logo-env">
                <!-- logo -->
                <div class="logo">
                    <a href="#" class="logo-expanded">
                        <img src="${pageContext.request.contextPath}/images/logo@2x.png" width="80" alt="" />
                        <span style="color:#919292;font-size: 22px">项目管理系统</span>
                    </a>
                    <a href="dashboard-1.html" class="logo-collapsed">
                        <img src="${pageContext.request.contextPath}/images/logo-collapsed@2x.png" width="40" alt="" />
                    </a>
                </div>

                <!-- This will toggle the mobile menu and will be visible only on mobile devices -->
                <div class="mobile-menu-toggle visible-xs">
                    <a href="#" data-toggle="user-info-menu">
                        <i class="fa-bell-o"></i>
                        <span class="badge badge-success">7</span>
                    </a>
                    <a href="#" data-toggle="mobile-menu">
                        <i class="fa-bars"></i>
                    </a>
                </div>
            </header>
        <%-- 左侧菜单 --%>
            <ul id="main-menu" class="main-menu">
                <!-- add class "multiple-expanded" to allow multiple submenus to open -->
                <!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
                <li>
                    <a href="dashboard-1.html">
                        <i class="linecons-cog"></i>
                        <span class="title">用户信息管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/pages/addUser.jsp">
                                <span class="title">新增用户信息</span>
                            </a>
                        </li>
                        <li>
                            <a href="userAction_selectAllUser?pageBean.cpage=1">
                                <span class="title">查看用户信息</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="layout-variants.html">
                        <i class="linecons-desktop"></i>
                        <span class="title">客户信息管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/pages/addCustomer.jsp">
                                <span class="title">新增客户信息</span>
                            </a>
                        </li>
                        <li>
                            <a href="customerAction_selectAllCustomer?pageBean.cpage=1">
                                <span class="title">查看客户信息</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="ui-panels.html">
                        <i class="linecons-note"></i>
                        <span class="title">产品信息管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/pages/addProduct.jsp">
                                <span class="title">新增产品信息</span>
                            </a>
                        </li>
                        <li>
                            <a href="productAction_selectAllProduct?pageBean.cpage=1">
                                <span class="title">查看产品信息</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="mailbox-main.html">
                        <i class="linecons-mail"></i>
                        <span class="title">项目管理</span>
                        <span class="label label-success pull-right">5</span>
                    </a>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/pages/addItem.jsp">
                                <span class="title">新增项目信息</span>
                            </a>
                        </li>
                        <li>
                            <a href="itemAction_selectAllItem?pageBean.cpage=1">
                                <span class="title">查看项目信息</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/extra-login.jsp">
                        <i class="linecons-star"></i>
                        <span class="title">退出</span>
                    </a>
                </li>
                <ul>
                <%--<li>
                    <a href="tables-basic.html">
                        <i class="linecons-database"></i>
                        <span class="title">Tables</span>
                    </a>
                    <ul>
                        <li>
                            <a href="tables-basic.html">
                                <span class="title">Basic Tables</span>
                            </a>
                        </li>
                        <li>
                            <a href="tables-responsive.html">
                                <span class="title">Responsive Table</span>
                            </a>
                        </li>
                        <li>
                            <a href="tables-datatables.html">
                                <span class="title">Data Tables</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="forms-native.html">
                        <i class="linecons-params"></i>
                        <span class="title">Forms</span>
                    </a>
                    <ul>
                        <li>
                            <a href="forms-native.html">
                                <span class="title">Native Elements</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-advanced.html">
                                <span class="title">Advanced Plugins</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-wizard.html">
                                <span class="title">Form Wizard</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-validation.html">
                                <span class="title">Form Validation</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-input-masks.html">
                                <span class="title">Input Masks</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-file-upload.html">
                                <span class="title">File Upload</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-editors.html">
                                <span class="title">Editors</span>
                            </a>
                        </li>
                        <li>
                            <a href="forms-sliders.html">
                                <span class="title">Sliders</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="extra-gallery.html">
                        <i class="linecons-beaker"></i>
                        <span class="title">Extra</span>
                        <span class="label label-purple pull-right hidden-collapsed">New Items</span>
                    </a>
                    <ul>
                        <li>
                            <a href="extra-icons-fontawesome.html">
                                <span class="title">Icons</span>
                                <span class="label label-warning pull-right">4</span>
                            </a>
                            <ul>
                                <li>
                                    <a href="extra-icons-fontawesome.html">
                                        <span class="title">Font Awesome</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="extra-icons-linecons.html">
                                        <span class="title">Linecons</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="extra-icons-elusive.html">
                                        <span class="title">Elusive</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="extra-icons-meteocons.html">
                                        <span class="title">Meteocons</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="extra-maps-google.html">
                                <span class="title">Maps</span>
                            </a>
                            <ul>
                                <li>
                                    <a href="extra-maps-google.html">
                                        <span class="title">Google Maps</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="extra-maps-advanced.html">
                                        <span class="title">Advanced Map</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="extra-maps-vector.html">
                                        <span class="title">Vector Map</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="extra-gallery.html">
                                <span class="title">Gallery</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-calendar.html">
                                <span class="title">Calendar</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-profile.html">
                                <span class="title">Profile</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-login.html">
                                <span class="title">Login</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-lockscreen.html">
                                <span class="title">Lockscreen</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-login-light.html">
                                <span class="title">Login Light</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-timeline.html">
                                <span class="title">Timeline</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-timeline-center.html">
                                <span class="title">Timeline Centerd</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-notes.html">
                                <span class="title">Notes</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-image-crop.html">
                                <span class="title">Image Crop</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-portlets.html">
                                <span class="title">Portlets</span>
                            </a>
                        </li>
                        <li>
                            <a href="blank-sidebar.html">
                                <span class="title">Blank Page</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-search.html">
                                <span class="title">Search</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-invoice.html">
                                <span class="title">Invoice</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-not-found.html">
                                <span class="title">404 Page</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-tocify.html">
                                <span class="title">Tocify</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-loader.html">
                                <span class="title">Loading Progress</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-page-loading-ol.html">
                                <span class="title">Page Loading Overlay</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-notifications.html">
                                <span class="title">Notifications</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-nestable-lists.html">
                                <span class="title">Nestable Lists</span>
                            </a>
                        </li>
                        <li>
                            <a href="extra-scrollable.html">
                                <span class="title">Scrollable</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="active opened active">
                    <a href="charts-main.html">
                        <i class="linecons-globe"></i>
                        <span class="title">Charts</span>
                    </a>
                    <ul>
                        <li class="active">
                            <a href="charts-main.html">
                                <span class="title">Chart Variants</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-range.html">
                                <span class="title">Range Selector</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-sparklines.html">
                                <span class="title">Sparklines</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-map.html">
                                <span class="title">Map Charts</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-gauges.html">
                                <span class="title">Circular Gauges</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-bar-gauges.html">
                                <span class="title">Bar Gauges</span>
                            </a>
                        </li>
                    </ul>--%>
                </li>
                <li>
                    <a href="#">
                        <i class="linecons-cloud"></i>
                        <span class="title">Menu Levels</span>
                    </a>
                    <ul>
                        <li>
                            <a href="#">
                                <i class="entypo-flow-line"></i>
                                <span class="title">Menu Level 1.1</span>
                            </a>
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="entypo-flow-parallel"></i>
                                        <span class="title">Menu Level 2.1</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="entypo-flow-parallel"></i>
                                        <span class="title">Menu Level 2.2</span>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <i class="entypo-flow-cascade"></i>
                                                <span class="title">Menu Level 3.1</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="entypo-flow-cascade"></i>
                                                <span class="title">Menu Level 3.2</span>
                                            </a>
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <i class="entypo-flow-branch"></i>
                                                        <span class="title">Menu Level 4.1</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="entypo-flow-parallel"></i>
                                        <span class="title">Menu Level 2.3</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="entypo-flow-line"></i>
                                <span class="title">Menu Level 1.2</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="entypo-flow-line"></i>
                                <span class="title">Menu Level 1.3</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>

    </div>

    <div class="main-content">

        <!-- User Info, Notifications and Menu Bar -->
        <nav class="navbar user-info-navbar" role="navigation">

            <!-- Left links for user info navbar -->
            <ul class="user-info-menu left-links list-inline list-unstyled">

                <li class="hidden-sm hidden-xs">
                    <a href="#" data-toggle="sidebar">
                        <i class="fa-bars"></i>
                    </a>
                </li>

                <li class="dropdown hover-line">
                    <a href="#" data-toggle="dropdown">
                        <i class="fa-envelope-o"></i>
                        <span class="badge badge-green">3</span>
                    </a>

                    <ul class="dropdown-menu messages">
                        <li>

                            <ul class="dropdown-menu-list list-unstyled ps-scrollbar">

                                <li class="active"><!-- "active" class means message is unread -->
                                    <a href="#">
											<span class="line">
												<strong>Luc Chartier</strong>
												<span class="light small">- yesterday</span>
											</span>

                                        <span class="line desc small">
												This ain’t our first item, it is the best of the rest.
											</span>
                                    </a>
                                </li>

                                <li class="active">
                                    <a href="#">
											<span class="line">
												<strong>Salma Nyberg</strong>
												<span class="light small">- 2 days ago</span>
											</span>

                                        <span class="line desc small">
												Oh he decisively impression attachment friendship so if everything.
											</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
											<span class="line">
												Hayden Cartwright
												<span class="light small">- a week ago</span>
											</span>

                                        <span class="line desc small">
												Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
											</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
											<span class="line">
												Sandra Eberhardt
												<span class="light small">- 16 days ago</span>
											</span>

                                        <span class="line desc small">
												On so attention necessary at by provision otherwise existence direction.
											</span>
                                    </a>
                                </li>

                                <!-- Repeated -->

                                <li class="active"><!-- "active" class means message is unread -->
                                    <a href="#">
											<span class="line">
												<strong>Luc Chartier</strong>
												<span class="light small">- yesterday</span>
											</span>

                                        <span class="line desc small">
												This ain’t our first item, it is the best of the rest.
											</span>
                                    </a>
                                </li>

                                <li class="active">
                                    <a href="#">
											<span class="line">
												<strong>Salma Nyberg</strong>
												<span class="light small">- 2 days ago</span>
											</span>

                                        <span class="line desc small">
												Oh he decisively impression attachment friendship so if everything.
											</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
											<span class="line">
												Hayden Cartwright
												<span class="light small">- a week ago</span>
											</span>

                                        <span class="line desc small">
												Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
											</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
											<span class="line">
												Sandra Eberhardt
												<span class="light small">- 16 days ago</span>
											</span>

                                        <span class="line desc small">
												On so attention necessary at by provision otherwise existence direction.
											</span>
                                    </a>
                                </li>

                            </ul>

                        </li>

                        <li class="external">
                            <a href="blank-sidebar.html">
                                <span>All Messages</span>
                                <i class="fa-link-ext"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="dropdown hover-line">
                    <a href="#" data-toggle="dropdown">
                        <i class="fa-bell-o"></i>
                        <span class="badge badge-purple">5</span>
                    </a>

                    <ul class="dropdown-menu notifications">
                        <li class="top">
                            <p class="small">
                                <a href="#" class="pull-right">Mark all Read</a>
                                You have <strong>3</strong> new notifications.
                            </p>
                        </li>

                        <li>
                            <ul class="dropdown-menu-list list-unstyled ps-scrollbar">
                                <li class="active notification-success">
                                    <a href="#">
                                        <i class="fa-user"></i>

                                        <span class="line">
												<strong>New user registered</strong>
											</span>

                                        <span class="line small time">
												30 seconds ago
											</span>
                                    </a>
                                </li>

                                <li class="active notification-secondary">
                                    <a href="#">
                                        <i class="fa-lock"></i>

                                        <span class="line">
												<strong>Privacy settings have been changed</strong>
											</span>

                                        <span class="line small time">
												3 hours ago
											</span>
                                    </a>
                                </li>

                                <li class="notification-primary">
                                    <a href="#">
                                        <i class="fa-thumbs-up"></i>

                                        <span class="line">
												<strong>Someone special liked this</strong>
											</span>

                                        <span class="line small time">
												2 minutes ago
											</span>
                                    </a>
                                </li>

                                <li class="notification-danger">
                                    <a href="#">
                                        <i class="fa-calendar"></i>

                                        <span class="line">
												John cancelled the event
											</span>

                                        <span class="line small time">
												9 hours ago
											</span>
                                    </a>
                                </li>

                                <li class="notification-info">
                                    <a href="#">
                                        <i class="fa-database"></i>

                                        <span class="line">
												The server is status is stable
											</span>

                                        <span class="line small time">
												yesterday at 10:30am
											</span>
                                    </a>
                                </li>

                                <li class="notification-warning">
                                    <a href="#">
                                        <i class="fa-envelope-o"></i>

                                        <span class="line">
												New comments waiting approval
											</span>

                                        <span class="line small time">
												last week
											</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="external">
                            <a href="#">
                                <span>View all notifications</span>
                                <i class="fa-link-ext"></i>
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>

            <!-- Right links for user info navbar -->
            <ul class="user-info-menu right-links list-inline list-unstyled">
                <li class="dropdown user-profile">
                    <a href="#" data-toggle="dropdown">
                        <img src="${pageContext.request.contextPath}/${loginUser.uploadImage}" width="30" height="35"/>
                        <span>
                            <span style="font-size: 18px">${loginUser.uname}</span>
                            <s:if test="#session.loginUser.utype==1">
                                <span>研发员</span>
                            </s:if>
                            <s:if test="#session.loginUser.utype==2">
                                 <span>业务员</span>
                            </s:if>
                            <s:if test="#session.loginUser.utype==3">
                                <span>管理员</span>
                            </s:if>
								<i class="fa-angle-down"></i>
							</span><br/>
                    </a>

                    <ul class="dropdown-menu user-profile-menu list-unstyled">
                        <li class="last">
                            <a href="${pageContext.request.contextPath}/pages/extra-login.jsp">
                                <i class="fa-lock"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="page-title">

            <div class="title-env">
                <h3 class="title" style="color:#979898">欢迎${loginUser.uname}使用项目管理系统</h3>
                <br/>
                当前日期：<span id="clock"></span>
               <%-- <p class="description">Data visualization widgets for your stats</p>--%>
            </div>

            <div class="breadcrumb-env">

                <ol class="breadcrumb bc-1">
                    <li>
                        <a href="${pageContext.request.contextPath}/index.jsp"><i class="fa-home"></i>首页</a>
                    </li>
                    <li class="active">
                        <strong>更改用户</strong>
                    </li>
                </ol>
            </div>
        </div>
        <%-- 添加用户 --%>
        <h3>更改用户</h3>
        <div>
            <s:if test="#parameters.msg[0]=='success'">
                <p style="color:#979898">更改成功!</p>
            </s:if>
            <s:elseif test="#parameters.msg[0]=='error'">
                <p style="color:#979898">更改失败!</p>
            </s:elseif>
        </div>
        <form role="form" action="userAction_updateUsers" enctype="multipart/form-data" onsubmit="return test()">
            <input type="hidden" name="user.uno"/>
            <div class="form-group">
                <label name="user.uname">用户名<span id="span1" style="display: none"></span></label>
                <s:textfield name="user.uname" class="form-control input-dark" id="username" autocomplete="off" style="width:300px"/><br/>
            </div>
            <div class="form-group">
                <label name="user.upwd">密码<span id="span2" style="display: none"></span></label>
                <s:password name="user.upwd" class="form-control input-dark" id="password" autocomplete="off" style="width:300px"/><br/>
            </div>
            <div class="form-group">
                <label name="user.uphone">电话<span id="span3" style="display: none"></span></label>
                <s:textfield name="user.uphone" class="form-control input-dark" id="phone" autocomplete="off" style="width:300px"/><br/>
            </div>
            <div class="form-group">
                <label name="user.uemail">邮箱<span id="span4" style="display: none"></span></label>
                <s:textfield name="user.uemail" class="form-control input-dark" id="email" autocomplete="off" style="width:300px"/><br/>
            </div>
            <label class="control-label" name="user.utype" style="color: #979898;">用户类型</label>
            <s:radio list="#{'1':'研发人员','2':'业务人员','3':'管理人员'}" name="user.utype" style="color:#979898"/><br/>

            <label class="control-label" name="uploadImage" style="margin-top: 0px">用户图像</label>
            <img alt="" src="${pageContext.request.contextPath}/${user.uploadImage }" width="30" height="30"><br/>
            <input type="file" name="uploadImage" id="ufile"/>
            <div class="form-group">
                <label name="user.uremark">备注<span id="span5" style="display: none"></span></label>
                <s:textarea name="user.uremark" cols="30" rows="5" class="form-control input-dark" id="uremark" autocomplete="off" style="width:300px"/><br/>
            </div>
            <button type="submit" class="btn btn-default">更改用户</button>
        </form>

        <footer class="main-footer sticky footer-type-1">

            <div class="footer-inner">

                <div class="footer-text">
                    &copy; 2017
                    <strong>权限</strong>
                     权限管理 - 管理 <a href="#" title="管理系统" target="_blank">管理系统</a>
                </div>

                <!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
                <div class="go-up">

                    <a href="#" rel="go-top">
                        <i class="fa-angle-up"></i>
                    </a>

                </div>

            </div>

        </footer>
    </div>


    <!-- start: Chat Section -->
    <div id="chat" class="fixed">

        <div class="chat-inner">


            <h2 class="chat-header">
                <a href="#" class="chat-close" data-toggle="chat">
                    <i class="fa-plus-circle rotate-45deg"></i>
                </a>

                Chat
                <span class="badge badge-success is-hidden">0</span>
            </h2>

            <script type="text/javascript">
                // Here is just a sample how to open chat conversation box
                jQuery(document).ready(function($)
                {
                    var $chat_conversation = $(".chat-conversation");

                    $(".chat-group a").on('click', function(ev)
                    {
                        ev.preventDefault();

                        $chat_conversation.toggleClass('is-open');

                        $(".chat-conversation textarea").trigger('autosize.resize').focus();
                    });

                    $(".conversation-close").on('click', function(ev)
                    {
                        ev.preventDefault();
                        $chat_conversation.removeClass('is-open');
                    });
                });
                function test(){
                    if($("#username").val()=="") {
                        $("#span1").text('用户名不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                        return false;
                    }
                    if(!$("#username").val()==""){
                        var str_name = document.getElementById("username").value;
                        var patt1= /^[0-9a-zA-Z]{6,20}$/;
                        if(!patt1.test(str_name)){
                            alert("用户名格式错误！");
                            return false;
                        }
                    }
                    if($("#password").val()==""){
                        $("#span2").text('密码不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                        return false;
                    }
                    if(!$("#password").val()==""){
                        var str_pwd = document.getElementById("password").value;
                        var patt2= /^[a-zA-Z]\w{5,17}$/;
                        if(!patt2.test(str_pwd)){
                            alert("密码格式错误！");
                            return false;
                        }
                    }
                    if($("#phone").val()==""){
                        $("#span3").text('电话不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                        return false;
                    }
                    if(!$("#phone").val()==""){
                        var str_phone = document.getElementById("phone").value;
                        var patt3= /^(13[0-9]{9})|(15[89][0-9]{8})|(18[0-7]{9})$/;
                        if(!patt3.test(str_phone)){
                            alert("电话格式错误！");
                            return false;
                        }
                    }
                    if($("#email").val()=="") {
                        $("#span4").text('邮箱不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                        return false;
                    }
                    if(!$("#email").val()==""){
                        var str_email = document.getElementById("email").value;
                        var patt4= /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                        if(!patt4.test(str_email)){
                            alert("邮箱格式错误！");
                            return false;
                        }
                    }
                    if($("#uremark").val()==""){
                        $("#span5").text('备注不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                        return false;
                    }
                }
            </script>


            <div class="chat-group">
                <strong>Favorites</strong>

                <a href="#"><span class="user-status is-online"></span> <em>Catherine J. Watkins</em></a>
                <a href="#"><span class="user-status is-online"></span> <em>Nicholas R. Walker</em></a>
                <a href="#"><span class="user-status is-busy"></span> <em>Susan J. Best</em></a>
                <a href="#"><span class="user-status is-idle"></span> <em>Fernando G. Olson</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Brandon S. Young</em></a>
            </div>


            <div class="chat-group">
                <strong>Work</strong>

                <a href="#"><span class="user-status is-busy"></span> <em>Rodrigo E. Lozano</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Robert J. Garcia</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Daniel A. Pena</em></a>
            </div>


            <div class="chat-group">
                <strong>Other</strong>

                <a href="#"><span class="user-status is-online"></span> <em>Dennis E. Johnson</em></a>
                <a href="#"><span class="user-status is-online"></span> <em>Stuart A. Shire</em></a>
                <a href="#"><span class="user-status is-online"></span> <em>Janet I. Matas</em></a>
                <a href="#"><span class="user-status is-online"></span> <em>Mindy A. Smith</em></a>
                <a href="#"><span class="user-status is-busy"></span> <em>Herman S. Foltz</em></a>
                <a href="#"><span class="user-status is-busy"></span> <em>Gregory E. Robie</em></a>
                <a href="#"><span class="user-status is-busy"></span> <em>Nellie T. Foreman</em></a>
                <a href="#"><span class="user-status is-busy"></span> <em>William R. Miller</em></a>
                <a href="#"><span class="user-status is-idle"></span> <em>Vivian J. Hall</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Melinda A. Anderson</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Gary M. Mooneyham</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Robert C. Medina</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Dylan C. Bernal</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Marc P. Sanborn</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Kenneth M. Rochester</em></a>
                <a href="#"><span class="user-status is-offline"></span> <em>Rachael D. Carpenter</em></a>
            </div>

        </div>

        <!-- conversation template -->
        <div class="chat-conversation">

            <div class="conversation-header">
                <a href="#" class="conversation-close">
                    &times;
                </a>

                <span class="user-status is-online"></span>
                <span class="display-name">Arlind Nushi</span>
                <small>Online</small>
            </div>

            <ul class="conversation-body">
                <li>
                    <span class="user">Arlind Nushi</span>
                    <span class="time">09:00</span>
                    <p>Are you here?</p>
                </li>
                <li class="odd">
                    <span class="user">Brandon S. Young</span>
                    <span class="time">09:25</span>
                    <p>This message is pre-queued.</p>
                </li>
                <li>
                    <span class="user">Brandon S. Young</span>
                    <span class="time">09:26</span>
                    <p>Whohoo!</p>
                </li>
                <li class="odd">
                    <span class="user">Arlind Nushi</span>
                    <span class="time">09:27</span>
                    <p>Do you like it?</p>
                </li>
            </ul>

            <div class="chat-textarea">
                <textarea class="form-control autogrow" placeholder="Type your message"></textarea>
            </div>

        </div>

    </div>

    <!-- end: Chat Section -->


</div>

<!-- Bottom Scripts -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath}/js/resizeable.js"></script>
<script src="${pageContext.request.contextPath}/js/joinable.js"></script>
<script src="${pageContext.request.contextPath}/js/xenon-api.js"></script>
<script src="${pageContext.request.contextPath}/js/xenon-toggles.js"></script>


<!-- Imported scripts on this page -->
<script src="${pageContext.request.contextPath}/js/devexpress-web-14.1/js/globalize.min.js"></script>
<script src="${pageContext.request.contextPath}/js/devexpress-web-14.1/js/dx.chartjs.js"></script>


<!-- JavaScripts initializations and stuff -->
<script src="${pageContext.request.contextPath}/js/xenon-custom.js"></script>

</body>
</html>
<%--显示系统时间--%>
<script language="javascript">
    function realSysTime(clock){
        var now=new Date(); //创建Date对象
        var year=now.getFullYear(); //获取年份
        var month=now.getMonth(); //获取月份
        var date=now.getDate(); //获取日期
        var day=now.getDay(); //获取星期
        var hour=now.getHours(); //获取小时
        var minu=now.getMinutes(); //获取分钟
        var sec=now.getSeconds(); //获取秒钟
        month=month+1;
        var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        var week=arr_week[day]; //获取中文的星期
        var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec; //组合系统时间
        clock.innerHTML=time; //显示系统时间
        $("input[type='button']").css("width","50px");
    }
    window.onload=function(){
        window.setInterval("realSysTime(clock)",1000); //实时获取并显示系统时间
    }
    //设置分页信息
    Page({
        num:8,					//页码数
        startnum:1,			//指定页码
        elem:$('#page2'),		//指定的元素
        callback:function(n){	//回调函数
            console.log(n);
        }
    });
</script>