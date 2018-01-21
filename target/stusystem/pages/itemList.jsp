<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 2017/11/3
  Time: 11:18
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <li>
                            <a href="userAction_selectByIdUsers?user.uno=${loginUser.uno}">
                                <i class="fa-edit"></i>
                                更改用户信息
                            </a>
                        </li>
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
                    <li class="userAction_selectAllUser?pageBean.cpage=1">
                        <strong>查看用户信息</strong>
                    </li>
                </ol>
            </div>
        </div>
        <%-- 查询输入框 --%>
        <div style="float: right;margin-top: -16px">
        <ul class="user-info-menu right-links list-inline list-unstyled">
            <li class="search-form"><!-- You can add "always-visible" to show make the search input visible -->
                <%--<form method="post" action="userAction_selectAllUser">
                    <input type="text" name="s" class="form-control search-field" placeholder="请输入需要查询内容..."/>
                    <input type="hidden" name="querys" value="1">
                    <button type="submit" class="btn btn-link">
                        <i class="linecons-search" style="positon:relative;margin-top: -30px;margin-left:180px;display:block;"></i>
                    </button>
                </form>--%>
                <s:form id="seachFrm" action="itemAction_selectAllItem" method="post">
                    项目名称:<s:textfield name="querys" size="10" value="%{querys[0]}"/>-
                    创建日期:<s:textfield name="querys" size="10" value="%{querys[1]}"/>-
                    项目金额:<s:textfield name="querys" size="10" value="%{querys[2]}"/>
                    <s:hidden name="pageBean.cpage" value="1"/>
                    <input type="submit" value="查询">
                </s:form>
            </li>
        </ul>
    </div>
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <td>编号</td>
                    <td>名称</td>
                    <td>简介</td>
                    <td>日期</td>
                    <td>金额</td>
                    <td>类型</td>
                    <td>付款</td>
                    <td>备注</td>
                    <td>状态</td>
                    <td>客户姓名</td>
                    <td>产品名称</td>
                    <td>用户姓名</td>
                    <td colspan="2" align="center">操作</td>
                </tr>
                </thead>
                <tbody>
                <s:iterator var="obj" value="pageBean.result" status="ids">
                        <td>${(pageBean.cpage-1)*pageBean.showNum+ids.count}</td>
                        <td>${obj[1]}</td><td>${obj[2]}</td>
                        <td>${obj[3].toString().substring(0,10)}</td>
                        <td>${obj[4]}</td><td>${obj[5]==0?"试用":"正式"}<td>${obj[6]==0?"未结款":(obj[6]==1)?"结款中":"已结款"}</td>
                        <td>${obj[7]}</td><td>${obj[8]==0?"无效":"有效"}</td><td>${obj[9]}</td><td>${obj[10]}</td><td>${obj[11]}</td>
                        <td><button type="button" class="btn btn-success" onclick="window.location.href='itemAction_selectByIdItem?item.cid=${obj[0]}'">更新</button><br/>
                        <td><button type="button" class="btn btn-danger" onclick="window.location.href='itemAction_deleteItem?item.cid=${obj[0]}'">删除</button><br/>
                        <td><button type="button" class="btn btn-danger" onclick="window.location.href='itemAction_downLoadExcel'">导出</button><br/>
                    </tr>
                </s:iterator>
                </tbody>
            </table>
        </div>

    <%-- 查询所有客户信息 --%>
        <div style="position: relative;margin-top: 20px;float: right">
            <span>共计${pageBean.allNum}条数据,共计${pageBean.allPage }页,当前第${pageBean.cpage}页</span>
            <c:forEach var="i" begin="1" end="${pageBean.allPage }" step="1">
                <input type="button" value="第${i }页" onClick="location.href='itemAction_selectAllItem?pageBean.cpage=${i}'"/>
            </c:forEach>
            <a href="itemAction_selectAllItem?pageBean.cpage=1">首页</a>|
            <a href="itemAction_selectAllItem?pageBean.cpage=${pageBean.cpage-1>0?pageBean.cpage-1:1}">上一页</a>|
            <a href="itemAction_selectAllItem?pageBean.cpage=${pageBean.cpage+1>pageBean.allPage?pageBean.allPage:pageBean.cpage+1}">下一页</a>|
            <a href="itemAction_selectAllItem?pageBean.cpage=${pageBean.allPage}">尾页</a>
            <form action="itemAction_selectAllItem" method="post">
                跳转到:<input name="pageBean.cpage"/>页
                <input type="submit" value="确定" onclick="jump()">
            </form>
            <script type="text/javascript">
                function jump(){
                    alert($(input[name='pageBean.cpage']));
                }
            </script>
        <%--  <script>
                var xenonPalette = ['#68b828','#7c38bc','#0e62c7','#fcd036','#4fcdfc','#00b19d','#ff6264','#f7aa47'];
            </script>

                <div class="row">
                  <div class="col-sm-12">

                       <div class="panel panel-default">
                           <div class="panel-heading">
                               <h3 class="panel-title">Standard Bar</h3>
                               <div class="panel-options">
                                   <a href="#" data-toggle="panel">
                                       <span class="collapse-icon">&ndash;</span>
                                       <span class="expand-icon">+</span>
                                   </a>
                                   <a href="#" data-toggle="remove">
                                       &times;
                                   </a>
                               </div>
                           </div>
                           <div class="panel-body">
                               <script type="text/javascript">
                                   jQuery(document).ready(function($)
                                   {
                                       $("#bar-1").dxChart({
                                           dataSource: [
                                               {day: "Monday", sales: 3},
                                               {day: "Tuesday", sales: 2},
                                               {day: "Wednesday", sales: 3},
                                               {day: "Thursday", sales: 4},
                                               {day: "Friday", sales: 6},
                                               {day: "Saturday", sales: 11},
                                               {day: "Sunday", sales: 4}
                                           ],

                                           series: {
                                               argumentField: "day",
                                               valueField: "sales",
                                               name: "Sales",
                                               type: "bar",
                                               color: '#68b828'
                                           }
                                       });

                                       $("#bar-1-randomize").on('click', function(ev)
                                       {
                                           ev.preventDefault();

                                           $('#bar-1').dxChart('instance').option('dataSource', [
                                               {day: "Monday", sales: between(1,25)},
                                               {day: "Tuesday", sales: between(1,25)},
                                               {day: "Wednesday", sales: between(1,25)},
                                               {day: "Thursday", sales: between(1,25)},
                                               {day: "Friday", sales: between(1,25)},
                                               {day: "Saturday", sales: between(1,25)},
                                               {day: "Sunday", sales: between(1,25)}
                                           ]);
                                       });
                                   });

                                   function between(randNumMin, randNumMax)
                                   {
                                       var randInt = Math.floor((Math.random() * ((randNumMax + 1) - randNumMin)) + randNumMin);

                                       return randInt;
                                   }
                               </script>
                               <div id="bar-1" style="height: 440px; width: 100%;"></div>
                               <br />
                               <a href="#" id="bar-1-randomize" class="btn btn-primary btn-small">Randomize</a>
                           </div>
                       </div>

                   </div>
               </div>--%>

