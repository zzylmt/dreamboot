<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>我的风格站</title>
    <jsp:include page="${pageContext.request.contextPath}/head/style/css.jsp"/>
</head>
<body class="home_two">
<!--==| header Top Start |==-->
<div class="header_top_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="header_top_cc_left">
                    <ul>
                        <li><a href="tel:88888888"><i class="fa fa-phone"></i>88888888</a></li>
                        <li><a href="">账户管理 <i class="fa fa-angle-down"></i></a>
                            <div class="header_top_dropdown">
                                <ul>
                                    <li class="first">
                                        <a href="checkout.html">我的账户</a>
                                    </li>
                                    <li>
                                        <a href="cart.html">我的购物车</a>
                                    </li>
                                    <li>
                                        <a href="checkout.html">退出</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="header_middle_area">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-2 col-xs-12">
                <div class="header_logo">
                    <a href="index.html"><img src="${pageContext.request.contextPath}/image/logo.png" alt=""/></a>
                </div>
            </div>
            <div class="col-md-7 col-sm-8 col-xs-12">
                <div class="header_middle_right">
                    <nav class="mainmenu">
                        <ul>
                            <li class="active"><a href="index.html">首页 <i class="fa fa-angle-down"></i></a>
                                <div class="main_nav_dropdown">
                                    <ul>
                                        <li><a href="index-two.html">Home version 2</a></li>
                                        <li><a href="index-three.html">Home version 3</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="shop-left-sidebar.html">女装</a></li>
                            <li><a href="shop-right-sidebar.html">男装</a></li>
                            <li><a href="shop-right-sidebar.html">配饰</a></li>
                            <li><a href="">其他 <i class="fa fa-angle-down"></i></a>
                                <div class="main_pages_dropdown">
                                    <ul>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-fullwidth.html">Blog Fullwidth</a></li>
                                        <li><a href="blog-list-style.html">Blog List Style</a></li>
                                        <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                        <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                        <li><a href="product-left-sidebar.html">Product Left Sidebar</a></li>
                                        <li><a href="product-right-sidebar.html">Product Right Sidebar</a></li>
                                        <li><a href="product-without-sidebar.html">Product No Sidebar</a></li>
                                        <li><a href="cart.html">Cart Page</a></li>
                                        <li><a href="checkout.html">Checkout Page</a></li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-12">
                <div class="header_middle_cc_search">
                    <ul>
                        <li><a class="fa fa-search" href=""></a>
                            <div class="search_drpdwn">
                                <input type="text" placeholder="|"/>
                                <input type="submit" value=""/>
                                <a class="fa fa-search" href=""></a>
                            </div>
                        </li>
                        <li><a href="">|</a></li>
                        <li><a href="cart.html"><i class="fa fa-shopping-cart"></i>(2) </a>
                            <div class="cart_number_drd">
                                <div class="single_add_cart_design">
                                    <div class="s_add_cart_left">
                                        <div class="add_cart_h_img">
                                            <a href=""><img src="${pageContext.request.contextPath}/image/1011663_fro.jpg" alt=""/></a>
                                        </div>
                                        <div class="add_cart_h_txt">
                                            <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                            <p>Quantity: 1</p>
                                        </div>
                                    </div>
                                    <div class="s_add_cart_left_h">
                                        <p>£25.00</p>
                                        <a class="fa fa-times" href=""></a>
                                    </div>
                                </div>
                                <div class="single_add_cart_design">
                                    <div class="s_add_cart_left">
                                        <div class="add_cart_h_img">
                                            <a href=""><img src="${pageContext.request.contextPath}/image/1014254_full1.jpg" alt=""/></a>
                                        </div>
                                        <div class="add_cart_h_txt">
                                            <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                            <p>Quantity: 1</p>
                                        </div>
                                    </div>
                                    <div class="s_add_cart_left_h">
                                        <p>£25.00</p>
                                        <a class="fa fa-times" href=""></a>
                                    </div>
                                </div>
                                <div class="single_add_cart_design sp_des">
                                    <div class="s_add_cart_left_bld">
                                        <p>Subtotal</p>
                                    </div>
                                    <div class="s_add_cart_left_h bold_h">
                                        <p>£55.00</p>
                                    </div>
                                </div>
                                <div class="bottom_add_c_h">
                                    <ul>
                                        <li><a href="cart.html"><i class="fa fa-shopping-cart"></i>View Cart</a></li>
                                        <li><a href="checkout.html">Checkout<i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==| header middle End |==-->


<!--==| Mobile Menu START |==-->
<div class="cc_mobile_navigation">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="only-for-mobile">
                    <div class="col-xs-12">
                        <ul class="ofm">
                            <li class="m_nav"><i class="fa fa-bars"></i> Navigation</li>
                        </ul>

                        <!-- MOBILE MENU -->
                        <div class="mobi-menu">
                            <div id='cssmenu'>
                                <ul>
                                    <li class='has-sub'>
                                        <a href='index.html'><span>Home</span></a>
                                        <ul class="sub-nav">
                                            <li><a href="index-two.html"><span>Home version 2</span></a></li>
                                            <li><a href="index-three.html"><span>Home version 3</span></a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href='#'><span>Women</span></a>
                                    </li>
                                    <li>
                                        <a href='#'><span>Men</span></a>
                                    </li>
                                    <li>
                                        <a href='#'><span>Footwear</span></a>
                                    </li>
                                    <li>
                                        <a href='#'><span>Accessories</span></a>
                                    </li>
                                    <li>
                                        <a href='#'><span>CHILDREN</span></a>
                                    </li>
                                    <li class='has-sub'>
                                        <a href='#'><span>Pages</span></a>
                                        <ul class="sub-nav">
                                            <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                            <li><a href="blog-fullwidth.html">Blog Fullwidth</a></li>
                                            <li><a href="blog-list-style.html">Blog List Style</a></li>
                                            <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                            <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                            <li><a href="product-left-sidebar.html">Product Left Sidebar</a></li>
                                            <li><a href="product-right-sidebar.html">Product Right Sidebar</a></li>
                                            <li><a href="product-without-sidebar.html">Product No Sidebar</a></li>
                                            <li><a href="cart.html">Cart Page</a></li>
                                            <li><a href="checkout.html">Checkout Page</a></li>
                                            <li><a href="contact.html">Contact Us</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==| Mobile Menu END |==-->

