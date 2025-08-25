<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs"
Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <!-- Basic Page Needs -->
    <meta charset="utf-8" />
    <title>Cropsto</title>

    <!-- Mobile Specific Metas -->
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/fontawesome.min.css"
    />
    <!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.min.css" />
    <link rel="stylesheet" type="text/css" href="css/odometer.min.css" />
    <link rel="stylesheet" type="text/css" href="css/swiper-bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="css/styles.css" />

    <!-- Animation Style -->
    <link rel="stylesheet" type="text/css" href="css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="css/animate2.min.css" />
    <link rel="stylesheet" type="text/css" href="css/textanimation.css" />

    <!-- Font -->
    <link rel="stylesheet" href="font/fonts.css" />

    <!-- Icon -->
    <link rel="stylesheet" type="text/css" href="css/icomoon/style.css" />
    <link rel="stylesheet" type="text/css" href="css/fontawesome/all.min.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="images/logo/logo3x.png" />
    <link rel="apple-touch-icon-precomposed" href="images/logo/logo3x.png" />
    <!-- Google tag (gtag.js) -->

    <script
      async
      src="https://www.googletagmanager.com/gtag/js?id=G-GL7QJ3PC9N"
    ></script>

    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }

      gtag("js", new Date());

      gtag("config", "G-GL7QJ3PC9N");
    </script>
    <style>
      #lblNum1 {
        padding: 0;
        border: none;
        font-size: 3rem;
        max-width: 25px;
        margin-top: 8px;
      }

      #lblNum2 {
        padding: 0;
        border: none;
        font-size: 3rem;
        max-width: 25px;
        margin-top: 8px;
      }
      .cc99 {
        width: 25px;
        font-size: 3rem;
        margin-top: 15px;
        margin-right: 13px;
        margin-left: 8px;
        color: #000;
      }
      #chartdiv {
        width: 100%;
        height: 550px;
        border: 1px solid #eee;
        box-shadow: 0px 0px 9px 6px #eee;
        border-radius: 20px;
      }

      #chartdiv .am5-layer-0 {
        padding: 30px;
      }
    </style>
  </head>
  <body class="counter-scroll">
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Preloader -->
      <div id="loading">
        <div id="loading-center">
          <div class="loader-container">
            <div class="wrap-loader">
              <div class="loader"></div>
              <div class="icon">
                <img src="images/logo/logo3x.png" alt="" />
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /.Preloader -->
      <div class="whatsapp-icon">
        <a
          href="https://api.whatsapp.com/send?phone=919825213170"
          target="_blank"
          ><img src="images/whatsapp.png" alt=""
        /></a>
      </div>
      <!-- Top-bar -->
      <div class="tf-topbar">
        <div class="tf-container w-1780">
          <div class="row">
            <div class="col-lg-12">
              <div class="topbar-inner">
                <div class="topbar-left">
                  <span class="fs-14 font-cropsto">Welcome to Cropsto</span>
                  <span class="fs-14 font-cropsto"
                    >Sustainably Preserving Freshness</span
                  >
                </div>
                <div id="google_translate_element"></div>
                <div class="topbar-right">
                  <ul class="social-list">
                    <li class="item">
                      <a
                        href="https://www.facebook.com/CropstoPackaging"
                        target="_blank"
                      >
                        <i class="icon-facebook"></i>
                      </a>
                    </li>
                    <li class="item">
                      <a
                        href="https://www.linkedin.com/company/cropsto-pack"
                        target="_blank"
                      >
                        <i class="fa-brands fa-linkedin-in"></i>
                      </a>
                    </li>
                    <li class="item">
                      <a
                        href="https://www.instagram.com/cropsto/"
                        target="_blank"
                      >
                        <i class="icon-instagram2"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /.Top-bar -->

      <!-- Header  -->
      <header class="header has-item-bot" id="header-main">
        <div class="tf-container w-1780">
          <div class="row">
            <div class="col-lg-12">
              <div class="header-inner">
                <div class="header-left">
                  <div class="logo-site">
                    <a href="index.html">
                      <img src="images/logo/logo.png" alt="" />
                    </a>
                  </div>
                </div>
                <div class="main-nav">
                  <ul class="nav-list">
                    <li class="item has-child">
                      <a href="index.html">Home </a>
                    </li>
                    <li class="item has-child">
                      <a href="about.html">About Us</a>
                    </li>
                    <li class="item has-child">
                      <a href="products.html">Products</a>
                    </li>
                    <li class="item has-child">
                      <a href="javascript:void(0)">Sustainability</a>
                      <ul class="sub-nav">
                        <li>
                          <a href="recycling.html">
                            <span>Recycling </span>
                          </a>
                        </li>
                        <li>
                          <a href="initiatives.html"
                            ><span>Initiatives </span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="item has-child">
                      <a href="blogs/">Blog</a>
                    </li>
                    <li class="item has-child current-menu">
                      <a href="contact.aspx">Contact Us</a>
                    </li>
                  </ul>
                </div>
                <div class="header-right">
                  <a href="contact.aspx" class="tf-btn gap-30">
                    <span class="text-style">Get In Touch! </span>
                    <div class="icon">
                      <i class="icon-arrow_right"></i>
                    </div>
                  </a>
                  <div class="mobile-button">
                    <span></span>
                  </div>
                </div>
              </div>
              <div class="mobile-nav-wrap">
                <div class="overlay-mobile-nav"></div>
                <div class="inner-mobile-nav overflow-y-auto">
                  <div class="top">
                    <div class="logo">
                      <a href="index.html" rel="home" class="main-logo">
                        <img
                          id="mobile-logo_header"
                          alt=""
                          src="images/logo/logo-2.png"
                        />
                      </a>
                      <div class="mobile-nav-close">
                        <i class="icon-close"></i>
                      </div>
                    </div>
                    <nav id="mobile-main-nav" class="mobile-main-nav">
                      <ul id="menu-mobile-menu" class="menu">
                        <li class="menu-item menu-item-has-children-mobile">
                          <a class="item-menu-mobile" href="index.html">Home</a>
                        </li>
                        <li class="menu-item menu-item-has-children-mobile">
                          <a class="item-menu-mobile" href="about.html"
                            >About Us</a
                          >
                        </li>
                        <li class="menu-item menu-item-has-children-mobile">
                          <a class="item-menu-mobile" href="products.html"
                            >Products</a
                          >
                        </li>
                        <li class="menu-item menu-item-has-children-mobile">
                          <a class="item-menu-mobile" href="javascript:void(0)"
                            >Sustainability
                            <i class="icon-arrow_down"></i>
                          </a>
                          <ul class="sub-menu-mobile">
                            <li class="menu-item">
                              <a href="recycling.html">Recycling</a>
                            </li>
                            <li class="menu-item">
                              <a href="initiatives.html">Initiatives</a>
                            </li>
                          </ul>
                        </li>

                        <li class="menu-item menu-item-has-children-mobile">
                          <a class="item-menu-mobile" href="blogs/">Blog</a>
                        </li>
                        <li
                          class="menu-item menu-item-has-children-mobile current-nav"
                        >
                          <a
                            class="item-menu-mobile current"
                            href="contact.aspx"
                            >Contact Us</a
                          >
                        </li>
                      </ul>
                    </nav>
                  </div>
                  <div class="bottom">
                    <div class="infor-list">
                      <ul>
                        <li>
                          <h5 class="title">Address:</h5>
                          <p>
                            B/h. Rajkamal Petrol Pump, Gondal road, Rajkot
                            -360004 (Gujarat) INDIA.
                          </p>
                        </li>
                        <li>
                          <h5 class="title">Phone:</h5>
                          <p>
                            +91 98252 13146,<br />
                            +91 98252 13170
                          </p>
                        </li>
                        <li>
                          <h5 class="title">Email:</h5>
                          <p>
                            <!-- cropstopack@gmail.com,<br> -->
                            sales@Cropsto.in
                          </p>
                        </li>
                      </ul>
                    </div>
                    <div class="wg-social">
                      <ul class="list">
                        <li class="item">
                          <a
                            href="https://www.facebook.com/CropstoPackaging"
                            target="_blank"
                            ><i class="icon-facebook1"></i
                          ></a>
                        </li>
                        <li class="item">
                          <a
                            href="https://www.instagram.com/cropsto/"
                            target="_blank"
                            ><i class="icon-instagram2"></i
                          ></a>
                        </li>
                        <li class="item">
                          <a
                            href="https://www.linkedin.com/company/cropsto-pack"
                            target="_blank"
                          >
                            <i class="fa-brands fa-linkedin-in"></i
                          ></a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="fixed-header style-absolute">
          <div class="tf-container w-1780">
            <div class="row">
              <div class="col-lg-12">
                <div class="header-inner">
                  <div class="header-left">
                    <div class="logo-site">
                      <a href="index.html">
                        <img src="images/logo/logo.png" alt="" />
                      </a>
                    </div>
                  </div>
                  <div class="main-nav">
                    <ul class="nav-list">
                      <li class="item has-child">
                        <a href="index.html">Home </a>
                      </li>
                      <li class="item has-child">
                        <a href="about.html">About Us</a>
                      </li>
                      <li class="item has-child">
                        <a href="products.html">Products</a>
                      </li>
                      <li class="item has-child">
                        <a href="javascript:void(0)">Sustainability</a>
                        <ul class="sub-nav">
                          <li>
                            <a href="recycling.html">
                              <span>Recycling </span>
                            </a>
                          </li>
                          <li>
                            <a href="initiatives.html"
                              ><span>Initiatives </span>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="item has-child">
                        <a href="blogs/">Blog</a>
                      </li>
                      <li class="item has-child current-menu">
                        <a href="contact.aspx">Contact Us</a>
                      </li>
                    </ul>
                  </div>
                  <div class="header-right">
                    <a href="contact.aspx" class="tf-btn gap-30">
                      <span class="text-style">Get In Touch! </span>
                      <div class="icon">
                        <i class="icon-arrow_right"></i>
                      </div>
                    </a>

                    <!-- <div class="wg-welcome btn-open-welcome">
                                        <i class="icon-fences-icon fs-24"></i>
                                    </div> -->
                    <div class="mobile-button">
                      <span></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="header-item children">
            <img src="images/item/page-title-top.png" alt="" />
          </div>
        </div>

        <div class="header-item">
          <img src="images/item/page-title-top.png" alt="" />
        </div>
      </header>
      <!-- /.Header -->

      <!-- Page-title -->
      <div class="page-title page-contact-us">
        <div class="rellax" data-rellax-speed="5">
          <img src="images/new-home/breadcrumb/Contact-Us.jpg" alt="" />
        </div>
        <div class="content-wrap">
          <div class="tf-container w-1290">
            <div class="row">
              <div class="col-lg-12">
                <div class="content">
                  <!-- <p class="sub-title">
                  Contact Us Today To Work Together
                </p> -->
                  <h1 class="title">Contact Us</h1>
                  <div class="icon-img">
                    <img src="./images/item/line-throw-title.png" alt="" />
                  </div>
                  <div class="breadcrumb">
                    <a href="index.html">Home</a>
                    <div class="icon">
                      <i class="icon-arrow-right1"></i>
                    </div>
                    <a href="javascript:void(0)">Contact Us </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="img-item item-2">
          <img src="images/item/grass.png" alt="" />
        </div>
      </div>
      <!-- /.Page-title -->

      <!-- Main-content -->
      <div class="main-content pt-0 page-index">
        <section class="s-contact-us style-2 bg-white pt-118 pb-5">
          <div class="section-wrap">
            <div class="tf-container w-1290">
              <div class="row">
                <div class="col-lg-12">
                  <div class="heading-section text-center style-4 mb-50">
                    <p class="title text-anime-style-2">Our Presence</p>
                  </div>
                </div>
                <div class="col-lg-12 col-12">
                  <!-- HTML -->
                  <div id="chartdiv"></div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- /.Section contact us -->

        <section class="s-contact-us style-2 bg-white">
          <div class="section-wrap">
            <div class="tf-container w-1290">
              <div class="row">
                <div class="col-lg-5">
                  <div class="content-left">
                    <ul class="contact-list">
                      <li class="wow fadeInUp" data-wow-duration="1.4s">
                        <div class="icon style-circle">
                          <i class="fa-solid fa-location-dot"></i>
                        </div>
                        <div class="infor">
                          <p class="title">Address</p>
                          <p class="text">
                            B/h. Rajkamal Petrol Pump, Gondal road, Rajkot
                            -360004 (Gujarat) INDIA.
                          </p>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="1.4s">
                        <div class="icon style-circle">
                          <i class="fa-solid fa-address-book"></i>
                        </div>
                        <div class="infor">
                          <p class="title">Phone</p>
                          <p class="text">+91 98252 13146</p>
                          <p class="text">+91 98252 13170</p>
                          <p class="text">+91 99252 38060</p>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="1.4s">
                        <div class="icon style-circle">
                          <i class="fa-solid fa-envelope"></i>
                        </div>
                        <div class="infor">
                          <p class="title">E-mail</p>
                          <p class="text">sales@cropsto.in</p>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="col-lg-7">
                  <div class="content-section">
                    <div class="heading-section has-text mb-50">
                      <p class="sub-title">Let's Cooperate Together</p>
                      <p class="title wow fadeInUp" data-wow-delay="0s">
                        Contact Us Today!
                      </p>
                    </div>
                    <form
                      class="form-send-message style-2"
                      id="form"
                      runat="server"
                    >
                      <div class="cols style-2 mb-15">
                        <fieldset>
                          <asp:TextBox
                            runat="server"
                            CssClass="form-control"
                            ID="txtname"
                            name="first_name"
                            placeholder="Name*"
                            aria-required="true"
                          ></asp:TextBox>
                          <asp:RequiredFieldValidator
                            ID="rfvName"
                            runat="server"
                            ControlToValidate="txtname"
                            ErrorMessage="Name is required."
                            ForeColor="Red"
                            Display="blogs"
                          />
                        </fieldset>

                        <fieldset>
                          <asp:TextBox
                            runat="server"
                            CssClass="form-control"
                            ID="txtemail"
                            name="email_id"
                            placeholder="Email*"
                          ></asp:TextBox>
                          <asp:RequiredFieldValidator
                            ID="rfvEmail"
                            runat="server"
                            ControlToValidate="txtemail"
                            ErrorMessage="Email is required."
                            ForeColor="Red"
                            Display="blogs"
                          />
                          <asp:RegularExpressionValidator
                            ID="revEmail"
                            runat="server"
                            ControlToValidate="txtemail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="Invalid email format."
                            ForeColor="Red"
                            Display="blogs"
                          />
                        </fieldset>
                      </div>

                      <div class="cols style-2 mb-15">
                        <fieldset>
                          <asp:TextBox
                            runat="server"
                            CssClass="form-control"
                            ID="txtphone"
                            name="phone_no"
                            placeholder="Phone*"
                            aria-required="true"
                          ></asp:TextBox>
                          <asp:RequiredFieldValidator
                            ID="rfvPhone"
                            runat="server"
                            ControlToValidate="txtphone"
                            ErrorMessage="Phone number is required."
                            ForeColor="Red"
                            Display="blogs"
                          />
                          <asp:RegularExpressionValidator
                            ID="revPhone"
                            runat="server"
                            ControlToValidate="txtphone"
                            ValidationExpression="^\d{10}$"
                            ErrorMessage="Enter a 10-digit phone number."
                            ForeColor="Red"
                            Display="blogs"
                          />
                        </fieldset>

                        <fieldset>
                          <asp:TextBox
                            runat="server"
                            CssClass="form-control"
                            ID="txtsubject"
                            name="subject"
                            placeholder="Subject*"
                            aria-required="true"
                          ></asp:TextBox>
                          <asp:RequiredFieldValidator
                            ID="rfvSubject"
                            runat="server"
                            ControlToValidate="txtsubject"
                            ErrorMessage="Subject is required."
                            ForeColor="Red"
                            Display="blogs"
                          />
                        </fieldset>
                      </div>

                      <div class="cols mb-30">
                        <fieldset>
                          <asp:TextBox
                            ID="txtmessage"
                            runat="server"
                            name="massage"
                            placeholder="Message..."
                            TextMode="MultiLine"
                            Rows="4"
                            Columns="50"
                          ></asp:TextBox>
                          <asp:RequiredFieldValidator
                            ID="rfvMessage"
                            runat="server"
                            ControlToValidate="txtmessage"
                            ErrorMessage="Message is required."
                            ForeColor="Red"
                            Display="blogs"
                          />
                        </fieldset>
                      </div>

                      <div class="cols justify-content-start cols mb-30 w-100">
                        <div class="form-grp d-flex w-100">
                          <asp:Label
                            ID="lblNum1"
                            runat="server"
                            Text=""
                            CssClass="form-control"
                          ></asp:Label>
                          <span class="cc99">+</span>
                          <asp:Label
                            ID="lblNum2"
                            runat="server"
                            Text=""
                            CssClass="form-control"
                          ></asp:Label>
                          <span class="cc99">=</span>
                          <asp:TextBox
                            ID="txtCaptcha"
                            runat="server"
                            CssClass="form-control"
                          ></asp:TextBox>
                          <asp:RequiredFieldValidator
                            ID="rfvCaptcha"
                            runat="server"
                            ControlToValidate="txtCaptcha"
                            ErrorMessage="Captcha is required."
                            ForeColor="Red"
                            Display="blogs"
                          />
                        </div>
                      </div>
                      <div class="checkbox-item send-wrap">
                        <asp:Button
                          ID="btnsubmit"
                          runat="server"
                          Text="Send Message"
                          OnClick="btnsubmit_Click"
                          class="tf-btn"
                        >
                        </asp:Button>

                        <%--<button type="submit" class="tf-btn"></button>--%>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- /.Section contact us -->
      </div>
      <!-- /.Main-content -->

      <!-- Footer -->
      <footer class="footer" id="footer-main">
        <div class="tf-container w-1290">
          <div class="row">
            <div class="col-lg-12">
              <div class="footer-top">
                <div class="footer-left">
                  <div class="logo">
                    <a href="index.html">
                      <img src="images/logo/logo-2.png" alt="" />
                    </a>
                  </div>
                </div>
                <div class="footer-center">
                  <p class="font-snowfall">Sustainably Preserving Freshness</p>
                </div>
                <div class="footer-right">
                  <div class="wg-social">
                    <ul class="list">
                      <li class="item">
                        <a
                          href="https://www.facebook.com/CropstoPackaging"
                          target="_blank"
                          ><i class="icon-facebook1"></i
                        ></a>
                      </li>
                      <li class="item">
                        <a
                          href="https://www.instagram.com/cropsto/"
                          target="_blank"
                          ><i class="icon-instagram2"></i
                        ></a>
                      </li>
                      <li class="item">
                        <a
                          href="https://www.linkedin.com/company/cropsto-pack"
                          target="_blank"
                          ><i class="fa-brands fa-linkedin-in"></i
                        ></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-inner">
          <div class="tf-container w-1290">
            <div class="row">
              <div class="col-lg-3 col-md-6">
                <div class="footer-inner-wrap footer-col-block">
                  <h4 class="footer-title footer-title-desktop mb-23">
                    ISO 22000: 2018 Certified Company
                  </h4>
                  <h4 class="footer-title footer-title-mobile mb-23">
                    ISO 22000: 2018 Certified Company
                  </h4>
                  <p class="cc2">
                    Cropsto is all about superior quality high barrier hermetic
                    packaging/storage solutions for green coffee, cocoa, tea,
                    sugar, rice, spices, maze and other grains, used as inner
                    liner for jute bags or ordinary sacks.
                  </p>
                </div>
              </div>
              <div class="col-lg-3 col-md-6">
                <div class="footer-inner-wrap footer-col-block">
                  <h4 class="footer-title footer-title-desktop mb-23">
                    News Posts
                  </h4>
                  <h4 class="footer-title footer-title-mobile mb-23">
                    News Posts
                  </h4>
                  <ul class="new-post-list tf-collapse-content">
                    <li class="item img-hover">
                      <div class="image hover-item">
                        <img src="images/blog/blog-1.jpg" alt="" />
                      </div>
                      <div class="content">
                        <a
                          href="blog-coffee-flavours.html"
                          class="title-post hover-text-secondary"
                          >Coffee Flavors around the World!
                        </a>
                        <p class="date-release">15 Nov, 2024</p>
                      </div>
                    </li>
                    <li class="item img-hover">
                      <div class="image hover-item">
                        <img src="images/blog/blog-2.jpg" alt="" />
                      </div>
                      <div class="content">
                        <a
                          href="blog-sustainability-in-coffee-packaging.html"
                          class="title-post hover-text-secondary"
                          >Sustainability in Coffee...
                        </a>
                        <p class="date-release">30 Sep, 2024</p>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-3 col-md-6">
                <div class="footer-inner-wrap footer-col-block">
                  <h4 class="footer-title footer-title-desktop mb-28">
                    Quick Links
                  </h4>
                  <h4 class="footer-title footer-title-mobile mb-28">
                    Quick Links
                  </h4>
                  <ul class="link-list tf-collapse-content">
                    <li class="item">
                      <a href="products.html">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 448 512"
                          width="14"
                          height="16"
                        >
                          <path
                            d="M264.547 70.633L440.547 238.633C445.297 243.164 447.984 249.445 447.984 256.008S445.297 268.852 440.547 273.383L264.547 441.383C254.953 450.508 239.766 450.164 230.609 440.57C221.453 431.07 221.797 415.82 231.422 406.633L364.09 280.008H24C10.75 280.008 0 269.258 0 256.008S10.75 232.008 24 232.008H364.09L231.422 105.383C221.797 96.227 221.453 80.977 230.609 71.445C239.766 61.852 254.953 61.508 264.547 70.633Z"
                          ></path>
                        </svg>
                        Products</a
                      >
                    </li>
                    <li class="item">
                      <a href="technology-innovation.html">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 448 512"
                          width="14"
                          height="16"
                        >
                          <path
                            d="M264.547 70.633L440.547 238.633C445.297 243.164 447.984 249.445 447.984 256.008S445.297 268.852 440.547 273.383L264.547 441.383C254.953 450.508 239.766 450.164 230.609 440.57C221.453 431.07 221.797 415.82 231.422 406.633L364.09 280.008H24C10.75 280.008 0 269.258 0 256.008S10.75 232.008 24 232.008H364.09L231.422 105.383C221.797 96.227 221.453 80.977 230.609 71.445C239.766 61.852 254.953 61.508 264.547 70.633Z"
                          ></path>
                        </svg>
                        Technology and Innovation</a
                      >
                    </li>
                    <li class="item">
                      <a href="blogs/">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 448 512"
                          width="14"
                          height="16"
                        >
                          <path
                            d="M264.547 70.633L440.547 238.633C445.297 243.164 447.984 249.445 447.984 256.008S445.297 268.852 440.547 273.383L264.547 441.383C254.953 450.508 239.766 450.164 230.609 440.57C221.453 431.07 221.797 415.82 231.422 406.633L364.09 280.008H24C10.75 280.008 0 269.258 0 256.008S10.75 232.008 24 232.008H364.09L231.422 105.383C221.797 96.227 221.453 80.977 230.609 71.445C239.766 61.852 254.953 61.508 264.547 70.633Z"
                          ></path>
                        </svg>
                        Blog</a
                      >
                    </li>
                    <li class="item">
                      <a href="faqs.html">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 448 512"
                          width="14"
                          height="16"
                        >
                          <path
                            d="M264.547 70.633L440.547 238.633C445.297 243.164 447.984 249.445 447.984 256.008S445.297 268.852 440.547 273.383L264.547 441.383C254.953 450.508 239.766 450.164 230.609 440.57C221.453 431.07 221.797 415.82 231.422 406.633L364.09 280.008H24C10.75 280.008 0 269.258 0 256.008S10.75 232.008 24 232.008H364.09L231.422 105.383C221.797 96.227 221.453 80.977 230.609 71.445C239.766 61.852 254.953 61.508 264.547 70.633Z"
                          ></path>
                        </svg>
                        FAQs</a
                      >
                    </li>
                    <li class="item">
                      <a href="contact.aspx">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 448 512"
                          width="14"
                          height="16"
                        >
                          <path
                            d="M264.547 70.633L440.547 238.633C445.297 243.164 447.984 249.445 447.984 256.008S445.297 268.852 440.547 273.383L264.547 441.383C254.953 450.508 239.766 450.164 230.609 440.57C221.453 431.07 221.797 415.82 231.422 406.633L364.09 280.008H24C10.75 280.008 0 269.258 0 256.008S10.75 232.008 24 232.008H364.09L231.422 105.383C221.797 96.227 221.453 80.977 230.609 71.445C239.766 61.852 254.953 61.508 264.547 70.633Z"
                          ></path>
                        </svg>
                        Contact Us
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-3 col-md-6">
                <div class="footer-inner-wrap footer-col-block">
                  <h4 class="footer-title footer-title-desktop mb-23">
                    Contact Us!
                  </h4>
                  <h4 class="footer-title footer-title-mobile mb-23">
                    Contact Us!
                  </h4>
                  <ul class="contact-list tf-collapse-content">
                    <li>
                      <i class="fa-solid fa-location-dot fs-17"></i>
                      <p class="address">
                        B/h. Rajkamal Petrol Pump, Gondal road, Rajkot -360004
                        (Gujarat) INDIA.
                      </p>
                    </li>
                    <li>
                      <i class="fa-solid fa-phone"></i>
                      <p class="phone-number fs-15">Call us: +91 98252 13146</p>
                    </li>
                    <li>
                      <i class="icon-package-box"></i>
                      <p class="email fs-15">Mail: sales@cropsto.in</p>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="tf-container w-1290">
          <div class="row">
            <div class="col-lg-12">
              <div class="footer-bottom justify-content-center">
                <p class="no-copy font-cropsto text-center">
                  Copyright © 2025
                  <span><a href="index.html">CropSto</a>.</span>
                  All Rights Reserved.
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="img-item item-1">
          <img src="images/item/grass-2.png" alt="" />
        </div>
        <div class="img-item item-2">
          <div class="scroll-element-3" style="transform: translateX(10px)">
            <img
              class="wow zoomIn animated"
              src="images/new-home/footer-coffee.png"
              alt=""
              style="visibility: visible; animation-name: zoomIn"
            />
          </div>
        </div>
      </footer>
    </div>
    <!-- /#Wapper -->

    <!-- Open-search -->
    <div class="offcanvas offcanvas-top offcanvas-search" id="canvasSearch">
      <button
        class="btn-close-search"
        type="button"
        data-bs-dismiss="offcanvas"
        aria-label="Close"
      >
        <i class="icon-close"></i>
      </button>
      <div class="tf-container">
        <div class="row">
          <div class="col-12">
            <div class="offcanvas-body">
              <form action="#" class="form-search-courses">
                <div class="icon">
                  <i class="icon-keyboard"></i>
                </div>
                <fieldset>
                  <input
                    class=""
                    type="text"
                    placeholder="Search for anything"
                    name="text"
                    tabindex="2"
                    value=""
                    aria-required="true"
                    required=""
                  />
                </fieldset>
                <div class="button-submit">
                  <button class="" type="submit">
                    <i class="icon-magnifying-glass"></i>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.Open-search -->

    <!-- Prograss -->
    <div class="progress-wrap">
      <svg
        class="progress-circle svg-content"
        width="100%"
        height="100%"
        viewbox="-1 -1 102 102"
      >
        <path
          d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
          style="
            transition: stroke-dashoffset 10ms linear;
            stroke-dasharray: 307.919, 307.919;
            stroke-dashoffset: 307.919;
          "
        ></path>
      </svg>
    </div>
    <!-- /.Prograss -->

    <!-- Javascript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/lazysize.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/swiper.js"></script>
    <script type="text/javascript" src="js/odometer.min.js"></script>
    <script type="text/javascript" src="js/counter.js"></script>
    <script type="text/javascript" src="js/count-down.js"></script>
    <script type="text/javascript" src="js/jquery-validate.js"></script>
    <script type="text/javascript" src="js/gsap-animation.js"></script>
    <script type="text/javascript" src="js/gsap.min.js"></script>
    <script type="text/javascript" src="js/ScrollTrigger.min.js"></script>
    <script type="text/javascript" src="js/Splitetext.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <!-- /Javascript -->

    <script type="text/javascript">
      function googleTranslateElementInit() {
        new google.translate.TranslateElement(
          { pageLanguage: "en" },
          "google_translate_element"
        );
      }
    </script>
    <script
      type="text/javascript"
      src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"
    ></script>
    <script>
      function captachaValidation() {
        var why = "";

        if (document.getElementById("CaptchaInput1").value == "") {
          why += "- Please Enter CAPTCHA Code.\n";
          alert("- Please Enter CAPTCHA Code");
          return false;
        } else if (ValidCaptcha1() == false) {
          why += "- The CAPTCHA Code Does Not Match!!!!.\n";
          alert("- The CAPTCHA Code Does Not Match!!!!");
          return false;
        }

        if (why != "") {
          alert(why);
          return null;
        }

        return true; // Assuming validation is successful, return true
      }

      function generateCaptcha() {
        var num1 = Math.floor(Math.random() * 10) + 1;
        var num2 = Math.floor(Math.random() * 10) + 1;
        var operators = ["+", "-", "*", "/"];
        var operator = operators[Math.floor(Math.random() * operators.length)];
        var question = num1 + " " + operator + " " + num2;

        // Calculate the answer
        var answer;
        switch (operator) {
          case "+":
            answer = num1 + num2;
            break;
          case "-":
            answer = num1 - num2;
            break;
          case "*":
            answer = num1 * num2;
            break;
          case "/":
            answer = (num1 / num2).toFixed(2); // Keep two decimal places for division
            break;
        }

        document.getElementById("txtCaptcha1").value = answer;
        document.getElementById("CaptchaDiv1").innerHTML = question;
      }

      // Validate input against the generated code
      function ValidCaptcha1() {
        var str1 = document.getElementById("txtCaptcha1").value;
        var str2 = document.getElementById("CaptchaInput1").value;

        return parseFloat(str1) === parseFloat(str2);
      }

      window.onload = function () {
        generateCaptcha();
      };
      // Form Validation
      // Form Validation
      // Form Validation
      function validateForm() {
        var firstName = document.getElementById("txtname").value;
        var email = document.getElementById("txtemail").value;
        var phone = document.getElementById("txtphone").value;
        var subject = document.getElementById("txtsubject").value;
        var comments = document.getElementById("txtmessage").value;

        var count = 0;

        // Validate Name
        if (firstName === "") {
          console.log("name");
          alert("First Name is required");
          // flag1 = false;
          count++;
          document.getElementById("txtname").focus();
          return false;
        }

        // Validate Email
        if (email === "") {
          alert("Email is required");
          // flag2 = false;
          count++;
          document.getElementById("txtemail").focus();
          return false;
        }

        if (!validateEmail(email)) {
          alert("Invalid email format");
          count++;
          document.getElementById("txtemail").focus();
          return false;
        }
        // Validate Phone
        if (phone === "") {
          alert("Phone is required");
          document.getElementById("txtphone").focus();
          return false;
        }

        if (!validatePhone(phone)) {
          alert("Invalid phone number format");
          document.getElementById("txtphone").focus();
          return false;
        }
        // Validate Company
        if (subject === "") {
          alert("Subject is required");
          // flag3 = false;
          count++;
          // console.log(flag3)
          document.getElementById("txtsubject").focus();
          return false;
        }

        // Validate Comments
        if (comments === "") {
          alert("Message is required");
          // flag3 = false;
          count++;
          // console.log(flag3)
          document.getElementById("txtmessage").focus();
          return false;
        }

        var temp = captachaValidation();
        console.log(temp);
        if (count > 0 || temp === false) {
          return false;
        } else {
          return true;
        }
      }

      // Email Validation Function
      function validateEmail(email) {
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
      }
      // Phone Validation Function
      function validatePhone(phone) {
        var phoneRegex = /^\d{10}$/; // Assumes 10 digit phone number
        return phoneRegex.test(phone);
      }
    </script>
    <script type="text/javascript">
      const urlParams = new URLSearchParams(window.location.search);
      if (urlParams.get("status") === "sent") {
        alert("Mail sent successfully.");
      }
      if (urlParams.get("status") === "notsent") {
        alert("Invalid captcha code");
      }
    </script>

    <!-- Resources -->
    <script src="https://cdn.amcharts.com/lib/5/index.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/map.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/geodata/worldLow.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>

    <!-- Chart code -->
    <script>
      am5.ready(function () {
        // Create root element
        // https://www.amcharts.com/docs/v5/getting-started/#Root_element
        var root = am5.Root.new("chartdiv");

        // Set themes
        // https://www.amcharts.com/docs/v5/concepts/themes/
        root.setThemes([am5themes_Animated.new(root)]);

        // Create the map chart
        // https://www.amcharts.com/docs/v5/charts/map-chart/
        var chart = root.container.children.push(
          am5map.MapChart.new(root, {
            panX: "rotateX",
            panY: "translateY",
            projection: am5map.geoMercator(),
          })
        );

        var zoomControl = chart.set(
          "zoomControl",
          am5map.ZoomControl.new(root, {})
        );
        zoomControl.homeButton.set("visible", true);

        // Create main polygon series for countries
        // https://www.amcharts.com/docs/v5/charts/map-chart/map-polygon-series/
        var polygonSeries = chart.series.push(
          am5map.MapPolygonSeries.new(root, {
            geoJSON: am5geodata_worldLow,
            exclude: ["AQ"],
          })
        );

        polygonSeries.mapPolygons.template.setAll({
          fill: am5.color(0xdadada),
        });

        // Create point series for markers
        // https://www.amcharts.com/docs/v5/charts/map-chart/map-point-series/
        var pointSeries = chart.series.push(
          am5map.ClusteredPointSeries.new(root, {})
        );

        // Set clustered bullet
        // https://www.amcharts.com/docs/v5/charts/map-chart/clustered-point-series/#Group_bullet
        pointSeries.set("clusteredBullet", function (root) {
          var container = am5.Container.new(root, {
            cursorOverStyle: "pointer",
          });

          var circle1 = container.children.push(
            am5.Circle.new(root, {
              radius: 8,
              tooltipY: 0,
              fill: am5.color(0xff8c00),
            })
          );

          var circle2 = container.children.push(
            am5.Circle.new(root, {
              radius: 12,
              fillOpacity: 0.3,
              tooltipY: 0,
              fill: am5.color(0xff8c00),
            })
          );

          var circle3 = container.children.push(
            am5.Circle.new(root, {
              radius: 16,
              fillOpacity: 0.3,
              tooltipY: 0,
              fill: am5.color(0xff8c00),
            })
          );

          var label = container.children.push(
            am5.Label.new(root, {
              centerX: am5.p50,
              centerY: am5.p50,
              fill: am5.color(0xffffff),
              populateText: true,
              fontSize: "8",
              text: "{value}",
            })
          );
          container.events.on("click", function (e) {
            pointSeries.zoomToCluster(e.target.dataItem);
          });

          return am5.Bullet.new(root, {
            sprite: container,
          });
        });

        // Create regular bullets
        pointSeries.bullets.push(function () {
          var circle = am5.Circle.new(root, {
            radius: 6,
            tooltipY: 0,
            fill: am5.color(0xff8c00),
            tooltipText: "{title}",
          });

          return am5.Bullet.new(root, {
            sprite: circle,
          });
        });

        // Set data
        var cities = [
          { title: "Rajkot (HQ)", latitude: 22.3053263, longitude: 70.8028377 },
          {
            title: "Ahmedabad (HQ)",
            latitude: 23.0215374,
            longitude: 72.5800568,
          },
          // { title: "Guatemala", latitude: 15.5855545, longitude: -90.345759 },
          // { title: "Honduras", latitude: 15.2572432, longitude: -86.0755145 },
          // { title: "Saudi Arabia", latitude: 25.6242618, longitude: 42.3528328 },
          // { title: "El Salvador", latitude: 13.8000382, longitude: -88.9140683 },
          // { title: "Nicaragua", latitude: 12.6090157, longitude: -85.2936911 },
          // { title: "Peru", latitude: -6.8699697, longitude: -75.0458515 },
          // { title: "Thailand", latitude: 14.8971921, longitude: 100.83273 },
          // { title: "Costa Rica", latitude: 10.2735633, longitude: -84.0739102 },
          // { title: "Ethiopia", latitude: 10.2116702, longitude: 38.6521203 },
          // { title: "Uganda", latitude: 1.5333554, longitude: 32.2166578 },
          // { title: "Panama", latitude: 8.559559, longitude: -81.1308434 },
          // { title: "Nepal", latitude: 28.3780464, longitude: 83.9999901 },
          // { title: "Colombia", latitude: 3.499981, longitude: -73.071628 },
          // { title: "Bolivia", latitude: -16.2902, longitude: -63.5887 },
          // { title: "Chile", latitude: -35.6751, longitude: -71.5430 },
          // new
          { title: "Ethiopia", latitude: 9.145, longitude: 40.4897 },
          { title: "Uganda", latitude: 1.3733, longitude: 32.2903 },
          { title: "Indonesia", latitude: -0.7893, longitude: 113.9213 },
          { title: "Ecuador", latitude: -1.8312, longitude: -78.1834 },
          { title: "Ivory Coast", latitude: 7.54, longitude: -5.5471 },
          { title: "Kenya", latitude: 1.2921, longitude: 36.8219 },
          { title: "Brazil", latitude: -14.235, longitude: -51.9253 },
          { title: "Peru", latitude: -9.19, longitude: -75.0152 },
          { title: "Colombia", latitude: 4.5709, longitude: -74.2973 },
          {
            title: "Dominican Republic",
            latitude: 18.7357,
            longitude: -70.1627,
          },
          { title: "Papua New Guinea", latitude: -6.315, longitude: 143.9555 },
          { title: "Tanzania", latitude: -6.369, longitude: 34.8888 },
          { title: "Mexico", latitude: 23.6345, longitude: -102.5528 },
          { title: "India", latitude: 20.5937, longitude: 78.9629 },
          { title: "Venezuela", latitude: 6.4238, longitude: -66.5897 },
          { title: "Cameroon", latitude: 3.848, longitude: 11.5021 },
          { title: "Guatemala", latitude: 15.7835, longitude: -90.2308 },
          { title: "Madagascar", latitude: -18.7669, longitude: 46.8691 },
          { title: "Nicaragua", latitude: 12.8654, longitude: -85.2072 },
          { title: "Panama", latitude: 8.538, longitude: -80.7821 },
          { title: "Vietnam", latitude: 14.0583, longitude: 108.2772 },
          { title: "Gabon", latitude: -0.8037, longitude: 11.6094 },
          { title: "Honduras", latitude: 15.2, longitude: -86.2419 },
          { title: "Costa Rica", latitude: 9.7489, longitude: -83.7534 },
          { title: "Nigeria", latitude: 9.082, longitude: 8.6753 },
          { title: "El Salvador", latitude: 13.7942, longitude: -88.8965 },
          { title: "Laos", latitude: 19.8563, longitude: 102.4955 },
          { title: "Ghana", latitude: 7.9465, longitude: -1.0232 },
          { title: "Thailand", latitude: 15.87, longitude: 100.9925 },
          { title: "Philippines", latitude: 12.8797, longitude: 121.774 },
          { title: "Bolivia", latitude: -16.2902, longitude: -63.5887 },
          { title: "Jamaica", latitude: 18.1096, longitude: -77.2975 },
          { title: "Paraguay", latitude: -23.4425, longitude: -58.4438 },
          { title: "Argentina", latitude: -38.4161, longitude: -63.6167 },
          { title: "Chile", latitude: -35.6751, longitude: -71.543 },
          { title: "Uruguay", latitude: -32.5228, longitude: -55.7658 },
          { title: "Nepal", latitude: 28.3949, longitude: 84.124 },
          { title: "Switzerland", latitude: 46.8182, longitude: 8.2275 },
          { title: "Germany", latitude: 51.1657, longitude: 10.4515 },
          { title: "USA", latitude: 37.0902, longitude: -95.7129 },
          { title: "France", latitude: 46.6034, longitude: 1.8883 },
          { title: "Italy", latitude: 41.8719, longitude: 12.5674 },
          { title: "Canada", latitude: 56.1304, longitude: -106.3468 },
          { title: "Netherlands", latitude: 52.1326, longitude: 5.2913 },
          { title: "Japan", latitude: 36.2048, longitude: 138.2529 },
          { title: "Spain", latitude: 40.4637, longitude: -3.7492 },
          { title: "UK", latitude: 55.3781, longitude: -3.436 },
          { title: "Malaysia", latitude: 4.2105, longitude: 101.9758 },
          { title: "Belgium", latitude: 50.8503, longitude: 4.3517 },
          { title: "Turkey", latitude: 38.9637, longitude: 35.2433 },
          { title: "Singapore", latitude: 1.3521, longitude: 103.8198 },
          { title: "South Korea", latitude: 35.9078, longitude: 127.7669 },
          { title: "Rwanda", latitude: -1.9403, longitude: 29.8739 },
          { title: "Timor-Leste", latitude: -8.8742, longitude: 125.7275 },
        ];

        for (var i = 0; i < cities.length; i++) {
          var city = cities[i];
          addCity(city.longitude, city.latitude, city.title);
        }

        function addCity(longitude, latitude, title) {
          pointSeries.data.push({
            geometry: { type: "Point", coordinates: [longitude, latitude] },
            title: title,
          });
        }

        // Make stuff animate on load
        chart.appear(1000, 100);
      }); // end am5.ready()
    </script>
  </body>
</html>
