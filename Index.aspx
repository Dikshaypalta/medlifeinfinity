<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVisitor.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="home-slider clearfix">
    <div class="flexslider">
        <ul class="slides">
            <!--slide start-->
            <li class="flex-active-slide">
                <img src="images/temp-images/slide-one.jpg" alt="Medical Services That You Can Trust" draggable="false"/>
                <div class="content-wrapper clearfix">
                    <div class="container">
                        <div class="slide-content clearfix">
                            <h1>Medical Services <span>That You Can Trust</span></h1>
                            <p> </p>
                            <a class="slider-button" href="read1.html">Read More</a>
                        </div>
                    </div>
                </div>
            </li>
            <!--slide end-->

            <!--slide start-->
            <li>
                <img src="images/temp-images/slide-two.jpg" alt="We Care for You" draggable="false"/>
                <div class="content-wrapper clearfix">
                    <div class="container">
                        <div class="slide-content clearfix ">
                            <h1>We <span>Care</span> for <span>You</span></h1>
                            <p>Health is the level of functional or metabolic efficiency of a living organism. In humans it is the ability of individuals or communities to adapt and self-manage when facing physical, mental or social challenges.</p>
                            <a class="slider-button" href="read1.html">Read More</a>
                        </div>
                    </div>
                </div>
            </li>
            <!--slide end-->
        </ul>
        <!--directional nav-->
        <ul class="flex-direction-nav">
            <li><a class="flex-prev" href="#">Previous</a></li>
            <li><a class="flex-next" href="#">Next</a></li></ul>
    </div>
    <!--appointment form-->
   <!--general services-->
<div class="home-features clearfix">
    <div class="container">
        <div class="row">

            <div class="col-md-4">
                <div class="features-intro clearfix">
                    <h2>Health  Services By<span>  MedLife Infinity</span> </h2>
                    <p> A healthy diet is a diet which contains a balanced amount of nutrients, varied food such as fruits and vegetables, proteins primarily from fish, dairy products, and nuts. Minimal amounts of caffeine, sugar, fat, salt, and alcohol. Healthy eating is identical to a healthy diet, in that it relates to the practice of food intake for healthy living.   </p>
                    <a class="read-more" href="services.aspx">View Our Services</a>
                </div>
            </div>

            <div class="col-md-8">
                <div class="row">
                    <div class="col-sm-6 single-feature">
                        <div class="row">
                            <div class="col-sm-3 icon-wrapper">
                                <i class="fa fa-plus-square fa-custom"></i>
                            </div>
                            <div class="col-sm-9">
                                <h3>Prescription</h3>
                                <p>Many prescriptions are now computer-produced but, if you are writing one by hand, date the prescription and state the full name and address of the patient.</p>
                            </div>
                        </div>
                    </div>
  <div class="col-sm-6 single-feature">
                        <div class="row">
                            <div class="col-sm-3 icon-wrapper">
                                <i class="fa fa-medkit fa-custom"></i>
                            </div>
                            <div class="col-sm-9">
                                <h3>Search Hospitals</h3>
                                <p>Governments often use this term to refer to the ideal diet which the average person requires to remain healthy.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 single-feature">
                        <div class="row">
                            <div class="col-sm-3 icon-wrapper">
                                <i class="fa fa-user-md fa-custom"></i>
                            </div>
                            <div class="col-sm-9">
                                <h3>Qualified Doctors </h3>
                                <p>All surgeons must first qualify as doctors, so they will have a basic medical degree which includes the principles of medicine and surgery.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 single-feature">
                        <div class="row">
                            <div class="col-sm-3 icon-wrapper">
                                <i class="fa fa-ambulance fa-custom"></i>
                            </div>
                            <div class="col-sm-9">
                                <h3>Emergency Services</h3>
                                <p>Emergency services have one or more dedicated emergency telephone numbers reserved for critical emergency calls. MedLifeInfinity provides services in Emergencies.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!--general services end-->

