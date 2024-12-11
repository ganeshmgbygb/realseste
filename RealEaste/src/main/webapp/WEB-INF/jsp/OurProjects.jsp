<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Projects</title>
<style>
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  background-color: #f4f4f4;
}

header {
  background-color: #333;
  color: white;
  padding: 20px 0;
}

header .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 20px;
}

header h1 {
  font-size: 2em;
}

nav ul {
  list-style-type: none;
}

nav ul li {
  display: inline;
  margin: 0 15px;
}

nav ul li a {
  color: white;
  text-decoration: none;
}

nav ul li a:hover {
  text-decoration: underline;
}

/* Main Section */
.projects {
  text-align: center;
  padding: 50px 20px;
}

.projects h2 {
  font-size: 2.5em;
  margin-bottom: 20px;
}

/* Project Cards */
.project-container {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  gap: 20px;
  padding: 20px;
}

.project-card {
  position: relative;
  width: 30%;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  background-color: white;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.project-card img {
  width: 100%;
  height: auto;
  transition: transform 0.3s ease;
}

.project-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.project-card:hover img {
  transform: scale(1.1);
}

.project-info {
  padding: 20px;
  text-align: center;
}

.project-info h3 {
  font-size: 1.6em;
  margin-bottom: 10px;
}

.project-info p {
  font-size: 1.1em;
  color: #555;
}

/* Button Styling */
.view-property-btn {
  display: inline-block;
  margin-top: 15px;
  padding: 10px 20px;
  background-color: #333;
  color: white;
  font-size: 1em;
  text-decoration: none;
  border-radius: 5px;
  text-align: center;
  transition: background-color 0.3s ease;
}

.view-property-btn:hover {
  background-color: #555; /* Change color on hover */
}

/* Map Container */
.map-container {
  padding: 20px;
  text-align: center;
}

footer {
  background-color: #333;
  color: white;
  text-align: center;
  padding: 10px 0;
}

footer p {
  font-size: 1em;
}

@media (max-width: 768px) {
  .project-container {
    flex-direction: column;
    align-items: center;
  }

.project-card {
    width: 80%;
  }
}

@media (max-width: 480px) {
  .project-card {
    width: 100%;
  }
}

.header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #555; 
            color: black;
            padding: 10px 20px;
        }

        .logo img {
            height: 50px;
            margin-right: 10px;
        }

        .nav-links {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            margin: 0 15px;
        }

        .nav-links li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .nav-links li a:hover {
            text-decoration: underline;
            color:black;
        }

</style>
</head>
<body>
 <div class="header">
       
        <div class="logo">
           <a href="#"> <img src="https://www.perfectbuilderschennai.com/assets/images/logo/PB--Logo.png" alt="Perfect Builders Logo"></a>
        </div>
        
        <ul class="nav-links">
            <li><a href="Index.jsp">Home</a></li>
            <li><a href="Index.jsp">About Us</a></li>
            <li><a href="OurProjects.jsp">Our Projects</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="login.jsp">Login/Registration</a></li>
        </ul>
    </div>
<main>
    <section class="projects">
      <h2>Our Latest Projects</h2>
      <div class="project-container">
        <div class="project-card">
          <img src="https://i.pinimg.com/736x/04/20/83/04208337b6a0c67a414bd747dfcb25f3.jpg" alt="Project 1">
          <div class="project-info">
            <h3>Modern Villa</h3>
            <p>Luxury villa in the heart of the city.</p>
            <!-- View Property Button -->
            <a href="villa.jsp" class="view-property-btn">View Property</a>
          </div>
          <!-- Location iframe for Modern Villa -->
          <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sSan%20Francisco%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
        </div>
        <div class="project-card">
          <img src="https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2013/12/10/0/HAWAH101H_Green-Cay-Home-103365_233764_s4x3.jpg.rend.hgtvcom.1280.720.suffix/1400983155148.jpeg" alt="Project 2">
          <div class="project-info">
            <h3>Beachfront Property</h3>
            <p>Stunning beachfront property with panoramic views.</p>
            <!-- View Property Button -->
            <a href="propertyDetails.html" class="view-property-btn">View Property</a>
          </div>
          <!-- Location iframe for Beachfront Property -->
          <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sSan%20Francisco%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
        </div>
        <div class="project-card">
          <img src="https://houssed.com/Assets/Files/Projects/3449/Project%20Image/7605ceeeacd1ea3f3ed6022a589a8639.webp" alt="Project 3">
          <div class="project-info">
            <h3>Urban Apartments</h3>
            <p>Modern apartments in a prime location.</p>
            <!-- View Property Button -->
            <a href="apprtment.jsp" class="view-property-btn">View Property</a>
          </div>
          <!-- Location iframe for Urban Apartments -->
          <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sSan%20Francisco%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
        </div>
        <!-- Add more project cards as needed -->
      </div>
    </section>
  </main>
</body>
</html>