<!--==| Slider START |==-->
<div class="slider_area_home1 slider_area_home2">
    <div class="slider-wrap">
        <div class="fullwidthbanner-container">
            <div class="fullwidthbanner1">
                <ul>
                    <!-- SLIDE  -->
                    <li data-transition="parallaxtoright,parallaxtoleft" data-slotamount="7" data-masterspeed="600" data-saveperformance="off">
                        <!-- MAIN IMAGE -->
                        <img src="${pageContext.request.contextPath}/image/slide1.jpg" alt="slider1" data-bgposition="center top" data-bgfit="cover"
                             data-bgrepeat="no-repeat">
                        <!-- LAYERS -->

                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption title-11 customin tp-resizeme"
                             data-x="752"
                             data-y="299"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:3;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="2000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;animation: 0.8s ease-in 1s normal backwards 1 running fadeInRight;color: #444444;font-size: 80px;font-weight: 800;letter-spacing: 10px;line-height: 100%;opacity: 1;position: absolute;text-align: center;text-transform: uppercase;">
                            stripes
                        </div>

                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption title-2 customin tp-resizeme"
                             data-x="795"
                             data-y="395"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="3000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;color: #666666;font-size: 30px;font-weight: 600;letter-spacing: 3px;text-transform: uppercase;">
                            new collection
                        </div>

                        <!-- LAYER NR. 5 -->
                        <div class="tp-caption customin"
                             data-x="890"
                             data-y="455"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="500"
                             data-start="4500"
                             data-easing="Power3.easeInOut"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 9;border: 2px solid #444444;color: #444444;display: inline-block;font-size: 14px;font-weight: 600;line-height: 36px;padding: 0 15px;text-transform: uppercase;">
                            <a style="color: #444444;" href="#" target="_blank">Shop Now</a>
                        </div>
                    </li>
                    <!-- SLIDE  -->
                    <li data-transition="parallaxtoright,parallaxtoleft" data-slotamount="7" data-masterspeed="600" data-saveperformance="off">
                        <!-- MAIN IMAGE -->
                        <img src="${pageContext.request.contextPath}/image/slide2.jpg" alt="slider2" data-bgposition="center top" data-bgfit="cover"
                             data-bgrepeat="no-repeat">
                        <!-- LAYERS -->

                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption title-22 tp-fade tp-resizeme"
                             data-x="350"
                             data-y="250"
                             data-speed="300"
                             data-start="1500"
                             data-easing="Power3.easeInOut"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;font-size: 65px;font-weight: 700;letter-spacing: 4px;text-transform: uppercase;">
                            raining time
                        </div>

                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption home2-title-1 tp-fade tp-resizeme"
                             data-x="355"
                             data-y="350"
                             data-speed="300"
                             data-start="2500"
                             data-easing="Power3.easeInOut"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;color: #666666;font-size: 30px;font-weight: 600;letter-spacing: 3px;text-transform: uppercase;">
                            spring/summer .15
                        </div>


                        <!-- LAYER NR. 4 -->
                        <div class="tp-caption tp-fade"
                             data-x="357"
                             data-y="420"
                             data-speed="300"
                             data-start="3000"
                             data-easing="Power3.easeInOut"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 9;border: 2px solid #444444;color: #444444;display: inline-block;font-size: 14px;font-weight: 600;line-height: 36px;padding: 0 15px;text-transform: uppercase;">
                            <a style="color: #444444;" href="#" target="_blank">Shop Now</a>
                        </div>
                    </li>
                    <li data-transition="parallaxtoright,parallaxtoleft" data-slotamount="7" data-masterspeed="600" data-saveperformance="off">
                        <!-- MAIN IMAGE -->
                        <img src="${pageContext.request.contextPath}/image/slide3.jpg" alt="slider1" data-bgposition="center top" data-bgfit="cover"
                             data-bgrepeat="no-repeat">
                        <!-- LAYERS -->

                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption title-11 customin tp-resizeme"
                             data-x="660"
                             data-y="250"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:3;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="2000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;animation: 0.8s ease-in 1s normal backwards 1 running fadeInRight;color: #fff;font-size: 80px;font-weight: 800;letter-spacing: 10px;line-height: 100%;opacity: 1;position: absolute;text-align: center;text-transform: uppercase;">
                            shoes & bags
                        </div>

                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption title-2 customin tp-resizeme"
                             data-x="795"
                             data-y="345"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="3000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;color: #fff;font-size: 30px;font-weight: 600;letter-spacing: 3px;text-transform: uppercase;">
                            spring/summer .15
                        </div>

                        <!-- LAYER NR. 5 -->
                        <div class="tp-caption customin"
                             data-x="890"
                             data-y="405"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="500"
                             data-start="4500"
                             data-easing="Power3.easeInOut"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"

                             style="z-index: 9;border: 2px solid #fff;color: #fff;display: inline-block;font-size: 14px;font-weight: 600;line-height: 36px;padding: 0 15px;text-transform: uppercase;">
                            <a style="color: #fff;" href="#" target="_blank">Shop Now</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--==| Slider END |==-->

