// Import Express framework
const express = require('express');

// Import student controllers
const { getStudents, getStudentById } = require('../controllers/studentController');

// Create a router object
const router = express.Router();

/**
 * @route GET /api/students
 * @desc Get all students from the database
 */
router.get('/', getStudents);

/**
 * @route GET /api/students/:id
 * @desc Get a single student by ID
 */
router.get('/:id', getStudentById);

// Export the router for use in server.js
module.exports = router;