<!--doctors section-->
<div class="home-doctors  clearfix">
    <div class="container">
        <div class="slogan-section animated fadeInUp clearfix">
            <h2>Meet our <span>Medical Specialists</span></h2>
           </div>

        <div class="row">
            <div class="col-md-3 col-sm-6  text-center">
                <div class="common-doctor animated fadeInUp clearfix">
                    <figure>
                        <a href="#" title="Dr.Addison Alexander">
                            <img src="images/temp-images/doctor-2.jpg" alt="doctor-2"/>
                        </a>
                    </figure>
                    <div class="text-content">
                        <h5><a href="#">Dr.Addison Alexander</a></h5>
                        <div class="for-border"></div>
                        <p>
                            A physician or medical doctor is a professional who practices medicine, which is concerned with promoting, maintaining, or restoring human health through the study, diagnosis, and treatment of disease, injury, and other physical and mental impairments.</p>
                    </div>
                </div>
               
            </div>
            <div class="col-md-3 col-sm-6  text-center">
                <div class="common-doctor animated fadeInUp clearfix">
                    <figure>
                        <a href="#" title="Dr.Adaline Becka">
                            <img src="images/temp-images/doctor-1.jpg" alt="doctor-1"/>
                        </a>
                    </figure>
                    <div class="text-content">
                        <h5><a href="#">Dr.Adaline Becka</a></h5>
                        <div class="for-border"></div>
                        <p>
                           Cardiologists receive extensive education, including four years of medical school and three years of training in general internal medicine After this, a cardiologist spends three or more years in specialized training. That’s ten or more years of training. </div>
                </div>
             
            </div>

            <div class="visible-sm clearfix margin-gap"></div>

            <div class="col-md-3 col-sm-6  text-center">
                <div class="common-doctor animated fadeInUp clearfix">
                    <figure>
                        <a href="#" title="Dr.Andrew Bert">
                            <img src="images/temp-images/doctor-4.jpg" height="200" alt="doctor-4" />
                        </a>
                    </figure>
                    <div class="text-content">
                        <h5><a href="#">Dr.Andrew Bert</a></h5>
                        <div class="for-border"></div>
                        <p>
                         A psychiatrist is a medical doctor who specializes in psychiatry, and treats people with mental illness. Psychiatrists can prescribe psychiatric medication. Psychiatrists specializing in geriatric psychiatry work with the elderly and are called geriatric psychiatrists or geropsychiatrists.</div>
                </div>
               
            </div>

            <div class="col-md-3 col-sm-6  text-center">
                <div class="common-doctor animated fadeInUp clearfix">
                    <figure>
                        <a href="#" title="Dr.Orana Taleebin">
                            <img src="images/temp-images/doctor-3.jpg" alt="doctor-3"/>
                        </a>
                    </figure>
                    <div class="text-content">
                        <h5><a href="#">Dr.Orana Taleebin</a></h5>
                        <div class="for-border"></div>
                        <p>
                           A dentist has other people that help him with their job. Dental hygienists help people keep their teeth clean. The dental team includes dental assistants, dental hygienists, dental technicians, and in some states, dental therapists.</div>
                </div>
            
            </div>
            <div class="visible-sm clearfix margin-gap"></div>
        </div>
    </div>
</div>
<!--doctors section end-->

