<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Apartment Prosperity</title>
<style>
/* General Styles */
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
}

header {
  background-color: #333;
  color: white;
  padding: 20px;
  text-align: center;
}

h1 {
  font-size: 2.5em;
  margin: 0;
}

section {
  padding: 40px 20px;
}

.property-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  gap: 20px;
}

.property-card {
  background-color: white;
  width: 30%;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  overflow: hidden;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  position: relative;
}

.property-card img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.property-info {
  padding: 20px;
  text-align: center;
}

.property-info h3 {
  font-size: 1.6em;
  color: #333;
}

.property-info p {
  font-size: 1.1em;
  color: #555;
  margin-bottom: 20px;
}

.view-more-btn {
  padding: 10px 20px;
  background-color: #333;
  color: white;
  text-decoration: none;
  font-size: 1em;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.view-more-btn:hover {
  background-color: #555;
}

.property-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.contact-form {
  display: none;
  background-color: #f9f9f9;
  padding: 20px;
  border-top: 1px solid #ccc;
}

.contact-form input,
.contact-form textarea {
  width: 100%;
  padding: 10px;
  margin: 10px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.contact-form button {
  padding: 10px 20px;
  background-color: #333;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.contact-form button:hover {
  background-color: #555;
}

.map-container {
  width: 100%;
  height: 200px;
  margin: 10px 0;
}

iframe {
  width: 100%;
  height: 100%;
  border: none;
}
.view-more-btn {
  padding: 10px 20px;
  background-color: #333;
  color: white;
  text-decoration: none;
  font-size: 1em;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.view-more-btn:hover {
  background-color: #555;
}

/* Responsive Design */
@media (max-width: 768px) {
  .property-card {
    width: 45%;
  }
}

@media (max-width: 480px) {
  .property-card {
    width: 100%;
  }
}
</style>
</head>
<body>

<header>
  <h1>Apartment Prosperity</h1>
</header>

<section>
  <h2 style="text-align:center;">Featured Apartments</h2>
  <div class="property-container">
    <!-- Property Card 1 -->
    <div class="property-card" id="property1">
      <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/592018282.jpg?k=4a5f0702740c6d807927f9932cb4028b877adb5255624106f449f89bb10c93ca&o=&hp=1" alt="Apartment Image 1">
      <div class="property-info">
        <h3>Downtown Apartment</h3>
        <p>City: New York</p>
        <p>Address: 789 Urban Blvd, New York, NY</p>
        <p>Square Feet: 1500 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Downtown Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
    
    </div>

    <!-- Property Card 2 -->
    <div class="property-card" id="property2">
      <img src="data:image/jpeg;base64,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" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: Malibu</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1800 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
     
    </div>


     <div class="property-card" id="property2">
      <img src="https://via.placeholder.com/300x200" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: vijayawada</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1400 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
      <div class="contact-form" id="contact-form-property2">
        
    </div>
    </div>
    
     <div class="property-card" id="property2">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4sGvPJ0IRLhivLqFEJWIvxnnaKMY3Kq7-9g&s" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: Malibu</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1800 sq.ft.</p>
       <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
    </div>
     <div class="property-card" id="property2">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE8mzmCCFPL9B-E8rKCFw0nWyXaF62OeDuvg&s" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: Malibu</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1800 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
      
    </div>
     <div class="property-card" id="property2">
      <img src="https://content.jdmagicbox.com/v2/comp/hyderabad/j2/040pxx40.xx40.231005183542.f1j2/catalogue/6nhu7o06x84flzi-wadeepo1bq-250.jpg" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: Malibu</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1800 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
      
    </div>
     <div class="property-card" id="property2">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/2b/31/31/4e/caption.jpg" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: Malibu</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1800 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
      
    </div>
     <div class="property-card" id="property2">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRYtFJ3qPsZ7SpZJuZdhBCkwAsBJl6dSLShQ&s" alt="Apartment Image 2">
      <div class="property-info">
        <h3>Luxury Seaside Apartment</h3>
        <p>City: Malibu</p>
        <p>Address: 123 Ocean View, Malibu, CA</p>
        <p>Square Feet: 1800 sq.ft.</p>
        <a href="contact.jsp" class="view-more-btn">For More Information</a>
      </div>
      <!-- Location iframe for Luxury Seaside Apartment -->
      <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.213725540418!2d-122.4194152846811!3d37.77492917975804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085809c7e5e7ab1%3A0x8c6e4aee3cc89c43!2sMalibu%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1675393196672!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <!-- Contact Form -->
      
    </div>
    
  </div>
</section>

<script>
// Function to show contact form when button is clicked
function showContactForm(propertyId) {
  var contactForm = document.getElementById('contact-form-' + propertyId);
  contactForm.style.display = (contactForm.style.display === 'block') ? 'none' : 'block';
}
</script>

</body>
</html>