<!--==| Welcome Start |==-->
<section class="welcome_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="common_heading">
                    <h2>WELCOME TO OUR SHOP</h2>
                    <div class="bery-hr medium star">
                        <div class="icon-wrapper">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star large"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                    <p>“ Quisque faucibus enim non tempus gravida. Morbi non sem sagittis, venenatis neque at, consequat justo. Cras dignissim, nunc sit amet
                        cursus suscipit neque nisi ultrices enim, tempus rhoncus sapien lectus quis ex ”</p>
                </div>
                <div class="row">
                    <div class="col-md-7 col-sm-7 col-xs-12">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="banner-top">
                                    <div class="banner-inner-content">
                                        <img src="${pageContext.request.contextPath}/image/banner-1.jpg" alt=""/>
                                        <div class="overlay"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="banner-top">
                                    <div class="banner-inner-content">
                                        <div class="overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/banner-2.jpg" alt=""/>
                                        <div class="text-banner text-banner-2">
                                            <div class="banner-texthome">
                                                <h3>collection</h3>
                                                <h2>women's</h2>
                                                <h4>save up to 25% off</h4>
                                                <a href="#" class="btn-shop">Shop Now </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 col-sm-5 col-xs-12">
                                <div class="banner-top">
                                    <div class="banner-inner-content">
                                        <div class="bg-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/banner-3-1.jpg" alt=""/>
                                        <div class="text-banner text-banner-3">
                                            <div class="banner-texthome">
                                                <h3>NEW ARRIVALS</h3>
                                                <h2>ACESSORIES</h2>
                                                <a href="#" class="btn-shop">Shop Now </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-5 col-xs-12">
                        <div class="banner-top">
                            <div class="banner-inner-content">
                                <img src="${pageContext.request.contextPath}/image/banner-4.jpg" alt=""/>
                                <div class="text-banner text-banner-4">
                                    <div class="banner-texthome">
                                        <h3>NEW ARRIVALS</h3>
                                        <h2>For women</h2>
                                        <a href="#" class="btn-shop">Shop Now </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==| Welcome End |==-->

<!--==| Feature Start |==-->
<section class="featured_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="common_heading">
                    <h2>featured products</h2>
                    <div class="bery-hr medium star">
                        <div class="icon-wrapper">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star large"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="featered_products">
                        <div role="tabpanel">

                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#homeft" role="tab" data-toggle="tab">Best Seller</a></li>
                                <li role="presentation"><a href="#profileft" role="tab" data-toggle="tab">Featured Products</a></li>
                                <li role="presentation"><a href="#messagesft" role="tab" data-toggle="tab">Sale Products</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="homeft">
                                    <div id="owl-feature">
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature1.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom1"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Split Side Pink Crepe</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom2"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom3"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Printed smocked dress</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom4"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Eva skater dress</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature1.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom5"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Camille dress</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom6"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Beatle stripe skinny</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom7"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Night Sky Print</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom8"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Start -->
                                    <div id="hometwom1" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom2" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom3" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom4" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom5" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom6" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom7" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom8" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profileft">

                                    <div id="owl-feature-two">
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom9"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom10"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Split Side Pink Crepe</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom11"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom12"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom13"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Split Side Pink Crepe</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature1.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom14"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Night Sky Print</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom15"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Modal Start -->
                                    <div id="hometwom9" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom10" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom11" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom12" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom13" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom14" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom15" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                </div>
                                <div role="tabpanel" class="tab-pane" id="messagesft">
                                    <div id="owl-feature-three">
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom16"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Colorful Print</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom17"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Colorful Print</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom18"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature1.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature2.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom19"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Split Side Pink Crepe</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature5.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom20"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Night Sky Print</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature1.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom21"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature1.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature4.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom22"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="single_featured_product">
                                                <div class="image_feature_change">
                                                    <div class="featured_img">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature6.jpg" alt=""/>
                                                    </div>
                                                    <div class="single_feature_img_hover">
                                                        <div class="image-overlay"></div>
                                                        <img src="${pageContext.request.contextPath}/image/feature3.jpg" alt=""/>
                                                    </div>
                                                </div>
                                                <div class="heart-icon">
                                                    <a class="fa fa-heart" href=""></a>
                                                </div>
                                                <div class="search-icon">
                                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#hometwom23"></a>
                                                </div>
                                                <div class="cart-icon">
                                                    <a class="fa fa-shopping-cart" href=""></a>
                                                </div>
                                                <div class="featured_info">
                                                    <a href="product-left-sidebar.html">Colorful Print</a>
                                                    <div class="rating">
                                                        <ul>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star" href=""></a></li>
                                                            <li><a class="fa fa-star-o" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                    <del>$300.00</del>
                                                    <span class="amount">$200.00</span>
                                                </div>
                                                <div class="badge">
                                                    <div class="inner">
                                                        <div class="inner-text">Sale!</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Start -->
                                    <div id="hometwom16" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom17" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom18" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom19" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom20" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom21" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom22" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                    <!-- Modal Start -->
                                    <div id="hometwom23" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="product_lightbox">
                                                        <div class="row">
                                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                                <div class="nod_text">
                                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                    <span>£20.00</span>
                                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger
                                                                        pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur
                                                                        mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami
                                                                        chicken.</p>

                                                                    <div class="mod_size_silect">
                                                                        <select class="form-control">
                                                                            <option>Medium</option>
                                                                            <option>Small</option>
                                                                            <option>Large</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mod_color_silect">
                                                                        <select class="form-control">
                                                                            <option>Red</option>
                                                                            <option>Pink</option>
                                                                            <option>Black</option>
                                                                            <option>Blue</option>
                                                                            <option>Green</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="modal_icon">
                                                                        <ul>
                                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                                <div class="p_modal_img">
                                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal END -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==| Feature End |==-->

