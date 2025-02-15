<h1>eChanneling Website - Java MVC with JSP</h1>

<h2>Overview</h2>
<p>This is an eChanneling (online appointment booking) website built using Java MVC architecture. The frontend is developed using JSP (JavaServer Pages), and the backend uses Java Servlets and a MySQL database. The application allows patients to book appointments with doctors, view available slots, and manage their appointments.</p>

<h2>Features</h2>
<ul>
  <li><strong>User Authentication:</strong> Patients and doctors can register and log in.</li>
  <li><strong>Appointment Booking:</strong> Patients can book appointments with available doctors.</li>
  <li><strong>Doctor Management:</strong> Admins can add, update, and delete doctors.</li>
  <li><strong>Appointment Management:</strong> Patients can view, update, or cancel their appointments.</li>
  <li><strong>Search Functionality:</strong> Patients can search for doctors by specialization.</li>
  <li><strong>Responsive Design:</strong> Built using JSP, CSS, and Bootstrap.</li>
</ul>

<h2>Technologies Used</h2>
<ul>
  <li><strong>Frontend:</strong> JSP, HTML, CSS, Bootstrap, JavaScript</li>
  <li><strong>Backend:</strong> Java Servlets, JDBC</li>
  <li><strong>Database:</strong> MySQL</li>
  <li><strong>Tools:</strong> Apache Tomcat, Maven, Git</li>
</ul>

<h2>Prerequisites</h2>
<p>Before running the project, ensure you have the following installed:</p>
<ul>
  <li>Java Development Kit (JDK 8 or later)</li>
  <li>Apache Tomcat (v9 or later)</li>
  <li>MySQL Server</li>
  <li>Maven (for dependency management)</li>
  <li>Git (optional)</li>
</ul>

<h2>Getting Started</h2>

<h3>1. Clone the Repository</h3>
<pre><code>git clone https://github.com/your-username/echanneling-website.git
cd echanneling-website</code></pre>

<h3>2. Set Up the Database</h3>
<ol>
  <li>Create a MySQL database named <code>echanneling_db</code>.</li>
  <li>Import the SQL file located in the <code>database/</code> folder to set up the required tables:
    <pre><code>mysql -u root -p echanneling_db &lt; database/echanneling_db.sql</code></pre>
  </li>
</ol>

<h3>3. Configure the Database Connection</h3>
<p>Update the database connection details in the <code>src/main/java/com/echanneling/util/DBUtil.java</code> file:</p>
<pre><code>public class DBUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/echanneling_db";
    private static final String USER = "root";
    private static final String PASSWORD = "your_password";
}
</code></pre>

<h3>4. Build the Project</h3>
<p>Navigate to the project root directory and run the following command to build the project using Maven:</p>
<pre><code>mvn clean install</code></pre>

<h3>5. Deploy the Application</h3>
<ol>
  <li>Copy the generated <code>.war</code> file from the <code>target/</code> folder to the <code>webapps/</code> directory of your Apache Tomcat server.</li>
  <li>Start the Tomcat server:
    <pre><code>catalina start</code></pre>
  </li>
  <li>Access the application in your browser at <code>http://localhost:8080/echanneling</code>.</li>
</ol>

<h2>Project Structure</h2>

<h3>Backend</h3>
<pre><code>src/main/java/com/echanneling/
├── controller/        # Servlets for handling requests
├── dao/               # Data Access Objects (DAO) for database operations
├── model/             # Java classes for entities (e.g., Patient, Doctor, Appointment)
├── util/              # Utility classes (e.g., DBUtil for database connection)
└── service/           # Business logic layer
</code></pre>

<h3>Frontend</h3>
<pre><code>src/main/webapp/
├── css/               # CSS files for styling
├── js/                # JavaScript files
├── jsp/               # JSP files for views (e.g., home.jsp, login.jsp)
├── WEB-INF/           # Configuration files (e.g., web.xml)
└── index.jsp          # Entry point for the application
</code></pre>

<h2>API Endpoints</h2>

<h3>Authentication</h3>
<ul>
  <li><strong>Register Patient:</strong> <code>POST /register</code></li>
  <li><strong>Login:</strong> <code>POST /login</code></li>
</ul>

<h3>Appointments</h3>
<ul>
  <li><strong>Book Appointment:</strong> <code>POST /appointments</code></li>
  <li><strong>View Appointments:</strong> <code>GET /appointments</code></li>
  <li><strong>Cancel Appointment:</strong> <code>DELETE /appointments/:id</code></li>
</ul>

<h3>Doctors</h3>
<ul>
  <li><strong>Add Doctor:</strong> <code>POST /doctors</code></li>
  <li><strong>View Doctors:</strong> <code>GET /doctors</code></li>
  <li><strong>Update Doctor:</strong> <code>PUT /doctors/:id</code></li>
  <li><strong>Delete Doctor:</strong> <code>DELETE /doctors/:id</code></li>
</ul>

<h2>Screenshots</h2>

<h2>Contributing</h2>
<p>We welcome contributions! Please follow these steps:</p>
<ol>
  <li>Fork the repository.</li>
  <li>Create a new branch (<code>git checkout -b feature/YourFeatureName</code>).</li>
  <li>Commit your changes (<code>git commit -m 'Add some feature'</code>).</li>
  <li>Push to the branch (<code>git push origin feature/YourFeatureName</code>).</li>
  <li>Open a pull request.</li>
</ol>

<h2>License</h2>
<p>This project is licensed under the MIT License. See the <a href="LICENSE">LICENSE</a> file for details.</p>

<h2>Support</h2>
<p>If you encounter any issues or have questions, please open an issue on GitHub or contact the maintainers.</p>

<p>Happy coding! 🚀</p>