<%--        <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Grouped Bars</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { state: "China", oil: 4.95, gas: 2.85, coal: 45.56 },
                                    { state: "Russia", oil: 12.94, gas: 17.66, coal: 4.13 },
                                    { state: "USA", oil: 8.51, gas: 19.87, coal: 15.84 },
                                    { state: "Iran", oil: 5.3, gas: 4.39 },
                                    { state: "Canada", oil: 4.08, gas: 5.4 },
                                    { state: "Saudi Arabia", oil: 12.03 },
                                    { state: "Mexico", oil: 3.86 }
                                ];

                                $("#bar-2").dxChart({
                                    equalBarWidth: false,
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        argumentField: "state",
                                        type: "bar"
                                    },
                                    series: [
                                        { valueField: "oil", name: "Oil Production", color: "#0e62c7" },
                                        { valueField: "gas", name: "Gas Production", color: "#2c2e2f" },
                                        { valueField: "coal", name: "Coal Production", color: "#7c38bc" }
                                    ],
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    },
                                    title: "Percent of Total Energy Production"
                                });
                            });
                        </script>
                        <div id="bar-2" style="height: 400px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>--%>

     <%--   <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Line Charts</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { year: 1950, europe: 546, americas: 332, africa: 227 },
                                    { year: 1960, europe: 705, americas: 417, africa: 283 },
                                    { year: 1970, europe: 856, americas: 513, africa: 361 },
                                    { year: 1980, europe: 1294, americas: 614, africa: 471 },
                                    { year: 1990, europe: 321, americas: 721, africa: 623 },
                                    { year: 2000, europe: 730, americas: 1836, africa: 1297 },
                                    { year: 2010, europe: 728, americas: 935, africa: 982 },
                                    { year: 2020, europe: 721, americas: 1027, africa: 1189 },
                                    { year: 2030, europe: 704, americas: 1110, africa: 1416 },
                                    { year: 2040, europe: 680, americas: 1178, africa: 1665 },
                                    { year: 2050, europe: 650, americas: 1231, africa: 1937 }
                                ];

                                $("#bar-3").dxChart({
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        argumentField: "year"
                                    },
                                    series: [
                                        { valueField: "europe", name: "Europe", color: "#40bbea" },
                                        { valueField: "americas", name: "Americas", color: "#cc3f44" },
                                        { valueField: "africa", name: "Africa", color: "#8dc63f" }
                                    ],
                                    argumentAxis:{
                                        grid:{
                                            visible: true
                                        }
                                    },
                                    tooltip:{
                                        enabled: true
                                    },
                                    title: "Historic, Current and Future Population Trends",
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    },
                                    commonPaneSettings: {
                                        border:{
                                            visible: true,
                                            right: false
                                        }
                                    }
                                });
                            });
                        </script>
                        <div id="bar-3" style="height: 400px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>--%>


 <%--       <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Selection Charts</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { country: "China", year2007: 0.1732, year2008: -0.1588 },
                                    { country: "Germany", year2007: 0.0964, year2008: -0.2231 },
                                    { country: "United States", year2007: 0.1187, year2008: -0.1878 },
                                    { country: "Japan", year2007: 0.1081, year2008: -0.2614 },
                                    { country: "France", year2007: 0.1014, year2008: -0.2222 },
                                    { country: "Netherlands", year2007: 0.1355, year2008: -0.2015 }
                                ];

                                $("#bar-4").dxChart({
                                    rotated: true,
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        argumentField: "country",
                                        type: "bar",
                                        hoverMode: "allArgumentPoints",
                                        selectionMode: "allArgumentPoints",
                                        label: {
                                            visible: true,
                                            format: "percent",
                                            precision: 1
                                        }
                                    },
                                    valueAxis: {
                                        label: {
                                            format: "percent",
                                            precision: 1
                                        }
                                    },
                                    series: [
                                        { valueField: "year2007", name: "2007 - 2008", color: "#0e62c7" },
                                        { valueField: "year2008", name: "2008 - 2009", color: "#00b19d" }
                                    ],
                                    title: {
                                        text: "Economy - Export Change"
                                    },
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    },
                                    pointClick: function(point) {
                                        point.select();
                                    },
                                    seriesClick: function(series) {
                                        series.isVisible() ? series.hide() : series.show();
                                    }
                                });
                            });
                        </script>
                        <div id="bar-4" style="height: 450px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>