<!--==| testimonial Start |==-->
<section class="testimonial_area"
         style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/image/our-clients-bg-2.jpg) no-repeat fixed top center / cover ;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">

                <div id="carousel-example-generic-testi" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <div class="testimonial">
                                <div class="common_heading">
                                    <h2>Our Clients Say</h2>
                                    <div class="bery-hr medium star">
                                        <div class="icon-wrapper">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star large"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial_text">
                                    <span> “ Quisque faucibus enim non tempus gravida. Morbi non sem sagittis, venenatis neque at, consequat justo. Cras dignissim, nunc sit amet cursus suscipit, neque nisi ultrices enim, tempus rhoncus sapie” ...  </span>
                                </div>
                                <div class="client">
                                    <img src="${pageContext.request.contextPath}/image/client1.png" alt=""/>
                                    <div class="client_name">
                                        <a href="">BERY THEMES</a>
                                    </div>
                                    <p>Web Developer</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial second_testi">
                                <div class="common_heading">
                                    <h2>Our Clients Say</h2>
                                    <div class="bery-hr medium star">
                                        <div class="icon-wrapper">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star large"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial_text">
                                    <span> “ Quisque faucibus enim non tempus gravida. Morbi non sem sagittis, venenatis neque at, consequat justo. Cras dignissim, nunc sit amet cursus suscipit, neque nisi ultrices enim, tempus rhoncus sapie” ...  </span>
                                </div>
                                <div class="client">
                                    <img src="${pageContext.request.contextPath}/image/client2.jpg" alt=""/>
                                    <div class="client_name">
                                        <a href="">Lee THEMES</a>
                                    </div>
                                    <p>Web Developer</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a class="left carousel-control" href="#carousel-example-generic-testi" role="button" data-slide="prev">
                        <span class="fa fa-angle-left " aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic-testi" role="button" data-slide="next">
                        <span class="fa fa-angle-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==| testimonial End |==-->

