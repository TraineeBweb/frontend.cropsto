import React, { useState, useEffect } from "react";
import { getBlogsCoverImage } from "../functions/blog";
import grass from "../assets/grass.png";
const BlogsCover = ({ title, breadcrumb }) => {
  const [cover, setCover] = useState("");
  const host = import.meta.env.VITE_APP_BACKEND_HOST;

  useEffect(() => {
    getBlogsCoverImage().then((res) => {
      if (res?.data?.blogsCoverImage) {
        setCover(`${host}/uploads/blogCover/${res?.data?.blogsCoverImage}`);
      } else {
        setCover("");
      }
    });
  }, []);

  return (
    <div className="page-title page-about-us">
      <div className="rellax" data-rellax-speed={5}>
        <img src={cover} alt="" />
      </div>
      <div className="content-wrap">
        <div className="tf-container w-1290">
          <div className="row">
            <div className="col-lg-12">
              <div className="content">
                <h1 className="title">{title}</h1>
                <div className="icon-img">
                  <img src="./images/item/line-throw-title.png" alt="" />
                </div>
                <div className="breadcrumb">
                  {breadcrumb.map((item, index) => (
                    <React.Fragment key={index}>
                      <a href={item.link}>{item.label}</a>
                      {index < breadcrumb.length - 1 && (
                        <div className="icon">
                          <i className="icon-arrow-right1" />
                        </div>
                      )}
                    </React.Fragment>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="img-item item-2">
        <img src={grass} alt="" />
      </div>
    </div>
  );
};

export default BlogsCover;
