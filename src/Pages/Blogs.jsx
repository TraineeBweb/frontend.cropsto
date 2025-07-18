import React, { useEffect, useState } from "react";
import { getCategories } from "../functions/category";
import { getCategoryByParams } from "../functions/blog";

const Blogs = () => {
  var host = "http://localhost:8000";

  const [categories, setCategories] = useState([]);
  const [category, setCategory] = useState("");
  const [blogs, setBlogs] = useState([]);
  const [active, setActive] = useState("");
  useEffect(() => {
    (async () => {
      setCategories(await getCategories());
    })();
  }, []);
  useEffect(() => {
    (async () => {
      var blg = await getCategoryByParams({ category });
      setBlogs(blg.data);
    })();
  }, [category]);
  useEffect(() => {
    (async () => {
      var blg = await getCategoryByParams();
      setBlogs(blg.data);
    })();
  }, []);
  return (
    <>
      {/* /.Header */}
      {/* Page-title */}
      <div className="page-title page-about-us">
        <div className="rellax" data-rellax-speed={5}>
          <img src="images/new-home/breadcrumb.jpg" alt="" />
        </div>
        <div className="content-wrap">
          <div className="tf-container w-1290">
            <div className="row">
              <div className="col-lg-12">
                <div className="content">
                  <h1 className="title">Our Blogs</h1>
                  <div className="icon-img">
                    <img src="./images/item/line-throw-title.png" alt="" />
                  </div>
                  <div className="breadcrumb">
                    <a href="https://www.cropsto.com/index.html">Home</a>
                    <div className="icon">
                      <i className="icon-arrow-right1" />
                    </div>
                    <a href="javascript:void(0)"> Our Blogs</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="img-item item-2">
          <img src="images/item/grass.png" alt="" />
        </div>
      </div>
      {/* /.Page-title */}
      {/* Main-content */}
      <div className="main-content page-index">
        {/* Section tab */}
        <section className="s-tab blogs-area s-blog-post blog-area">
          <div className="tf-container">
            <div className="row">
              <div className="col-lg-12">
                <div className="wg-tabs style-2">
                  <div className="flex justify-center">
                    <ul className="menu-tab">
                      {categories?.map((cat) => {
                        return (
                          <li
                            className={`item ${
                              active === cat._id ? "active" : ""
                            }`}
                            key={cat._id}
                          >
                            <a
                              onClick={() => {
                                setActive(cat._id);
                                setCategory(cat._id);
                              }}
                              className="btn-tab"
                            >
                              {cat.category}
                            </a>
                          </li>
                        );
                      })}
                    </ul>
                  </div>
                  <div className="widget-content-tab">
                    <div className="widget-content-inner active">
                      <div className="row">
                        {blogs.length === 0 ? (
                          <h2 className="text-green">No blogs Available!</h2>
                        ) : (
                          ""
                        )}
                        {blogs.map((blog) => {
                          return (
                            <div
                              key={blog._id}
                              className="col-lg-4 col-12 col-md-4 mb-5"
                            >
                              <article className="article-blog-item type-3 style-2 img-hover">
                                <div className="image">
                                  <div className="video-wrap hover-item">
                                    <img
                                      className="lazyload"
                                      style={{ height: "450px", width: "auto" }}
                                      data-src={`${host}/uploads/blogsbanner/${blog.banner[0]}`}
                                      src={`${host}/uploads/blogsbanner/${blog.banner[0]}`}
                                      alt=""
                                    />
                                  </div>
                                </div>
                                <div className="content">
                                  <h3 className="title fw-6">
                                    <p>15 November, 2024</p>
                                    <a href="https://www.cropsto.com/blog-coffee-flavours.html">
                                      {blog.title}
                                    </a>
                                  </h3>
                                  <div className="bot">
                                    <a
                                      href={`/blogs/${blog._id}`}
                                      className="tf-btn-read blog-btn"
                                    >
                                      Read More
                                    </a>
                                  </div>
                                </div>
                              </article>
                            </div>
                          );
                        })}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        {/* /.Section tab */}
      </div>
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
      {/* /.Prograss */}
      {/* Javascript */}
      {/* /Javascript */}
    </>
  );
};

export default Blogs;