<!--==| Weekly product Start |==-->
<section class="weekly_featured_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="common_heading">
                    <h2>weekly featured</h2>
                    <div class="bery-hr medium star">
                        <div class="icon-wrapper">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star large"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>

                <div class="weekly_feature_detail">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="weekly_featured">
                                <div class="single_weekly_featured">
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                            <div class="weekly_hover">
                                                <a class="fa fa-search" href="" data-toggle="modal" data-target="#myModal031"></a>
                                            </div>
                                            <div class="image_weekly_change">
                                                <div class="single_weekly_img">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1013424_07_1.jpg" alt=""/>
                                                </div>
                                                <div class="single_weekly_img_hover">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1008627-4_1.jpg" alt=""/>
                                                </div>
                                            </div>
                                            <!-- Modal Start -->
                                            <div id="myModal031" class="modal fade" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="product_lightbox">
                                                                <div class="row">
                                                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                                                        <div class="nod_text">
                                                                            <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                            <span>£20.00</span>
                                                                            <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye
                                                                                hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia
                                                                                brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop.
                                                                                Sausage officia pastrami chicken.</p>

                                                                            <div class="mod_size_silect">
                                                                                <select class="form-control">
                                                                                    <option>Medium</option>
                                                                                    <option>Small</option>
                                                                                    <option>Large</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mod_color_silect">
                                                                                <select class="form-control">
                                                                                    <option>Red</option>
                                                                                    <option>Pink</option>
                                                                                    <option>Black</option>
                                                                                    <option>Blue</option>
                                                                                    <option>Green</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="modal_icon">
                                                                                <ul>
                                                                                    <li><a class="fa fa-facebook" href=""></a></li>
                                                                                    <li><a class="fa fa-twitter" href=""></a></li>
                                                                                    <li><a class="fa fa-google-plus" href=""></a></li>
                                                                                    <li><a class="fa fa-rss" href=""></a></li>
                                                                                    <li><a class="fa fa-linkedin" href=""></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                                                        <div class="p_modal_img">
                                                                            <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal END -->
                                        </div>
                                        <div class="col-md-7 col-sm-7 col-xs-7 no_col_padding">
                                            <div class="single_weekly_text">
                                                <a href="product-right-sidebar.html">Aliquam condimentum</a>
                                            </div>
                                            <div class="rating">
                                                <ul>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_price">
                                                <span>$236.00</span>
                                            </div>
                                            <div class="wishlist">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-heart"></i>Wishlist</a></li>
                                                    <li><a href=""><i class="fa fa-retweet"></i>Compare</a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_add_cart">
                                                <a href="">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="weekly_featured">
                                <div class="single_weekly_featured">
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                            <div class="weekly_hover">
                                                <a class="fa fa-search" href="" data-toggle="modal" data-target="#myModal042"></a>
                                            </div>
                                            <div class="image_weekly_change">
                                                <div class="single_weekly_img">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1010681-4.jpg" alt=""/>
                                                </div>
                                                <div class="single_weekly_img_hover">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1009859_2_1.jpg" alt=""/>
                                                </div>
                                            </div>
                                            <!-- Modal Start -->
                                            <div id="myModal042" class="modal fade" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="product_lightbox">
                                                                <div class="row">
                                                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                                                        <div class="nod_text">
                                                                            <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                            <span>£20.00</span>
                                                                            <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye
                                                                                hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia
                                                                                brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop.
                                                                                Sausage officia pastrami chicken.</p>

                                                                            <div class="mod_size_silect">
                                                                                <select class="form-control">
                                                                                    <option>Medium</option>
                                                                                    <option>Small</option>
                                                                                    <option>Large</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mod_color_silect">
                                                                                <select class="form-control">
                                                                                    <option>Red</option>
                                                                                    <option>Pink</option>
                                                                                    <option>Black</option>
                                                                                    <option>Blue</option>
                                                                                    <option>Green</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="modal_icon">
                                                                                <ul>
                                                                                    <li><a class="fa fa-facebook" href=""></a></li>
                                                                                    <li><a class="fa fa-twitter" href=""></a></li>
                                                                                    <li><a class="fa fa-google-plus" href=""></a></li>
                                                                                    <li><a class="fa fa-rss" href=""></a></li>
                                                                                    <li><a class="fa fa-linkedin" href=""></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                                                        <div class="p_modal_img">
                                                                            <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal END -->
                                        </div>
                                        <div class="col-md-7 col-sm-7 col-xs-7 no_col_padding">
                                            <div class="single_weekly_text">
                                                <a href="product-right-sidebar.html">Aliquam condimentum</a>
                                            </div>
                                            <div class="rating">
                                                <ul>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_price">
                                                <span>$236.00</span>
                                            </div>
                                            <div class="wishlist">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-heart"></i>Wishlist</a></li>
                                                    <li><a href=""><i class="fa fa-retweet"></i>Compare</a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_add_cart">
                                                <a href="">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="weekly_featured">
                                <div class="single_weekly_featured">
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                            <div class="weekly_hover">
                                                <a class="fa fa-search" href="" data-toggle="modal" data-target="#myModal053"></a>
                                            </div>
                                            <div class="image_weekly_change">
                                                <div class="single_weekly_img">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1009859_2_1.jpg" alt=""/>
                                                </div>
                                                <div class="single_weekly_img_hover">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1010681-4.jpg" alt=""/>
                                                </div>
                                            </div>
                                            <!-- Modal Start -->
                                            <div id="myModal053" class="modal fade" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="product_lightbox">
                                                                <div class="row">
                                                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                                                        <div class="nod_text">
                                                                            <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                            <span>£20.00</span>
                                                                            <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye
                                                                                hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia
                                                                                brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop.
                                                                                Sausage officia pastrami chicken.</p>

                                                                            <div class="mod_size_silect">
                                                                                <select class="form-control">
                                                                                    <option>Medium</option>
                                                                                    <option>Small</option>
                                                                                    <option>Large</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mod_color_silect">
                                                                                <select class="form-control">
                                                                                    <option>Red</option>
                                                                                    <option>Pink</option>
                                                                                    <option>Black</option>
                                                                                    <option>Blue</option>
                                                                                    <option>Green</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="modal_icon">
                                                                                <ul>
                                                                                    <li><a class="fa fa-facebook" href=""></a></li>
                                                                                    <li><a class="fa fa-twitter" href=""></a></li>
                                                                                    <li><a class="fa fa-google-plus" href=""></a></li>
                                                                                    <li><a class="fa fa-rss" href=""></a></li>
                                                                                    <li><a class="fa fa-linkedin" href=""></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                                                        <div class="p_modal_img">
                                                                            <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal END -->
                                        </div>
                                        <div class="col-md-7 col-sm-7 col-xs-7 no_col_padding">
                                            <div class="single_weekly_text">
                                                <a href="product-right-sidebar.html">Aliquam condimentum</a>
                                            </div>
                                            <div class="rating">
                                                <ul>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_price">
                                                <span>$236.00</span>
                                            </div>
                                            <div class="wishlist">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-heart"></i>Wishlist</a></li>
                                                    <li><a href=""><i class="fa fa-retweet"></i>Compare</a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_add_cart">
                                                <a href="">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="weekly_featured">
                                <div class="single_weekly_featured">
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                            <div class="weekly_hover">
                                                <a class="fa fa-search" href="" data-toggle="modal" data-target="#myModal064"></a>
                                            </div>
                                            <div class="image_weekly_change">
                                                <div class="single_weekly_img">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1012630_45.jpg" alt=""/>
                                                </div>
                                                <div class="single_weekly_img_hover">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/1012628_25.jpg" alt=""/>
                                                </div>
                                            </div>
                                            <!-- Modal Start -->
                                            <div id="myModal064" class="modal fade" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="product_lightbox">
                                                                <div class="row">
                                                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                                                        <div class="nod_text">
                                                                            <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                            <span>£20.00</span>
                                                                            <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye
                                                                                hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia
                                                                                brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop.
                                                                                Sausage officia pastrami chicken.</p>

                                                                            <div class="mod_size_silect">
                                                                                <select class="form-control">
                                                                                    <option>Medium</option>
                                                                                    <option>Small</option>
                                                                                    <option>Large</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mod_color_silect">
                                                                                <select class="form-control">
                                                                                    <option>Red</option>
                                                                                    <option>Pink</option>
                                                                                    <option>Black</option>
                                                                                    <option>Blue</option>
                                                                                    <option>Green</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="modal_icon">
                                                                                <ul>
                                                                                    <li><a class="fa fa-facebook" href=""></a></li>
                                                                                    <li><a class="fa fa-twitter" href=""></a></li>
                                                                                    <li><a class="fa fa-google-plus" href=""></a></li>
                                                                                    <li><a class="fa fa-rss" href=""></a></li>
                                                                                    <li><a class="fa fa-linkedin" href=""></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                                                        <div class="p_modal_img">
                                                                            <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal END -->
                                        </div>
                                        <div class="col-md-7 col-sm-7 col-xs-7 no_col_padding">
                                            <div class="single_weekly_text">
                                                <a href="product-right-sidebar.html">Aliquam condimentum</a>
                                            </div>
                                            <div class="rating">
                                                <ul>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_price">
                                                <span>$236.00</span>
                                            </div>
                                            <div class="wishlist">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-heart"></i>Wishlist</a></li>
                                                    <li><a href=""><i class="fa fa-retweet"></i>Compare</a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_add_cart">
                                                <a href="">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="weekly_featured">
                                <div class="single_weekly_featured">
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                            <div class="weekly_hover">
                                                <a class="fa fa-search" href="" data-toggle="modal" data-target="#myModal075"></a>
                                            </div>
                                            <div class="image_weekly_change">
                                                <div class="single_weekly_img">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/8501304098_1_1_1.jpg" alt=""/>
                                                </div>
                                                <div class="single_weekly_img_hover">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/front_marketbag_1.jpg" alt=""/>
                                                </div>
                                            </div>
                                            <!-- Modal Start -->
                                            <div id="myModal075" class="modal fade" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="product_lightbox">
                                                                <div class="row">
                                                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                                                        <div class="nod_text">
                                                                            <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                            <span>£20.00</span>
                                                                            <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye
                                                                                hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia
                                                                                brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop.
                                                                                Sausage officia pastrami chicken.</p>

                                                                            <div class="mod_size_silect">
                                                                                <select class="form-control">
                                                                                    <option>Medium</option>
                                                                                    <option>Small</option>
                                                                                    <option>Large</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mod_color_silect">
                                                                                <select class="form-control">
                                                                                    <option>Red</option>
                                                                                    <option>Pink</option>
                                                                                    <option>Black</option>
                                                                                    <option>Blue</option>
                                                                                    <option>Green</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="modal_icon">
                                                                                <ul>
                                                                                    <li><a class="fa fa-facebook" href=""></a></li>
                                                                                    <li><a class="fa fa-twitter" href=""></a></li>
                                                                                    <li><a class="fa fa-google-plus" href=""></a></li>
                                                                                    <li><a class="fa fa-rss" href=""></a></li>
                                                                                    <li><a class="fa fa-linkedin" href=""></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                                                        <div class="p_modal_img">
                                                                            <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal END -->
                                        </div>
                                        <div class="col-md-7 col-sm-7 col-xs-7 no_col_padding">
                                            <div class="single_weekly_text">
                                                <a href="product-right-sidebar.html">Aliquam condimentum</a>
                                            </div>
                                            <div class="rating">
                                                <ul>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_price">
                                                <span>$236.00</span>
                                            </div>
                                            <div class="wishlist">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-heart"></i>Wishlist</a></li>
                                                    <li><a href=""><i class="fa fa-retweet"></i>Compare</a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_add_cart">
                                                <a href="">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="weekly_featured">
                                <div class="single_weekly_featured">
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                            <div class="weekly_hover">
                                                <a class="fa fa-search" href="" data-toggle="modal" data-target="#myModal026"></a>
                                            </div>
                                            <div class="image_weekly_change">
                                                <div class="single_weekly_img">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/feature12.jpg" alt=""/>
                                                </div>
                                                <div class="single_weekly_img_hover">
                                                    <div class="weekly_overlay"></div>
                                                    <img src="${pageContext.request.contextPath}/image/feature13.jpg" alt=""/>
                                                </div>
                                            </div>
                                            <!-- Modal Start -->
                                            <div id="myModal026" class="modal fade" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="product_lightbox">
                                                                <div class="row">
                                                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                                                        <div class="nod_text">
                                                                            <h3><a href="">Split Side Pink Crepe</a></h3>
                                                                            <span>£20.00</span>
                                                                            <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye
                                                                                hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia
                                                                                brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop.
                                                                                Sausage officia pastrami chicken.</p>

                                                                            <div class="mod_size_silect">
                                                                                <select class="form-control">
                                                                                    <option>Medium</option>
                                                                                    <option>Small</option>
                                                                                    <option>Large</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mod_color_silect">
                                                                                <select class="form-control">
                                                                                    <option>Red</option>
                                                                                    <option>Pink</option>
                                                                                    <option>Black</option>
                                                                                    <option>Blue</option>
                                                                                    <option>Green</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="modal_icon">
                                                                                <ul>
                                                                                    <li><a class="fa fa-facebook" href=""></a></li>
                                                                                    <li><a class="fa fa-twitter" href=""></a></li>
                                                                                    <li><a class="fa fa-google-plus" href=""></a></li>
                                                                                    <li><a class="fa fa-rss" href=""></a></li>
                                                                                    <li><a class="fa fa-linkedin" href=""></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                                                        <div class="p_modal_img">
                                                                            <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal END -->
                                        </div>
                                        <div class="col-md-7 col-sm-7 col-xs-7 no_col_padding">
                                            <div class="single_weekly_text">
                                                <a href="product-right-sidebar.html">Aliquam condimentum</a>
                                            </div>
                                            <div class="rating">
                                                <ul>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_price">
                                                <span>$236.00</span>
                                            </div>
                                            <div class="wishlist">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-heart"></i>Wishlist</a></li>
                                                    <li><a href=""><i class="fa fa-retweet"></i>Compare</a></li>
                                                </ul>
                                            </div>
                                            <div class="weekly_add_cart">
                                                <a href="">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==| Weekly product End |==-->

