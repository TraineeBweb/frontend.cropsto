import React, { useEffect, useState } from "react";
import { getCategories } from "../functions/category";
import { getCategoryByParams, getBlogsCoverImage } from "../functions/blog";
import BlogsCover from "../components/BlogsCover";

const Blogs = () => {
  var host = import.meta.env.VITE_APP_BACKEND_HOST;

  const [categories, setCategories] = useState([]);
  const [category, setCategory] = useState("");
  const [blogs, setBlogs] = useState();
  const [active, setActive] = useState("");
  const [loadingBlogs, setLoadingBlogs] = useState(false); // New loading state

  useEffect(() => {
    (async () => {
      setCategories(await getCategories());
    })();
  }, []);
  useEffect(() => {
    (async () => {
      setLoadingBlogs(true); // Set loading to true before fetching
      var blg = await getCategoryByParams({ category });
      setBlogs(blg.data);
      setLoadingBlogs(false); // Set loading to false after fetching
    })();
  }, [category]);

  useEffect(() => {
    (async () => {
      setLoadingBlogs(true); // Set loading to true before fetching
      var blg = await getCategoryByParams();
      setBlogs(blg.data);
      setLoadingBlogs(false); // Set loading to false after fetching
    })();
  }, []);
  return (
    <>
      {/* /.Header */}
      <BlogsCover
        title="Our Blogs"
        breadcrumb={[
          { label: "Home", link: "https://cropsto.com/index.html" },
          { label: "Our Blogs", link: "#" },
        ]}
      />
      {/* /.Page-title */}
      {/* Main-content */}
      <div className="main-content page-index">
        {/* Section tab */}
        <section className="s-tab blogs-area s-blog-post blog-area">
          <div className="container">
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
                        {loadingBlogs ? ( // Conditionally render loader
                          <div className="col-lg-12 text-center my-5">
                            <div
                              className="spinner-border text-success p-4"
                              role="status"
                            >
                              <span className="visually-hidden">
                                Loading...
                              </span>
                            </div>
                          </div>
                        ) : (
                          <>
                            {blogs?.length === 0 ? (
                              <h2 className="text-green">
                                No blogs Available!
                              </h2>
                            ) : (
                              ""
                            )}
                            {blogs?.map((blog) => {
                              console.log(blog);
                              const date = new Date(blog.createdAt);
                              const dateString = date
                                .toLocaleDateString("en-GB", {
                                  day: "2-digit",
                                  month: "long",
                                  year: "numeric",
                                })
                                .replace(/ /g, "-");
                              return (
                                <div
                                  key={blog.slug}
                                  className="col-lg-4 col-12 col-md-4 mb-5"
                                >
                                  <article className="article-blog-item type-3 style-2 img-hover">
                                    <div className="image">
                                      <div className="video-wrap hover-item">
                                        <img
                                          className="lazyload"
                                          style={{
                                            height: "450px",
                                            width: "auto",
                                          }}
                                          data-src={`${host}/uploads/blogsBanner/${blog.banner[0]}`}
                                          src={`${host}/uploads/blogsBanner/${blog.banner[0]}`}
                                          alt=""
                                        />
                                      </div>
                                    </div>
                                    <div className="content">
                                      <h3 className="title fw-6">
                                        <p>{dateString}</p>
                                        <a href={`blogs/${blog.slug}`}>
                                          {blog.title}
                                        </a>
                                      </h3>
                                      <div className="bot">
                                        <a
                                          href={`blogs/${blog.slug}`}
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
                          </>
                        )}
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
        <div className="container">
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
