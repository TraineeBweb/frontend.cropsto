import axios from "axios";
var host = "http://localhost:8000";
export const getCategories = async () => {
  var categories = await axios.get(`${host}/api/category/list-categories`);
  return categories.data;
};
