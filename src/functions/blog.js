import axios from "axios";
// import dotenv from "dotenv";
// dotenv.config();
// var host = process.env.REACT_APP_BACKEND_HOST;
var host = import.meta.env.VITE_APP_BACKEND_HOST;
export const getBlogById = async (id) => {
  var blog = await axios.get(`${host}/api/blogs/get-blog-slug/${id}`);
  // console.log(blog);
  return blog.data;
};
export const getCategoryByParams = async (filters) => {
  const params = new URLSearchParams();
  console.log(filters);
  params.set("searchInput", "");
  if (filters.category) {
    params.set("category", filters.category);
  }
  var blogs = await axios.get(
    `${host}/api/blogs/list-blogs-by-params?${params.toString()}`
  );
  // console.log();
  return blogs.data;
};

export const getBlogsCoverImage = async () => {
  var cover = await axios.get(`${host}/api/blog-cover/get-blog-cover`);
  return cover;
};
