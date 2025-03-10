import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "/components/navbar";  // Import Navbar
import Home from "/pages/home";
import About from "/pages/about";
import Contact from "/pages/contact";

function App() {
  return (
    <Router>
      <Navbar />  {/* Navbar appears on all pages */}
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
        <Route path="/contact" element={<Contact />} />
      </Routes>
    </Router>
  );
}

export default App;
