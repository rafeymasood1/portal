require('dotenv').config({ path: '.env' });
const express = require('express');
const cors = require('cors');
const sql = require('./config/db');  // Import your database connection file

// Import routes.
const studentRoutes = require('./routes/studentRoutes');  // Import student routes


const app = express();
app.use(cors());
app.use(express.json());

// Define API routes
app.use('/api/students', studentRoutes); // Student-related routes



const PORT = process.env.PORT || 5000;

// Example route
// app.get('/', (req, res) => {
//   res.send('API is running...');
// });


// API Route to Get a Name from Database
app.get("/api/name", async (req, res) => {
  try {
    const result = await sql.query`SELECT name FROM Students WHERE student_id = 2`; // Give column an alias
    if (result.recordset.length > 0) {
      res.json({ name: result.recordset[0].name }); // Now works!
    } else {
      res.json({ name: "No Name Found" });
    }
  } catch (err) {
    console.error("❌ Error executing query:", err);
    res.status(500).json({ error: "Database query failed" });
  }
});




app.listen(PORT, () => {
  console.log(`🚀 Server running on http://localhost:${PORT}`);
});
