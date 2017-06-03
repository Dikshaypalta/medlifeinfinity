<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVisitor.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div class="banner clearfix"></div>
<div class="page-top clearfix">
    <!--page main heading and search area-->
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-7 ">
                <h1>News</h1>
                <nav class="bread-crumb">
                    <ul class="breadcrumb clearfix">
                        <li><a href="#">Medical Press</a><span class="divider"></span></li>
                        <li>News</li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-5 ">
                <div id="search" class="widget clearfix">
                    <form method="get" id="search-form" class="search-form" action="#">
                        <div>
                            <input type="text" name="s" id="search-text" placeholder="Search"/>
                            <input type="submit" id="search-submit" value=""/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="blog-page clearfix">
<div class="container">
<div class="row">
<div class="col-lg-9 col-md-8">
    <div class="blog-post-listing clearfix"  >
        <!-- Post -->
        <article  class="post hentry clearfix">
            <div class="row">
                <!--post date and comments-->
                <div class="col-sm-2">
                    <div class="left_meta clearfix entry-meta">
                        <time class="entry-time updated" datetime="2014-05-10T11:07:36+00:00">May <strong>10</strong></time>
                        <span class="comments_count clearfix entry-comments-link">
                            <a href="#" title="Comment on Image Post Format">5</a>
                        </span>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div class="right-contents">
                        <header class="entry-header">
                            <!--post image-->
                            <figure>
                                <a href="image-post-format.html" title="Image Post Format">
                                    <img src="images/temp-images/news-2.jpg" class=" wp-post-image" alt="news-2" />
                                </a>
                            </figure>
                            <!--post title-->
  
                            <!--author name-->
                               
                        </header>
                        <!--post content-->
                       re button-->
                        <a class="read-more" href="image-post-format.html">Read More</a>
                    </div>
                </div>
            </div>
        </article>

        <!-- Post -->
        <article  class="post type-post format-quote hentry  clearfix">
            <div class="row">
                <div class="col-sm-2">
                    <!-- Post Date and Comments -->
                    <div class="left_meta clearfix entry-meta">
                        <time class="entry-time updated" datetime="2014-05-10T11:07:36+00:00">May <strong>10</strong></time>
                        <span class="comments_count clearfix entry-comments-link">
                            <a href="#" title="Comment on Image Post Format">5</a>
                        </span>
                    </div>
                </div>
                <div class="col-sm-10">
                    <!-- Post contents -->
                    <div class="right-contents">
                        <header class="entry-header">
                            <blockquote class="quote">
                                <p>
                                    It's not that some people have willpower and some don't. it's that some people are ready to change and others are not.<cite>James Gordon</cite>
                                </p>
                            </blockquote>
                        </header>
                    </div>
                </div>
            </div>



        </article><!-- Post -->
        <article class="post format-gallery hentry clearfix">
            <div class="row">
                <div class="col-sm-2">
                    <!-- Post Date and Comments -->
                    <div class="left_meta clearfix entry-meta">
                        <time class="entry-time updated" datetime="2014-05-10T11:07:36+00:00">May <strong>10</strong></time>
                        <span class="comments_count clearfix entry-comments-link">
                            <a href="#" title="Comment on Image Post Format">5</a>
                        </span>
                    </div>
                </div>
                <div class="col-sm-10">
                    <!-- Post contents -->
                    <div class="right-contents">
                        <header class="entry-header">
                            <div class="gallery gallery-slider clearfix">
                                <ul class="slides">
                                    <li><a href="images/temp-images/gallery-1.jpg" title="gallery" ><img src="images/temp-images/gallery-1.jpg" alt="gallery-1" /></a></li>
                                    <li><a href="images/temp-images/gallery-2.jpg" title="gallery" ><img src="images/temp-images/gallery-2.jpg" alt="gallery-2" /></a></li>
                                    <li><a href="images/temp-images/gallery-3.jpg" title="gallery" ><img src="images/temp-images/gallery-3.jpg" alt="gallery-3" /></a></li>
                                    <li><a href="images/temp-images/gallery-4.jpg" title="gallery" ><img src="images/temp-images/gallery-4.jpg" alt="gallery-4" /></a></li>
                                </ul>
                            </div>
                            <!--post title-->
            
                            <!--post author-->
                           
                        </header>
                    
                        <a class="read-more" href="gallery-post-format.html">Read More</a>
                    </div>
                </div>
            </div>
        </article><!-- Post -->

        <article class="post format-link hentry clearfix">
            <div class="row">
                <div class="col-sm-2">
                    <!-- Post Date and Comments -->
                    <div class="left_meta clearfix entry-meta">
                        <time class="entry-time updated" datetime="2014-05-10T11:07:36+00:00">May <strong>10</strong></time>
                        <span class="comments_count clearfix entry-comments-link">
                            <a href="#" title="Comment on Image Post Format">5</a>
                        </span>
                    </div>
                </div>
                <div class="col-sm-10">
                    <!-- Post contents -->
                    <div class="right-contents">
                        <header class="entry-header">
                            <div class="link clearfix">
                                <div class="link-container">
                                    <h3 class="link-title">How to Live a Healthier Life</h3>
                                    <a class="link-anchor" href="http://www.wikihow.com/Live-a-Healthier-Life" target="_blank">http://www.wikihow.com/Live-a-Healthier-Life</a>
                                </div>
                            </div>
                        </header>
                    </div>
                </div>
            </div>


        </article><!-- Post -->
        <article class="post hentry clearfix">
            <div class="row">
                <div class="col-sm-2">
                    <!-- Post Date and Comments -->
                    <div class="left_meta clearfix entry-meta">
                        <time class="entry-time updated" datetime="2014-05-10T11:07:36+00:00">May <strong>10</strong></time>
                        <span class="comments_count clearfix entry-comments-link">
                            <a href="#" title="Comment on Image Post Format">5</a>
                        </span>
                    </div>
                </div>
                <div class="col-sm-10">
                    <!-- Post contents -->
                    <div class="right-contents">
                        <header class="entry-header">
                            <div class="video clearfix">
                                <div class="video-wrapper clearfix">
                                    <iframe src="http://player.vimeo.com/video/75594702?title=0&amp;byline=0&amp;portrait=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                                </div>
                            </div>
                         
                               
                        </header>
                    
           
                    </div>
                </div>
            </div>
        </article><!-- Post -->

        <!--pagination-->
        <div class='pagination'>
            <span class='page-numbers current'>1</span>
            <a class='page-numbers' href='#'>2</a>
            <a class="next page-numbers" href="#"> > </a></div>
    </div>
