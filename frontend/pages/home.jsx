import { useState, useEffect } from "react";

function Home() {
  const [name, setName] = useState("");

  useEffect(() => {
    fetch("http://localhost:5000/api/name") // Fetch from backend
      .then((res) => res.json())
      .then((data) => setName(data.name)) // Store name in state
      .catch((err) => console.error("Error fetching name:", err));
  }, []);

  return (
    <div>
      <h1>Welcome, {name || "Guest"}!</h1>
    </div>
  );
}

export default Home;