<!--==| brand start |==-->
<div class="brand_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="brands">
                    <div id="brand-carousel">

                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand1.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand2.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand3.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand4.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand5.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand6.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand1.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand2.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand3.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand4.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand5.png" alt="Owl Image"></a></div>
                        <div class="item"><a href=""><img src="${pageContext.request.contextPath}/image/brand6.png" alt="Owl Image"></a></div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==| brand End |==-->

<!--==| Latest product start |==-->
<section class="latest_product_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="common_heading">
                    <h2>latest products</h2>
                    <div class="bery-hr medium star">
                        <div class="icon-wrapper">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star large"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="latest_product">
                    <div id="latest-product-caro">

                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1013424_07_1.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature9.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc1"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Mao Madras Shirt</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1008627-4_1.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1012630_45.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc2"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature9.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1008627-4_1.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc3"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">

                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1012630_45.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/03.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc4"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Night Sky Print</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1009859_2_1.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature8.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc5"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Split Side Pink Crepe</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/03.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature12.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc6"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Sleeveless Black</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1012628_25.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature10.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc7"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Colorful Print</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature8.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature11.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc8"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature12.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/02.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc9"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Colorful Print</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature11.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature10.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc10"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Colorful Print</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature10.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1010681-4.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc11"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Night Sky Print</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/02.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature12.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc12"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Split Side Pink Crepe</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="single_featured_product">
                                <div class="image_feature_change">
                                    <div class="featured_img">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/1010681-4.jpg" alt=""/>
                                    </div>
                                    <div class="single_feature_img_hover">
                                        <div class="image-overlay"></div>
                                        <img src="${pageContext.request.contextPath}/image/feature9.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="heart-icon">
                                    <a class="fa fa-heart" href=""></a>
                                </div>
                                <div class="search-icon">
                                    <a class="fa fa-search" href="" data-toggle="modal" data-target="#homtwoc13"></a>
                                </div>
                                <div class="cart-icon">
                                    <a class="fa fa-shopping-cart" href=""></a>
                                </div>
                                <div class="featured_info">
                                    <a href="product-left-sidebar.html">Floral Print Buttoned</a>
                                    <div class="rating">
                                        <ul>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star" href=""></a></li>
                                            <li><a class="fa fa-star-o" href=""></a></li>
                                        </ul>
                                    </div>
                                    <span class="amount">$200.00</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Start -->
                    <div id="homtwoc1" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc2" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc3" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc4" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc5" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc6" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc7" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc8" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc9" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc10" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc11" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc12" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                    <!-- Modal Start -->
                    <div id="homtwoc13" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="product_lightbox">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12">
                                                <div class="nod_text">
                                                    <h3><a href="">Split Side Pink Crepe</a></h3>
                                                    <span>£20.00</span>
                                                    <p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad
                                                        consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla
                                                        cupidatat pork chop. Sausage officia pastrami chicken.</p>

                                                    <div class="mod_size_silect">
                                                        <select class="form-control">
                                                            <option>Medium</option>
                                                            <option>Small</option>
                                                            <option>Large</option>
                                                        </select>
                                                    </div>
                                                    <div class="mod_color_silect">
                                                        <select class="form-control">
                                                            <option>Red</option>
                                                            <option>Pink</option>
                                                            <option>Black</option>
                                                            <option>Blue</option>
                                                            <option>Green</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal_icon">
                                                        <ul>
                                                            <li><a class="fa fa-facebook" href=""></a></li>
                                                            <li><a class="fa fa-twitter" href=""></a></li>
                                                            <li><a class="fa fa-google-plus" href=""></a></li>
                                                            <li><a class="fa fa-rss" href=""></a></li>
                                                            <li><a class="fa fa-linkedin" href=""></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="p_modal_img">
                                                    <img src="${pageContext.request.contextPath}/image/1014256_front.jpg" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal END -->
                </div>
            </div>
        </div>
    </div>
