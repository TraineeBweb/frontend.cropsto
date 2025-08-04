import axios from "axios";
var host = "https://manage.cropsto.com";
export const getCategories = async () => {
  var categories = await axios.get(`${host}/api/category/list-categories`);
  return categories.data;
};
