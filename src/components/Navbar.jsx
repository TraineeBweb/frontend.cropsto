import React from "react";

const Navbar = () => {
  return (
    <>
      {/* /.Top-bar */}
      <div className="tf-topbar">
        <div className="tf-container w-1780">
          <div className="row">
            <div className="col-lg-12">
              <div className="topbar-inner">
                <div className="topbar-left">
                  <span className="fs-14 font-cropsto">Welcome to Cropsto</span>
                  <span className="fs-14 font-cropsto">
                    Sustainably Preserving Freshness
                  </span>
                </div>
                <div id="google_translate_element" />
                <div className="topbar-right">
                  <ul className="social-list">
                    <li className="item">
                      <a
                        href="https://www.facebook.com/CropstoPackaging"
                        target="_blank"
                      >
                        <i className="icon-facebook" />
                      </a>
                    </li>
                    <li className="item">
                      <a
                        href="https://www.linkedin.com/company/cropsto-pack"
                        target="_blank"
                      >
                        <i className="fa-brands fa-linkedin-in" />
                      </a>
                    </li>
                    <li className="item">
                      <a
                        href="https://www.instagram.com/cropsto/"
                        target="_blank"
                      >
                        <i className="icon-instagram2" />
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      {/* /.Top-bar */}
      {/* Header  */}
      <header className="header has-item-bot" id="header-main">
        <div className="tf-container w-1780">
          <div className="row">
            <div className="col-lg-12">
              <div className="header-inner">
                <div className="header-left">
                  <div className="logo-site">
                    <a href="https://www.cropsto.com/index.html">
                      <img src="/images/logo/logo.png" alt="" />
                    </a>
                  </div>
                </div>
                <div className="main-nav">
                  <ul className="nav-list">
                    <li className="item has-child ">
                      <a href="https://www.cropsto.com/index.html">Home </a>
                    </li>
                    <li className="item has-child ">
                      <a href="https://www.cropsto.com/about.html">About Us</a>
                    </li>
                    <li className="item has-child ">
                      <a href="https://www.cropsto.com/products.html">
                        Products
                      </a>
                    </li>
                    <li className="item has-child ">
                      <a href="javascript:void(0)">Sustainability</a>
                      <ul className="sub-nav">
                        <li>
                          <a href="https://www.cropsto.com/recycling.html">
                            <span>Recycling</span>
                          </a>
                        </li>
                        <li>
                          <a href="https://www.cropsto.com/initiatives.html">
                            <span>Initiatives</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li className="item has-child current-menu">
                      <a href="/">Blog</a>
                    </li>
                    <li className="item has-child">
                      <a href="https://www.cropsto.com/contact.aspx">
                        Contact Us
                      </a>
                    </li>
                  </ul>
                </div>
                <div className="header-right">
                  <a
                    href="https://www.cropsto.com/contact.aspx"
                    className="tf-btn gap-30"
                  >
                    <span className="text-style">Get In Touch!</span>
                    <div className="icon">
                      <i className="icon-arrow_right" />
                    </div>
                  </a>
                  <div className="mobile-button">
                    <span />
                  </div>
                </div>
              </div>
              <div className="mobile-nav-wrap">
                <div className="overlay-mobile-nav" />
                <div className="inner-mobile-nav overflow-y-auto">
                  <div className="top">
                    <div className="logo">
                      <a
                        href="https://www.cropsto.com/index.html"
                        rel="home"
                        className="main-logo"
                      >
                        <img
                          id="mobile-logo_header"
                          alt=""
                          src="/images/logo/logo-2.png"
                        />
                      </a>
                      <div className="mobile-nav-close">
                        <i className="icon-close" />
                      </div>
                    </div>
                    <nav id="mobile-main-nav" className="mobile-main-nav">
                      <ul id="menu-mobile-menu" className="menu">
                        <li className="menu-item menu-item-has-children-mobile ">
                          <a
                            className="item-menu-mobile"
                            href="https://www.cropsto.com/index.html"
                          >
                            Home
                          </a>
                        </li>
                        <li className="menu-item menu-item-has-children-mobile">
                          <a
                            className="item-menu-mobile"
                            href="https://www.cropsto.com/about.html"
                          >
                            About Us
                          </a>
                        </li>
                        <li className="menu-item menu-item-has-children-mobile ">
                          <a
                            className="item-menu-mobile"
                            href="https://www.cropsto.com/products.html"
                          >
                            Products
                          </a>
                        </li>
                        <li className="menu-item menu-item-has-children-mobile ">
                          <a
                            className="item-menu-mobile"
                            href="javascript:void(0)"
                          >
                            Sustainability
                            <i className="icon-arrow_down" />
                          </a>
                          <ul className="sub-menu-mobile">
                            <li className="menu-item">
                              <a href="https://www.cropsto.com/recycling.html">
                                Recycling
                              </a>
                            </li>
                            <li className="menu-item">
                              <a href="https://www.cropsto.com/initiatives.html">
                                Initiatives
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li className="menu-item menu-item-has-children-mobile">
                          <a className="item-menu-mobile current" href="/">
                            Blog
                          </a>
                        </li>
                        <li className="menu-item menu-item-has-children-mobile ">
                          <a
                            className="item-menu-mobile"
                            href="https://www.cropsto.com/contact.aspx"
                          >
                            Contact Us
                          </a>
                        </li>
                      </ul>
                    </nav>
                  </div>
                  <div className="bottom">
                    <div className="infor-list">
                      <ul>
                        <li>
                          <h5 className="title">Address:</h5>
                          <p>
                            B/h. Rajkamal Petrol Pump, Gondal road, Rajkot
                            -360004 (Gujarat) INDIA.
                          </p>
                        </li>
                        <li>
                          <h5 className="title">Phone:</h5>
                          <p>+91 98252 13146, +91 98252 13170</p>
                        </li>
                        <li>
                          <h5 className="title">Email:</h5>
                          <p>
                            {/*cropstopack@gmail.com,*/}
                            sales@Cropsto.in
                          </p>
                        </li>
                      </ul>
                    </div>
                    <div className="wg-social">
                      <ul className="list">
                        <li className="item">
                          <a
                            href="https://www.facebook.com/CropstoPackaging"
                            target="_blank"
                          >
                            <i className="icon-facebook1" />
                          </a>
                        </li>
                        <li className="item">
                          <a
                            href="https://www.instagram.com/cropsto/"
                            target="_blank"
                          >
                            <i className="icon-instagram2" />
                          </a>
                        </li>
                        <li className="item">
                          <a
                            href="https://www.linkedin.com/company/cropsto-pack"
                            target="_blank"
                          >
                            <i className="fa-brands fa-linkedin-in" />
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="fixed-header style-absolute">
          <div className="tf-container w-1780">
            <div className="row">
              <div className="col-lg-12">
                <div className="header-inner ">
                  <div className="header-left">
                    <div className="logo-site">
                      <a href="https://www.cropsto.com/index.html">
                        <img src="/images/logo/logo.png" alt="" />
                      </a>
                    </div>
                  </div>
                  <div className="main-nav">
                    <ul className="nav-list">
                      <li className="item has-child">
                        <a href="https://www.cropsto.com/index.html">Home </a>
                      </li>
                      <li className="item has-child ">
                        <a href="https://www.cropsto.com/about.html">
                          About Us
                        </a>
                      </li>
                      <li className="item has-child ">
                        <a href="https://www.cropsto.com/products.html">
                          Products
                        </a>
                      </li>
                      <li className="item has-child ">
                        <a href="javascript:void(0)">Sustainability</a>
                        <ul className="sub-nav">
                          <li>
                            <a href="https://www.cropsto.com/recycling.html">
                              <span>Recycling</span>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.cropsto.com/initiatives.html">
                              <span>Initiatives</span>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li className="item has-child current-menu">
                        <a href="/">Blog</a>
                      </li>
                      <li className="item has-child">
                        <a href="https://www.cropsto.com/contact.aspx">
                          Contact Us
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="header-right">
                    <a
                      href="https://www.cropsto.com/contact.aspx"
                      className="tf-btn gap-30"
                    >
                      <span className="text-style">Get In Touch!</span>
                      <div className="icon">
                        <i className="icon-arrow_right" />
                      </div>
                    </a>
                    <div className="mobile-button">
                      <span />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="header-item children">
            <img src="/images/item/page-title-top.png" alt="" />
          </div>
        </div>
        <div className="header-item">
          <img src="/images/item/page-title-top.png" alt="" />
        </div>
      </header>
      {/* /.Header */}
    </>
  );
};

export default Navbar;