</div>

<!--sidebar-->
<div class="col-lg-3 col-md-4">
    <aside class="sidebar clearfix">
        <section  class="widget tabs-widget">
            <!--tabs widget sidebar-->
            <div class="tabs clearfix">
                <div class = "tab-head active">
                    <h6>Popular</h6>
                </div>
                <div class = "tab-head ">
                    <h6>Latest</h6>
                </div>
                <div class = "tab-head ">
                    <h6>Comments</h6>
                </div>
                <div class="tabs-content clearfix">
                    <div class="tab-post-listing clearfix">
                        <figure>
                            <a href="#">
                                <img src="images/temp-images/news-2-150x150.jpg" class="tabs-thumb wp-post-image" alt="news-2" />
                            </a>
                        </figure>
                        <div class="post-content">
                            <h6><a href="#">Image Post Format</a></h6>
                            <span>May 10, 2014</span>
                        </div>
                    </div>
                    <div class="tab-post-listing clearfix">
                        <figure>
                            <a href="#">
                                <img src="images/temp-images/gallery-1-150x150.jpg" class="tabs-thumb wp-post-image" alt="gallery-1" />
                            </a>
                        </figure>
                        <div class="post-content">
                            <h6><a href="#">Gallery Post Format</a></h6>
                            <span>May 10, 2014</span>
                        </div>
                    </div>
                    <div class="tab-post-listing clearfix">
                        <figure>
                            <a href="#">
                                <img src="images/temp-images/news-1-150x150.jpg" class="tabs-thumb wp-post-image" alt="news-1" />
                            </a>
                        </figure>
                        <div class="post-content">
                            <h6><a href="#">Standard Post Format with Featured Image</a></h6>
                            <span>May 06, 2014</span>
                        </div>
                    </div>
                </div><div class="tabs-content clearfix">
                <div class="tab-post-listing clearfix">
                    <figure>
                        <a href="#">
                            <img src="images/temp-images/news-2-150x150.jpg" class="tabs-thumb wp-post-image" alt="news-2" />
                        </a>
                    </figure>
                    <div class="post-content">
                        <h6><a href="#">Image Post Format</a></h6>
                        <span>May 10, 2014</span>
                    </div>
                </div>
                <div class="tab-post-listing clearfix">
                    <figure>
                        <a href="#">
                            <img src="images/temp-images/gallery-1-150x150.jpg" class="tabs-thumb wp-post-image" alt="gallery-1" />
                        </a>
                    </figure>
                    <div class="post-content">
                        <h6><a href="#">Gallery Post Format</a></h6>
                        <span>May 10, 2014</span>
                    </div>
                </div>
                <div class="tab-post-listing clearfix">
                    <figure>
                        <a href="#">
                            <img src="images/temp-images/news-1-150x150.jpg" class="tabs-thumb wp-post-image" alt="news-1" />
                        </a>
                    </figure>
                    <div class="post-content">
                        <h6><a href="#">Standard Post Format with Featured Image</a></h6>
                        <span>May 06, 2014</span>
                    </div>
                </div>
            </div>
                <div class="tabs-content clearfix">
                    <div class="tab-post-listing clearfix">
                        <figure>
                            <a href="#">
                                <img alt='person' src="images/temp-images/person1.jpg" />
                            </a>
                        </figure>
                        <div class="post-content">
                            <h6><a href="#">Image Post Format</a></h6>
                            <span>Ut wisi enim ad&hellip;</span>
                        </div>
                    </div>
                    <div class="tab-post-listing clearfix">
                        <figure>
                            <a href="#">
                                <img alt='person' src="images/temp-images/person2.jpg" />
                            </a>
                        </figure>
                        <div class="post-content">
                            <h6><a href="#">Image Post Format</a></h6>
                            <span>Lorem ipsum dolor sit&hellip;</span>
                        </div>
                    </div>
                    <div class="tab-post-listing clearfix">
                        <figure>
                            <a href="#">
                                <img alt='person' src="images/temp-images/person3.jpg" />
                            </a>
                        </figure>
                        <div class="post-content">
                            <h6><a href="#">Image Post Format</a></h6>
                            <span>Typi non habent claritatem&hellip;</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--categories-->
        <section class="widget widget_categories">
            <h3 class="title">Categories</h3>
            <ul>
                <li><a href="#" title="View all posts filed under Environment">Environment</a></li>
                <li><a href="#" title="View all posts filed under Health Basics">Health Basics</a></li>
                <li><a href="#" title="View all posts filed under Lifestyle">Lifestyle</a></li>
                <li><a href="#" title="View all posts filed under Motivation">Motivation</a></li>
            </ul>
        </section>

        <!--tags sidebar-->
        <section class="widget widget_tag_cloud">
            <h3 class="title">Tags</h3>
            <div class="tagcloud">
                <a href='#'  title='3 topics'>benefits</a>
                <a href='#'  title='2 topics'>blood pressure</a>
                <a href='#'  title='2 topics'>body</a>
                <a href='#'  title='1 topic'>caring others</a>
                <a href='#'  title='2 topics'>clean environment</a>
                <a href='#'  title='3 topics'>doing good</a>
                <a href='#'  title='2 topics'>friendly staff</a>
                <a href='#'  title='2 topics'>habit</a>
                <a href='#'  title='4 topics'>health</a>
                <a href='#'  title='2 topics'>inspiring</a>
                <a href='#'  title='2 topics'>kids health</a>
                <a href='#'  title='3 topics'>learning</a>
                <a href='#'  title='2 topics'>tips</a>
                <a href='#'  title='3 topics'>willpower</a>
            </div>
        </section>
    </aside>
</div>
</div>
</div>
</div>


</asp:Content>

