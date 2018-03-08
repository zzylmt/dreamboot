<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    SimpleDateFormat df = new SimpleDateFormat("yyyy");
    String year = df.format(new Date());

%>
<!--==| footer top start |==-->
<footer class="fotter_top_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="footer_top">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="footer_wid">
                                <h2>风格1</h2>
                                <div class="first_wid_text">
                                    <p>Suspendisse metus diam, pulvinar nec mas sa non, dignis sim imperdiet nulla. Suspen disse malesuada diam id ante
                                        mole.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="footer_wid">
                                <h3>账户说明</h3>
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
                                <h3>关于我们</h3>
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
                                <h3>我们的特色</h3>
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
                                <h3>投诉意见</h3>
                                <p>service@zznet.com</p>
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
                        <li><a href="">购物指南</a></li>
                        <li><a href="">售后服务</a></li>
                        <li><a href="">商务合作</a></li>
                        <li class="last_child"><a href="contact.html">联系我们</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-5 col-sm-4 col-xs-12">
                <nav class="footer_bottom_right">
                    <p>Copyright &copy; <a href="">zznet <%=year%></a></p>
                </nav>
            </div>
        </div>
    </div>
</footer>
<!--==| footer bottom End |==-->