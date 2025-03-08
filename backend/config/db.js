require('dotenv').config();
const sql = require('mssql');

// Database Configuration
const config = {
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  server: process.env.DB_HOST,
  database: process.env.DB_NAME,
  port: parseInt(process.env.DB_PORT, 10) || 1433, // Default SQL Server port
  options: {
    encrypt: false, // Set to true if using Azure SQL
    trustServerCertificate: true,
  }
};

// Connect to Database
async function connectDB() {
  try {
    await sql.connect(config);
    console.log("✅ Database connected successfully!");
  } catch (err) {
    console.error("❌ Database connection failed:", err);
  }
}

connectDB();

module.exports = sql; // Exporting for queries
