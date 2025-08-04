import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { getBlogById } from "../functions/blog";
import { UncontrolledCarousel } from "reactstrap";
const BlogsContent = () => {
  var host = "https://manage.cropsto.com";
  const { blogId } = useParams();
  const [blogData, setBlogData] = useState();
  useEffect(() => {
    (async () => {
      const blog = await getBlogById(blogId);
      const date = new Date(blog.createdAt);
      blog.createdAt = date
        .toLocaleDateString("en-GB", {
          day: "2-digit",
          month: "long",
          year: "numeric",
        })
        .replace(/ /g, "-");

      setBlogData(blog);
    })();
  }, []);

  return (
    <>
      {/* Page-title */}
      <div className="page-title page-about-us">
        <div className="rellax" data-rellax-speed={5}>
          <img src="/images/new-home/breadcrumb.jpg" alt="" />
        </div>
        <div className="content-wrap">
          <div className="tf-container w-1290">
            <div className="row">
              <div className="col-lg-12">
                <div className="content">
                  <h1 className="title">{blogData ? blogData?.title : ""}</h1>
                  <div className="icon-img">
                    <img src="/images/item/line-throw-title.png" />
                  </div>
                  <div className="breadcrumb">
                    <a href="https://cropsto.com/index.html">Home</a>
                    <div className="icon">
                      <i className="icon-arrow-right1" />
                    </div>
                    <a href="https://cropsto.com/dynamic">blogs</a>
                    <div className="icon">
                      <i className="icon-arrow-right1" />
                    </div>
                    <a href="javascript:void(0)">
                      {blogData ? blogData?.title : ""}
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="img-item item-2">
          <img src="/images/item/grass.png" alt="" />
        </div>
      </div>
      {/* /.Page-title */}
      {/* /.Main-content */}
      {!blogData ? (
        <h2 className="text-green d-flex justify-content-center py-5 my-5">
          Loading...
        </h2>
      ) : (
        ""
      )}
      {blogData && (
        <div className="main-content page-event-detail blog-detail">
          <div className="tf-container">
            <div className="row justify-center">
              <div className="col-lg-10 col-12">
                <div className="content">
                  <div className="row justify-content-center">
                    <div className="col-lg-10 col-12">
                      <div
                        id="carouselExample"
                        className="carousel slide carousel-fade rounded-5 overflow-hidden my-5"
                        data-bs-ride="carousel"
                        data-bs-interval="3000"
                        style={{
                          width: "auto",
                          height: "500px",
                          margin: "0 auto",
                        }}
                      >
                        {/* Carousel Inner */}
                        <div className="carousel-inner h-100">
                          {blogData?.banner?.map((img, index) => {
                            return (
                              <div
                                className={`carousel-item ${
                                  index === 0 ? "active" : ""
                                } h-100`}
                                key={img}
                              >
                                <img
                                  src={`${host}/uploads/blogsBanner/${img}`}
                                  className="d-block w-100 h-100 object-fit-cover"
                                  alt="Slide 1"
                                />
                              </div>
                            );
                          })}
                        </div>

                        <button
                          className="carousel-control-prev"
                          type="button"
                          data-bs-target="#carouselExample"
                          data-bs-slide="prev"
                        >
                          <span
                            className="carousel-control-prev-icon"
                            aria-hidden="true"
                          ></span>
                          <span className="visually-hidden">Previous</span>
                        </button>
                        <button
                          className="carousel-control-next"
                          type="button"
                          data-bs-target="#carouselExample"
                          data-bs-slide="next"
                        >
                          <span
                            className="carousel-control-next-icon"
                            aria-hidden="true"
                          ></span>
                          <span className="visually-hidden">Next</span>
                        </button>
                      </div>
                    </div>
                    <div className="col-lg-12 col-12">
                      <h6 className="text-light-green">{blogData.createdAt}</h6>
                      <h2 className="title fw-7 text-anime-style-1 text-dark-green">
                        {blogData?.title}
                      </h2>
                    </div>
                  </div>

                  <div
                    className="tour-infor contentCover"
                    dangerouslySetInnerHTML={{ __html: blogData?.content }}
                  ></div>
                  <a
                    href="https://cropsto.com/dynamic"
                    class="gobackBtn gap-30 mx-auto p-4 rounded-4"
                  >
                    <span class="text-style">Go Back</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
      {/* /.Main-content */}
      {/* Footer */}

      {/* /#Wapper */}
      {/* Open-search */}
      <div
        className="offcanvas offcanvas-top offcanvas-search"
        id="canvasSearch"
      >
        <button
          className="btn-close-search"
          type="button"
          data-bs-dismiss="offcanvas"
          aria-label="Close"
        >
          <i className="icon-close" />
        </button>
        <div className="tf-container">
          <div className="row">
            <div className="col-12">
              <div className="offcanvas-body">
                <form action="#" className="form-search-courses">
                  <div className="icon">
                    <i className="icon-keyboard" />
                  </div>
                  <fieldset>
                    <input
                      className=""
                      type="text"
                      placeholder="Search for anything"
                      name="text"
                      tabIndex={2}
                      defaultValue=""
                      aria-required="true"
                      required=""
                    />
                  </fieldset>
                  <div className="button-submit">
                    <button className="" type="submit">
                      <i className="icon-magnifying-glass" />
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      {/* /.Open-search */}
      {/* Prograss */}
      <div className="progress-wrap">
        <svg
          className="progress-circle svg-content"
          width="100%"
          height="100%"
          viewBox="-1 -1 102 102"
        >
          <path
            d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
            style={{
              transition: "stroke-dashoffset 10ms linear",
              strokeDasharray: "307.919, 307.919",
              strokeDashoffset: "307.919",
            }}
          ></path>
        </svg>
      </div>
    </>
  );
};

export default BlogsContent;