</section>
<!--==| Latest product END |==-->

<!--==| Latest From Blog start |==-->
<section class="latest_from_blog_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="common_heading">
                    <h2>Latest Posts Blog</h2>
                    <div class="bery-hr medium star">
                        <div class="icon-wrapper">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star large"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="latest_from_blog">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="single_latest_f_blog">
                                <div class="f_blog_img">
                                    <a href=""><img src="${pageContext.request.contextPath}/image/blog1_2.jpg" alt=""/></a>
                                    <div class="nd-content text-center">
                                        <div class="nd-content_inner">
                                            <div class="nd-content_inner1">
                                                <div class="nd-title">
                                                    <a href="blog-right-sidebar.html">Read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_blog_heading">
                                    <a href="blog-list-style.html">The new fashion from paris</a>
                                </div>
                                <div class="f_blog_menu">
                                    <ul>
                                        <li><a href=""><i class="fa fa-pencil-square-o"></i>By alothemes alo</a></li>
                                        <li><a href=""><i class="fa fa-calendar"></i>12 Feb 2015</a></li>
                                        <li><a href=""><i class="fa fa-comments"></i>1 comments</a></li>
                                    </ul>
                                </div>
                                <p>Donec commodo finibus massa, in malesuada arcu tincidunt tristique! In rutrum non nisi id volutpat. Integer rhoncus placerat
                                    odio non</p>
                                <div class="f_blog_read_more">
                                    <a href="blog-right-sidebar.html">Read more ></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="single_latest_f_blog">
                                <div class="f_blog_img">
                                    <a href=""><img src="${pageContext.request.contextPath}/image/blog3_1.jpg" alt=""/></a>
                                    <div class="nd-content text-center">
                                        <div class="nd-content_inner">
                                            <div class="nd-content_inner1">
                                                <div class="nd-title">
                                                    <a href="blog-list-style.html">Read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_blog_heading">
                                    <a href="blog-list-style.html">Tommy Collections 2015</a>
                                </div>
                                <div class="f_blog_menu">
                                    <ul>
                                        <li><a href=""><i class="fa fa-pencil-square-o"></i>By alothemes alo</a></li>
                                        <li><a href=""><i class="fa fa-calendar"></i>12 Feb 2015</a></li>
                                        <li><a href=""><i class="fa fa-comments"></i>1 comments</a></li>
                                    </ul>
                                </div>
                                <p>Donec commodo finibus massa, in malesuada arcu tincidunt tristique! In rutrum non nisi id volutpat. Integer rhoncus placerat
                                    odio non</p>
                                <div class="f_blog_read_more">
                                    <a href="blog-right-sidebar.html">Read more ></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="single_latest_f_blog">
                                <div class="f_blog_img">
                                    <a href=""><img src="${pageContext.request.contextPath}/image/blog2.jpg" alt=""/></a>
                                    <div class="nd-content text-center">
                                        <div class="nd-content_inner">
                                            <div class="nd-content_inner1">
                                                <div class="nd-title">
                                                    <a href="blog-list-style.html">Read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_blog_heading">
                                    <a href="blog-list-style.html">The best 20 spots</a>
                                </div>
                                <div class="f_blog_menu">
                                    <ul>
                                        <li><a href=""><i class="fa fa-pencil-square-o"></i>By alothemes alo</a></li>
                                        <li><a href=""><i class="fa fa-calendar"></i>12 Feb 2015</a></li>
                                        <li><a href=""><i class="fa fa-comments"></i>1 comments</a></li>
                                    </ul>
                                </div>
                                <p>Donec commodo finibus massa, in malesuada arcu tincidunt tristique! In rutrum non nisi id volutpat. Integer rhoncus placerat
                                    odio non</p>
                                <div class="f_blog_read_more">
                                    <a href="blog-list-style.html">Read more ></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==| Latest From Blog END |==-->