--%>

       <%-- <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Stacked Bars with Selection (Rotated)</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { country: "USA", gold: 36, silver: 38, bronze: 36 },
                                    { country: "China", gold: 51, silver: 21, bronze: 28 },
                                    { country: "Russia", gold: 23, silver: 21, bronze: 28 },
                                    { country: "Britain", gold: 19, silver: 13, bronze: 15 },
                                    { country: "Australia", gold: 14, silver: 15, bronze: 17 },
                                    { country: "Germany", gold: 16, silver: 10, bronze: 15 }
                                ];

                                $("#bar-5").dxChart({
                                    rotated: true,
                                    pointSelectionMode: "multiple",
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        argumentField: "country",
                                        type: "stackedbar",
                                        selectionStyle: {
                                            hatching: {
                                                direction: "left"
                                            }
                                        }
                                    },
                                    series: [
                                        { valueField: "gold", name: "Gold Medals", color: "#ffd700" },
                                        { valueField: "silver", name: "Silver Medals", color: "#c0c0c0" },
                                        { valueField: "bronze", name: "Bronze Medals", color: "#cd7f32" }
                                    ],
                                    title: {
                                        text: "Olympic Medals in 2008"
                                    },
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    },
                                    pointClick: function(point) {
                                        point.isSelected() ? point.clearSelection() : point.select();
                                    }
                                });
                            });
                        </script>
                        <div id="bar-5" style="height: 450px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>--%>



    <%--    <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bubble Charts with Selection</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { total1: 9.5, total2: 168.8, total3: 127.2, older1: 2.4, older2: 8.8, older3: 40.0, perc1: 25.4, perc2: 5.3, perc3: 31.6, tag1: 'Sweden', tag2: 'Nigeria', tag3: 'Japan' },
                                    { total1: 82.8, total2: 91.7, total3: 90.8, older1: 21.9, older2: 4.6, older3: 8.0, perc1: 26.7, perc2: 5.4, perc3: 8.9, tag1: 'Germany', tag2: 'Ethiopia', tag3: 'Viet Nam' },
                                    { total1: 16.7, total2: 80.7, total3: 21.1, older1: 3.8, older2: 7.0, older3: 2.7, perc1: 22.8, perc2: 8.4, perc3: 12.9, tag1: 'Netherlands', tag2: 'Egypt', tag3: 'Sri Lanka' },
                                    { total1: 62.8, total2: 52.4, total3: 96.7, older1: 14.4, older2: 4.0, older3: 5.9, perc1: 23.0, perc2: 7.8, perc3: 6.1, tag1: 'United Kingdom', tag2: 'South Africa', tag3: 'Philippines' },
                                    { total1: 38.2, total2: 43.2, total3: 66.8, older1: 7.8, older2: 1.8, older3: 9.6, perc1: 20.4, perc2: 4.3, perc3: 13.7, tag1: 'Poland', tag2: 'Kenya', tag3: 'Thailand' },
                                    { total1: 45.5, total3: 154.7, total4: 34.8, older1: 9.5, older3: 10.3, older4: 7.2, perc1: 21.1, perc3: 6.8, perc4: 20.8, tag1: 'Ukraine', tag3: 'Bangladesh', tag4: 'Canada' },
                                    { total1: 143.2, total4: 120.8, older1: 26.5, older4: 11.0, perc1: 18.6, perc4: 9.5, tag1: 'Russian Federation', tag4: 'Mexico' }
                                ];

                                $("#bar-6").dxChart({
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        type: 'bubble'
                                    },
                                    title: 'Correlation between total population, population over 60 <br/>and % of population over 60',
                                    tooltip: {
                                        enabled: true,
                                        customizeText: function () { return this.point.tag + '<br/>Total Population: ' + this.argumentText + 'M <br/>Population Over 60: ' + this.valueText + 'M <br/>% of population over 60: ' + this.size; }
                                    },
                                    argumentAxis: {
                                        label: {
                                            customizeText: function () {
                                                return this.value + 'M';
                                            }
                                        },
                                        title: 'Total Population'
                                    },
                                    valueAxis: {
                                        label: {
                                            customizeText: function () {
                                                return this.value + 'M';
                                            }
                                        },
                                        title: 'Population Over 60'
                                    },
                                    legend: {
                                        position: 'inside',
                                        horizontalAlignment: 'left',
                                        border: {
                                            visible: true
                                        }
                                    },
                                    palette: ["#00ced1", "#008000", "#ffd700", "#ff7f50"],
                                    seriesClick: function(series) {
                                        series.isVisible() ? series.hide() : series.show();
                                    },
                                    series: [{
                                        name: 'Europe',
                                        argumentField: 'total1',
                                        valueField: 'older1',
                                        sizeField: 'perc1',
                                        tagField:'tag1',
                                        color: '#68b828'
                                    }, {
                                        name: 'Africa',
                                        argumentField: 'total2',
                                        valueField: 'older2',
                                        sizeField: 'perc2',
                                        tagField: 'tag2',
                                        color: '#7c38bc'
                                    }, {
                                        name: 'Asia',
                                        argumentField: 'total3',
                                        valueField: 'older3',
                                        sizeField: 'perc3',
                                        tagField: 'tag3',
                                        color: '#0e62c7'
                                    }, {
                                        name: 'North America',
                                        argumentField: 'total4',
                                        valueField: 'older4',
                                        sizeField: 'perc4',
                                        tagField: 'tag4',
                                        color: '#f7aa47'
                                    }]
                                });
                            });
                        </script>
                        <div id="bar-6" style="height: 450px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>