<!--blog posts section-->
<div class="home-blog text-center clearfix">
    <div class="container">
        <div class="slogan-section animated fadeInUp clearfix">
            <h2>Latest News from <span>Health and Medical</span></h2>
           </div>
        <div class="row">
            <div class="col-md-4">
                <article class="common-blog-post animated fadeInRight clearfix">
                    <figure>
                        <a href="image-post-format.html" title="Medical Services">
                            <img src="images/temp-images/news-2-732x447.jpg"  alt="news-2" />
                        </a>
                    </figure>
                    <div class="text-content clearfix">
                        <h5><a href="image-post-format.html">MedCare</a></h5>
                        <div class="entry-meta">
                            <span>10 May, 2014</span>, by <a href="#" title="Posts by John Doe">Navdeep Kaur</a>
                        </div>
                        <div class="for-border"></div>
                        <p>Some medical doctors do only certain kinds of medicine. These doctors are called specialists. They may treat injuries to only specific parts of the body. </div>
                </article>
               
            </div>
            <div class="col-md-4">
                <article class="common-blog-post animated fadeInRight clearfix">
                    <div class="gallery gallery-slider clearfix loading">
                        <ul class="slides">
                            <li>
                                <a href="images/temp-images/gallery-1.jpg" title="" >
                                    <img src="images/temp-images/gallery-1.jpg" alt="gallery-1" />
                                </a>
                            </li>
                            <li class="flex-active-slide">
                                <a href="images/temp-images/gallery-2.jpg" title="" >
                                    <img src="images/temp-images/gallery-2.jpg" alt="gallery-2" />
                                </a>
                            </li>
                            <li>
                                <a href="images/temp-images/gallery-3.jpg" title="" >
                                    <img src="images/temp-images/gallery-3.jpg" alt="gallery-3" />
                                </a>
                            </li>
                            <li>
                                <a href="images/temp-images/gallery-2.jpg" title="" >
                                    <img src="images/temp-images/gallery-2.jpg" alt="gallery-4" />
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="text-content clearfix">
                        <h5><a href="gallery-post-format.html">Gallery</a></h5>
                        <div class="entry-meta">
                            <span>10 May, 2014</span>, by <a href="#" title="Posts by John Doe">John Doe</a>
                        </div>
                        <div class="for-border"></div>
                        <p>Health is the level of functional efficiency of a living organism. In humans it is the ability of individuals to adapt and self-manage when facing physical, mental or social challenges.</p>
                    </div>
                </article>

           
            </div>

            <div class="col-md-4">
                <article class="common-blog-post animated fadeInRight clearfix">
                    <div class="video clearfix">
                        <div class="video-wrapper clearfix">
                            <iframe src="http://player.vimeo.com/video/75594702?title=0&amp;byline=0&amp;portrait=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="text-content clearfix">
                        <h5><a href="video-post-format.html">The Hero In All Of Us</a></h5>
                        <div class="entry-meta">
                            <span>10 May, 2014</span>, by <a href="#" title="Posts by John Doe">John Doe</a>
                        </div>
                        <div class="for-border"></div>
                        <p>Patients can come at times that best fit their schedules and when urgent medical attention is needed on days as well as at times when other facilities are closed.</p></div>
                </article>
              
            </div>
        </div>
    </div>
</div>
<!--blog posts section end-->

<!--testimonials section-->
<div class="home-testimonial  clearfix">
    <div class="container">
        <div class="text-center">
            <div class="slogan-section animated fadeInUp clearfix">
                <h2>What patients say <span>About MedLifeInfinity</span></h2>
                <p>Patients can come at times that best fit their schedules and when urgent medical attention is needed on days as well as at times when other facilities are closed.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10 text-center">
                <div class="flexslider-three animated fadeInUp">
                    <ul class="slides">
                        <li>
                            <img class="img-circle" src="images/2.jpg" height="150" width="150" alt="author-22" />
                            <blockquote>
                                <p>Systematic activities to prevent or cure health problems and promote good health in humans are undertaken by health care providers. Applications with regard to animal health are covered by the veterinary sciences. The term "healthy" is also widely used in the context of many types of non-living organizations and their impacts for the benefit of humans, such as in the sense of healthy communities, healthy cities or healthy environments. In addition to health care interventions and a person's surroundings, a number of other factors are known to influence the health status of individuals, including their background, lifestyle, and economic, social conditions, and spirituality; these are referred to as "determinants of health." </p>
                            </blockquote>

                            <div class="testimonial-footer clearfix">
                                <h3>Marina Forrest</h3>
                                <div class="for-border"></div>
                                <p><a target="_blank" href="#">Autommatic</a></p>
                            </div>
                        </li>
                        <li>
                            <img class="img-circle" src="images/3.png" height="150" width="150"  alt="author-11" />
                            <blockquote>
                                <p>Systematic activities to prevent or cure health problems and promote good health in humans are undertaken by health care providers. Applications with regard to animal health are covered by the veterinary sciences. The term "healthy" is also widely used in the context of many types of non-living organizations and their impacts for the benefit of humans, such as in the sense of healthy communities, healthy cities or healthy environments. In addition to health care interventions and a person's surroundings, a number of other factors are known to influence the health status of individuals, including their background, lifestyle, and economic, social conditions, and spirituality; these are referred to as "determinants of health." </p>
                            </blockquote>

                            <div class="testimonial-footer clearfix">
                                <h3>Jaden Wayne</h3>
                                <div class="for-border"></div>
                                <p><a target="_blank" href="#">Themeforest</a></p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
</div>
    <!--appointment form end-->
</div>


</asp:Content>