<!--==| Home Service start |==-->
<div class="home_service_area">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-3">
                        <div class="single_home_service">
                            <div class="support-icon square-round">
                                <a class="fa fa-car" href=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-9">
                        <div class="support-info">
                            <div class="info-title"><a href="">FREE SHIPPING</a></div>
                            <div class="info-details">Suspendisse metus diam, pulvinar nec massa non, dignis sim imperdiet nulla.</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-3">
                        <div class="single_home_service">
                            <div class="support-icon square-round">
                                <a class="fa fa-life-ring " href=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-9">
                        <div class="support-info">
                            <div class="info-title"><a href="">ONLINE SUPPORT</a></div>
                            <div class="info-details">Suspendisse metus diam, pulvinar nec massa non, dignis sim imperdiet nulla.</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-3">
                        <div class="single_home_service">
                            <div class="support-icon square-round">
                                <a class="fa fa-money" href=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-9">
                        <div class="support-info">
                            <div class="info-title"><a href="">MONEY BACK GUARANTEE</a></div>
                            <div class="info-details">Suspendisse metus diam, pulvinar nec massa non, dignis sim imperdiet nulla.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==| Home Service END |==-->

<!--==| footer top start |==-->
<footer class="fotter_top_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="footer_top">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="footer_wid">
                                <h2>Rosette</h2>
                                <div class="first_wid_text">
                                    <p>Suspendisse metus diam, pulvinar nec mas sa non, dignis sim imperdiet nulla. Suspen disse malesuada diam id ante
                                        mole.</p>
                                </div>
                                <h3>find us on</h3>
                                <div class="first_wid_social">
                                    <ul>
                                        <li><a class="fa fa-facebook" href=""></a></li>
                                        <li><a class="fa fa-twitter" href=""></a></li>
                                        <li><a class="fa fa-youtube" href=""></a></li>
                                        <li><a class="fa fa-tumblr" href=""></a></li>
                                        <li><a class="fa fa-pinterest" href=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="footer_wid">
                                <h3>MY ACCOUNT</h3>
                                <nav class="footer_wid_menu">
                                    <ul>
                                        <li><a href="cart.html"><i class="fa fa-caret-right"></i>View Cart</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>My Wishlist</a></li>
                                        <li><a href="checkout.html"><i class="fa fa-caret-right"></i>Check out</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Track My Order</a></li>
                                        <li class="last_child"><a href=""><i class="fa fa-caret-right"></i>Help</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="footer_wid">
                                <h3>INFORMATION</h3>
                                <nav class="footer_wid_menu">
                                    <ul>
                                        <li><a href=""><i class="fa fa-caret-right"></i>About Us</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Terms & condition</a></li>
                                        <li><a href="checkout.html"><i class="fa fa-caret-right"></i>Check out</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Orders and Returns</a></li>
                                        <li class="last_child"><a href=""><i class="fa fa-caret-right"></i>Site Map</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="footer_wid">
                                <h3>WHY CHOOSE</h3>
                                <nav class="footer_wid_menu">
                                    <ul>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Product Recall</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Returns and Exchanges</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Shipping Options</a></li>
                                        <li><a href=""><i class="fa fa-caret-right"></i>Help & FAQs</a></li>
                                        <li class="last_child"><a href=""><i class="fa fa-caret-right"></i>Sale Only Today</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="footer_wid">
                                <h3>NEWSLETTER SIGNUP!</h3>
                                <p>Sign Up for Our Newsletter to receive latest news and events.</p>
                                <div class="footer_input">
                                    <input type="text"/>
                                    <a class="fa fa-envelope" href=""></a>
                                </div>
                                <div class="footer_payment">
                                    <ul>
                                        <li><a href="#"><img src="${pageContext.request.contextPath}/image/visa.png" alt="visa"/></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath}/image/mc.png" alt="visa"/></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath}/image/discover.png" alt="visa"/></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath}/image/AE.png" alt="visa"/></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--==| footer top End |==-->

<!--==| footer bottom start |==-->
<footer class="footer_bottom_area">
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-sm-8 col-xs-12">
                <nav class="footer_bottom_left">
                    <ul>
                        <li><a href="">Site Map</a></li>
                        <li><a href="">Search Terms</a></li>
                        <li><a href="">Advanced Search</a></li>
                        <li><a href="">Orders and Returns</a></li>
                        <li class="last_child"><a href="contact.html">Contact Us</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-5 col-sm-4 col-xs-12">
                <nav class="footer_bottom_right">
                    <p>Copyright &copy; <a href="">BootExperts 2015</a></p>
                </nav>
            </div>
        </div>
    </div>
</footer>
<!--==| footer bottom End |==-->

<jsp:include page="${pageContext.request.contextPath}/head/style/js.jsp"/>
</body>
</html>