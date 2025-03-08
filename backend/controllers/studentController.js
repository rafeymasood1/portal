// Import the database connection from the config file
const sql = require('../config/db');

/**
 * @desc Fetch all students from the database
 * @route GET /api/students
 */
async function getStudents(req, res) {
  try {
    // Execute SQL query to fetch all students
    const result = await sql.query("SELECT * FROM students");

    // Return JSON response with student data
    res.json(result.recordset);
  } catch (err) {
    console.error("Error fetching students:", err);
    res.status(500).json({ error: "Internal Server Error" });
  }
}

/**
 * @desc Fetch a single student by ID
 * @route GET /api/students/:id
 */
async function getStudentById(req, res) {
  const { id } = req.params; // Extract student ID from request parameters

  try {
    // Execute SQL query to fetch a student by ID
    const result = await sql.query(`SELECT * FROM students WHERE id = ${id}`);

    // If student not found, return 404 error
    if (result.recordset.length === 0) {
      return res.status(404).json({ error: "Student not found" });
    }

    // Return JSON response with student data
    res.json(result.recordset[0]);
  } catch (err) {
    console.error("Error fetching student:", err);
    res.status(500).json({ error: "Internal Server Error" });
  }
}

// Export controller functions for use in routes
module.exports = { getStudents, getStudentById };
