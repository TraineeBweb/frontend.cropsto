import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import "./App.css";
import Blogs from "./Pages/Blogs";
import BlogsContent from "./Pages/BlogsContent";
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";

function App() {
  return (
    // basename="/dynamic"
    <Router basename="/dynamic">
      <Navbar />
      <Routes>
        <Route path="/" element={<Blogs />} />
        <Route path="/blogs/:blogId" element={<BlogsContent />} />
      </Routes>
      <Footer />
    </Router>
  );
}

export default App;