--%>


      <%--  <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Area Charts</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { country: "China", y014: 320866959, y1564: 853191410, y65: 87774113 },
                                    { country: "India", y014: 340419115, y1564: 626520945, y65: 47063757 },
                                    { country: "United States", y014: 58554755, y1564: 182172625, y65: 34835293 },
                                    { country: "Indonesia", y014: 68715705, y1564: 146014815, y65: 10053690 },
                                    { country: "Brazil", y014: 50278034, y1564: 113391494, y65: 9190842 },
                                    { country: "Russia", y014: 26465156, y1564: 101123777, y65: 18412243 }
                                ];

                                $("#bar-7").dxChart({
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        type: "area",
                                        argumentField: "country"
                                    },
                                    series: [
                                        { valueField: "y1564", name: "15-64 years", color: "#68b828" },
                                        { valueField: "y014", name: "0-14 years", color: "#4fcdfc" },
                                        { valueField: "y65", name: "65 years and older", color: "#333" }
                                    ],
                                    title: "Population: Age Structure (2000)",
                                    argumentAxis:{
                                        valueMarginsEnabled: false
                                    },
                                    valueAxis:{
                                        label: {
                                            format: "millions"
                                        }
                                    },
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    }
                                });
                            });
                        </script>
                        <div id="bar-7" style="height: 450px;"></div>
                    </div>
                </div>

            </div>
        </div>



        <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Range Bars</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { date: new Date(2005,0,1), aVal1: 36, aVal2: 43.29, tVal1: 42.12, tVal2: 49.91 },
                                    { date: new Date(2005,1,1), aVal1: 40.68, aVal2: 47.07, tVal1: 28.33, tVal2: 51.75 },
                                    { date: new Date(2005,2,1), aVal1: 45.01, aVal2: 52.77, tVal1: 48.96, tVal2: 56.72 },
                                    { date: new Date(2005,3,1), aVal1: 45.99, aVal2: 54.14, tVal1: 49.72, tVal2: 57.27 },
                                    { date: new Date(2005,4,1), aVal1: 43.73, aVal2: 49.03, tVal1: 46.8, tVal2: 52.07 },
                                    { date: new Date(2005,5,1), aVal1: 49.94, aVal2: 57.94, tVal1: 52.54, tVal2: 60.54 },
                                    { date: new Date(2005,6,1), aVal1: 52.88, aVal2: 58.98, tVal1: 54.93, tVal2: 61.28 },
                                    { date: new Date(2005,7,1), aVal1: 58.81, aVal2: 67.06, tVal1: 60.86, tVal2: 68.94 },
                                    { date: new Date(2005,8,1), aVal1: 61, aVal2: 66.72, tVal1: 63 , tVal2: 69.47 },
                                    { date: new Date(2005,9,1), aVal1: 57.86, aVal2: 63.47, tVal1: 59.76, tVal2: 65.47 },
                                    { date: new Date(2005,10,1), aVal1: 54.24, aVal2: 59.98, tVal1: 56.14, tVal2: 61.78 },
                                    { date: new Date(2005,11,1), aVal1: 55.22, aVal2: 59.22, tVal1: 57.34, tVal2: 61.37 }
                                ];

                                $("#bar-8").dxChart({
                                    title: "Crude Oil Prices in 2005",
                                    dataSource: dataSource,
                                    commonSeriesSettings: {
                                        argumentField: "date",
                                        type: "rangeBar"
                                    },
                                    series: [
                                        {
                                            rangeValue1Field: "aVal1",
                                            rangeValue2Field: "aVal2",
                                            name: "ANS West Coast",
                                            color: "#7c38bc"
                                        }, {
                                            rangeValue1Field: "tVal1",
                                            rangeValue2Field: "tVal2",
                                            name: "West Texas Intermediate",
                                            color: "#0e62c7"
                                        }
                                    ],
                                    valueAxis: {
                                        title: {
                                            text: "$ per barrel"
                                        }
                                    },
                                    argumentAxis: {
                                        label: {
                                            format: "month"
                                        }
                                    },
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    }
                                });
                            });
                        </script>
                        <div id="bar-8" style="height: 450px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>--%>


        <%--<div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Multiple Panes</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    { month: "January", avgT: 9.8, minT: 4.1, maxT: 15.5, prec: 109 },
                                    { month: "February", avgT: 11.8, minT: 5.8, maxT: 17.8, prec: 104 },
                                    { month: "March", avgT: 13.4, minT: 7.2, maxT: 19.6, prec: 92 },
                                    { month: "April", avgT: 15.4, minT: 8.1, maxT: 22.8, prec: 30 },
                                    { month: "May", avgT: 18, minT: 10.3, maxT: 25.7, prec: 10 },
                                    { month: "June", avgT: 20.6, minT: 12.2, maxT: 29, prec: 2 },
                                    { month: "July", avgT: 22.2, minT: 13.2, maxT: 31.3, prec: 2 },
                                    { month: "August", avgT: 22.2, minT: 13.2, maxT: 31.1, prec: 1 },
                                    { month: "September", avgT: 21.2, minT: 12.4, maxT: 29.9, prec: 8 },
                                    { month: "October", avgT: 17.9, minT: 9.7, maxT: 26.1, prec: 24 },
                                    { month: "November", avgT: 12.9, minT: 6.2, maxT: 19.6, prec: 64 },
                                    { month: "December", avgT: 9.6, minT: 3.4, maxT: 15.7, prec: 76 }
                                ];

                                $("#bar-9").dxChart({
                                    dataSource: dataSource,
                                    commonSeriesSettings:{
                                        argumentField: "month"
                                    },
                                    panes: [{
                                        name: "topPane"
                                    }, {
                                        name: "bottomPane"
                                    }],
                                    defaultPane: "bottomPane",
                                    series: [{
                                        pane: "topPane",
                                        color: "#87CEEB",
                                        type: "rangeArea",
                                        rangeValue1Field: "minT",
                                        rangeValue2Field: "maxT",
                                        name: "Monthly Temperature Ranges, °C"
                                    }, {
                                        pane: "topPane",
                                        valueField: "avgT",
                                        name: "Average Temperature, °C",
                                        label: {
                                            visible: true,
                                            customizeText: function (){
                                                return this.valueText + " °C";
                                            }
                                        },
                                        color: "#00b19d"
                                    }, {
                                        type: "bar",
                                        valueField: "prec",
                                        name: "prec, mm",
                                        label: {
                                            visible: true,
                                            customizeText: function (){
                                                return this.valueText  + " mm";
                                            }
                                        },
                                        color: "#d5080f"
                                    }
                                    ],
                                    valueAxis: [{
                                        pane: "bottomPane",
                                        grid: {
                                            visible: true
                                        },
                                        title: {
                                            text: "Precipitation, mm"
                                        }
                                    }, {
                                        pane: "topPane",
                                        min: 0,
                                        max: 30,
                                        grid: {
                                            visible: true
                                        },
                                        title: {
                                            text: "Temperature, °C"
                                        }
                                    }],
                                    legend: {
                                        verticalAlignment: "bottom",
                                        horizontalAlignment: "center"
                                    },
                                    title: {
                                        text: "Weather in Glendale, CA"
                                    }
                                });
                            });
                        </script>
                        <div id="bar-9" style="height: 450px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>--%>


       <%-- <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Multiple Panes</h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                            <a href="#" data-toggle="remove">
                                &times;
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <script type="text/javascript">
                            jQuery(document).ready(function($)
                            {
                                var dataSource = [
                                    {region: "Asia", val: 4119626293},
                                    {region: "Africa", val: 1012956064},
                                    {region: "Northern America", val: 344124520},
                                    {region: "Latin America and the Caribbean", val: 590946440},
                                    {region: "Europe", val: 727082222},
                                    {region: "Oceania", val: 35104756}
                                ], timer;

                                $("#bar-10").dxPieChart({
                                    dataSource: dataSource,
                                    title: "The Population of Continents and Regions",
                                    tooltip: {
                                        enabled: false,
                                        format:"millions",
                                        customizeText: function() {
                                            return this.argumentText + "<br/>" + this.valueText;
                                        }
                                    },
                                    size: {
                                        height: 420
                                    },
                                    pointClick: function(point) {
                                        point.showTooltip();
                                        clearTimeout(timer);
                                        timer = setTimeout(function() { point.hideTooltip(); }, 2000);
                                        $("select option:contains(" + point.argument + ")").prop("selected", true);
                                    },
                                    legend: {
                                        visible: false
                                    },
                                    series: [{
                                        type: "doughnut",
                                        argumentField: "region"
                                    }],
                                    palette: xenonPalette
                                });

                            });
                        </script>
                        <div id="bar-10" style="height: 450px; width: 100%;"></div>
                    </div>
                </div>

            </div>
        </div>--%>
        <!-- Main Footer -->
        <!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
        <!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
        <!-- Or class "fixed" to  always fix the footer to the end of page -->

        <footer class="main-footer sticky footer-type-1">

            <div class="footer-inner">

                <!-- Add your copyright text here -->
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