import axios from "axios";
var host = import.meta.env.VITE_APP_BACKEND_HOST;
export const getCategories = async () => {
  var categories = await axios.get(`${host}/api/category/list-categories`);
  return categories.data;
};
