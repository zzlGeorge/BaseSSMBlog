<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Renda - clean blog theme based on Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/jquery.bxslider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                <li><a href="#about">Lifestyle</a></li>
                <li><a href="#contact">Travel</a></li>
                <li><a href="#contact">Fashion</a></li>
                <li><a href="${pageContext.request.contextPath}/about.jsp">About Me</a></li>
                <li><a href="${pageContext.request.contextPath}/about.jsp">Contact</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                <li><a href="#"><i class="fa fa-reddit"></i></a></li>
            </ul>

        </div>
        <!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <header>
        <a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png"></a>
    </header>
    <section class="main-slider">
        <ul class="bxslider">
            <li>
                <div class="slider-item"><img src="${pageContext.request.contextPath}/images/1140x500-2.jpg"
                                              title="Funky roots"/>
                    <h2><a href="post.jsp" title="Vintage-Inspired Finds for Your Home">Vintage-Inspired Finds for Your
                        Home</a></h2></div>
            </li>
            <li>
                <div class="slider-item"><img src="${pageContext.request.contextPath}/images/1140x500-1.jpg"
                                              title="Funky roots"/>
                    <h2><a href="post.jsp" title="Vintage-Inspired Finds for Your Home">Vintage-Inspired Finds for Your
                        Home</a></h2></div>
            </li>
            <li>
                <div class="slider-item"><img src="${pageContext.request.contextPath}/images/1140x500-3.jpg"
                                              title="Funky roots"/>
                    <h2><a href="post.jsp" title="Vintage-Inspired Finds for Your Home">Vintage-Inspired Finds for Your
                        Home</a></h2></div>
            </li>
        </ul>
    </section>
    <section>
        <div class="row">
            <div class="col-md-8">
                <article class="blog-post">
                    <div class="blog-post-image">
                        <a href="${pageContext.request.contextPath}/post.jsp"><img
                                src="${pageContext.request.contextPath}/images/750x500-1.jpg" alt=""></a>
                    </div>
                    <div class="blog-post-body">
                        <h2><a href="${pageContext.request.contextPath}/post.jsp">Vintage-Inspired Finds for Your
                            Home</a></h2>
                        <div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i
                                class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a
                                href="#">343</a></span></div>
                        <p>ew months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was
                            our first visit to the city and, believe it or not, Stockholm in February was more pleasant
                            than Boston in March. It probably has a lot to do with the fact that we arrived completely
                            unprepared. That I, in my converse and thin jacket, did not end up with pneumonia is
                            honestly not even fair.</p>
                        <div class="read-more"><a href="#">Continue Reading</a></div>
                    </div>
                </article>
                <!-- article -->
                <article class="blog-post">
                    <div class="blog-post-image">
                        <a href="${pageContext.request.contextPath}/post.jsp"><img
                                src="${pageContext.request.contextPath}/images/750x500-2.jpg" alt=""></a>
                    </div>
                    <div class="blog-post-body">
                        <h2><a href="${pageContext.request.contextPath}/post.jsp">The Best Street Style Looks of London
                            Fashion Week</a></h2>
                        <div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i
                                class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a
                                href="#">343</a></span></div>
                        <p>Few months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was
                            our first visit to the city and, believe it or not, Stockholm in February was more pleasant
                            than Boston in March. It probably has a lot to do with the fact that we arrived completely
                            unprepared.</p>
                        <div class="read-more"><a href="#">Continue Reading</a></div>
                    </div>
                </article>
                <!-- article -->
                <article class="blog-post">
                    <div class="blog-post-image">
                        <a href="${pageContext.request.contextPath}/post.jsp"><img
                                src="${pageContext.request.contextPath}/images/750x500-3.jpg" alt=""></a>
                    </div>
                    <div class="blog-post-body">
                        <h2><a href="${pageContext.request.contextPath}/post.jsp">Front Row Style: Our Favorite A-List
                            Moments of Fashion Week</a></h2>
                        <div class="post-meta"><span>by <a href="#">Jamie Mooze</a></span>/<span><i
                                class="fa fa-clock-o"></i>March 14, 2015</span>/<span><i class="fa fa-comment-o"></i> <a
                                href="#">343</a></span></div>
                        <p>It was our first visit to the city and, believe it or not, Stockholm in February was more
                            pleasant than Boston in March. It probably has a lot to do with the fact that we arrived
                            completely unprepared. Few months ago, we found ridiculously cheap plane tickets for Boston
                            and off we went.</p>
                        <div class="read-more"><a href="#">Continue Reading</a></div>
                    </div>
                </article>
            </div>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">企业网站模板</a></div>
            <div class="col-md-4 sidebar-gutter">
                <aside>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">About Me</h3>
                        <div class="widget-container widget-about">
                            <a href="${pageContext.request.contextPath}/post.jsp"><img
                                    src="${pageContext.request.contextPath}/images/author.jpg" alt=""></a>
                            <h4>Jamie Mooz</h4>
                            <div class="author-title">Designer</div>
                            <p>While everyone’s eyes are glued to the runway, it’s hard to ignore that there are major
                                fashion moments on the front row too.</p>
                        </div>
                    </div>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">Featured Posts</h3>
                        <div class="widget-container">
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="${pageContext.request.contextPath}/post.jsp"><img
                                            src="${pageContext.request.contextPath}/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="${pageContext.request.contextPath}/post.jsp">The State of the Word
                                        2014</a></h2>
                                    <div class="post-meta">
                                        <span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a
                                            href="${pageContext.request.contextPath}/post.jsp"><i
                                            class="fa fa-comment-o"></i> 23</a></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="${pageContext.request.contextPath}/post.jsp"><img
                                            src="${pageContext.request.contextPath}/images/90x60-2.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="${pageContext.request.contextPath}/post.jsp">Why The Muppets Needs to
                                        Channel 30 Rock</a></h2>
                                    <div class="post-meta">
                                        <span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a
                                            href="${pageContext.request.contextPath}/post.jsp"><i
                                            class="fa fa-comment-o"></i> 23</a></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="${pageContext.request.contextPath}/post.jsp"><img
                                            src="${pageContext.request.contextPath}/images/90x60-3.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="${pageContext.request.contextPath}/post.jsp">The State of the Word
                                        2014</a></h2>
                                    <div class="post-meta">
                                        <span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a
                                            href="${pageContext.request.contextPath}/post.jsp"><i
                                            class="fa fa-comment-o"></i> 23</a></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="${pageContext.request.contextPath}/post.jsp"><img
                                            src="${pageContext.request.contextPath}/images/90x60-4.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="${pageContext.request.contextPath}/post.jsp">Vintage-Inspired Finds for
                                        Your Home</a></h2>
                                    <div class="post-meta">
                                        <span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a
                                            href="${pageContext.request.contextPath}/post.jsp"><i
                                            class="fa fa-comment-o"></i> 23</a></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="${pageContext.request.contextPath}/post.jsp"><img
                                            src="${pageContext.request.contextPath}/images/90x60-5.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="${pageContext.request.contextPath}/post.jsp">The State of the Word
                                        2014</a></h2>
                                    <div class="post-meta">
                                        <span><i class="fa fa-clock-o"></i> 2. august 2015</span> <span><a
                                            href="${pageContext.request.contextPath}/post.jsp"><i
                                            class="fa fa-comment-o"></i> 23</a></span>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">Socials</h3>
                        <div class="widget-container">
                            <div class="widget-socials">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-reddit"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">Categories</h3>
                        <div class="widget-container">
                            <ul>
                                <li><a href="#">Fashion</a></li>
                                <li><a href="#">Art</a></li>
                                <li><a href="#">Design</a></li>
                                <li><a href="#">Featured</a></li>
                                <li><a href="#">Graphics</a></li>
                                <li><a href="#">Peoples</a></li>
                                <li><a href="#">Uncategorized</a></li>
                            </ul>
                        </div>
                    </div>
            </div>
            </aside>
        </div>
</div>
</section>
</div><!-- /.container -->

<footer class="footer">

    <div class="footer-socials">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
        <a href="#"><i class="fa fa-google-plus"></i></a>
        <a href="#"><i class="fa fa-dribbble"></i></a>
        <a href="#"><i class="fa fa-reddit"></i></a>
    </div>

    <div class="footer-bottom">
        <i class="fa fa-copyright"></i> Copyright 2015. All rights reserved.<br>
        More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a
            href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
    </div>
</footer>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.bxslider.js"></script>
<script src="${pageContext.request.contextPath}/js/mooz.scripts.min.js"></script>
</body>
</html>