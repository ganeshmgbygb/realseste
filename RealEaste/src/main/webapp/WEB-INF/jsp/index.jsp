<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfect Builders</title>
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
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
.content {
    width: 80%;
    min-height: 400px;
    margin: 20px auto;
    padding: 40px;
     line-height: 1.8; 
    font-family: Arial, sans-serif;
    font-size: 16px;
    color: black;
    background-image: url('https://images.unsplash.com/photo-1571598301081-36702bef5e81?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D/1920x1080'); 
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    text-align: center;
    position: relative; 
    overflow: hidden; 
    font-size: 24px; 
}

.content h1, .content p {
    transform: translateY(100%); 
    transition: transform 0.6s ease-in-out, opacity 0.6s ease-in-out; 
    opacity: 0; 
}

.content p {
font-size:24px;
}
.content:hover h1, .content:hover p {
    transform: translateY(0); 
    opacity: 1; 
}
.content.scroll-in {
    opacity: 1; 
    transform: translateY(0); 
}

#Section {
    display: flex; 
    justify-content: space-between; 
    align-items: center; 
    padding: 20px; 
    background-color: rgba(0, 0, 0, 0.05); 
    border-radius: 10px; 
    width: 85%; 
    margin: 20px auto; 
    gap: 20px; 
    transition: all 0.3s ease-in-out; 
}

.about {
    display: flex; 
    justify-content: space-between; 
    align-items: center; 
    width: 100%; 
}

.about-content {
    flex: 1; 
    font-family: Arial, sans-serif;
    color: #333; 
    transform: translateY(-100%); 
    transition: transform 0.6s ease-in-out, opacity 0.6s ease-in-out; 
    opacity: 0; 
}

.about-content h1 {
    font-size: 28px;
    margin-bottom: 15px;
    position: relative; 
    top: 0; 
    left: 0;
    background-color: transparent; 
    z-index: 10;
    padding: 0; 
    transition: none; 
}

.about-content p {
    font-size: 16px;
    line-height: 1.8;
    margin-bottom: 10px;
}

.about:hover .about-content {
    transform: translateY(0); 
    opacity: 1; 
}

.about-image {
    flex: 1; 
    text-align: center;
}

.about-image img {
    max-width: 100%; 
    height: auto; 
    border-radius: 10px; 
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

@media (max-width: 768px) {
    #Section {
        flex-direction: column; 
        text-align: center
    }

    .about-image {
        margin-top: 20px; 
    }
}

 .image-container {
            margin: 20px auto;
            padding: 20px;
            max-width: 1200px;
        }

        .image-container h3 {
            font-size: 28px;
            margin-bottom: 30px;
            text-align: center; 
            color: #333;
        }

        .image-row {
            display: flex;
            justify-content: center;
            gap: 20px; 
            flex-wrap: wrap; 
        }

        .image-box {
            width: 300px;
            height: 200px;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .image-box img {
            width: 100%;
            height: 100%;
            object-fit: cover; 
            transition: transform 0.3s ease;
        }
        .image-box:hover img {
         transform: scale(1.1); 
         }
        @media (max-width: 768px) {
            .image-box {
                width: 100%; 
                height: auto; 
            }
        }

.footer {
    display: flex; 
    justify-content: center; 
    align-items: center; 
    text-align: center; 
    background-color: #333; 
    color: white; 
    padding: 40px 20px; 
    font-family: Arial, sans-serif;
    font-size: 14px; 
    border-top: 2px solid #555; 
    flex-wrap: wrap; 

}

.footer-left,
.footer-right {
    width: 100%; 
    text-align: center; 
}

.footer-links {
    list-style: none; 
    padding: 0; 
    margin: 10px 0; 
    display: flex; 
    justify-content: center; 
    gap: 15px; 
}

.footer-links li {
    margin: 0; 
}

.footer-links a {
    color: #00aced; 
    text-decoration: none; 
}

.footer-links a:hover {
    color: #fff; 
    text-decoration: underline; 
}

.footer-right {
    display: flex; 
    justify-content: center; 
    gap: 10px; 
    align-items: center; 
    margin-top: 20px; 
}

.social-icon {
    color: #00aced; 
    font-size: 20px; 
    margin-left: 10px; 
    text-decoration: none; 
}

.social-icon:hover {
    color: #fff; 
    transform: scale(1.1); 
    transition: color 0.3s ease, transform 0.3s ease;
}

@media (max-width: 768px) {
    .footer {
        flex-direction: column; 
        align-items: center; 
        text-align: center; 
    }

    .footer-left,
    .footer-right {
        width: 100%; 
    }

    .footer-links {
        justify-content: center; 
    }
}

.image-container .h3{
 text-aline:center;
}

    </style>
</head>
<body>
    <div class="header">
       
        <div class="logo">
           <a href="#"> <img src="https://www.perfectbuilderschennai.com/assets/images/logo/PB--Logo.png" alt="Perfect Builders Logo"></a>
        </div>
        
        <ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#Section">About Us</a></li>
            <li><a href="OurProjects.jsp">Our Projects</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="login.jsp">Login/Registration</a></li>
        </ul>
    </div>
    <div class="content">
     <span>Perfect Builders</span>
        <h1>Welcome to Perfect Builders</h1>
       
        <p>
            We are the forefront of professional real estate services.
        </p>
    </div>
    <div id="Section">
    <div class="about">
        <div class="about-content">
            <h1>About Perfect Builders</h1>
            <p>
                Perfect Builders is a leading construction company specializing in creating modern, sustainable, and luxurious homes.
                With a commitment to quality, innovation, and customer satisfaction, we bring your dream projects to life.
            </p>
            <p>
                Our team of experts combines creative designs, cutting-edge technology, and eco-friendly practices to ensure that every project
                meets the highest standards of excellence. We aim to build not just structures, but lasting relationships with our clients.
            </p>
        </div>
        <div class="about-image">
            <img src="https://www.shutterstock.com/shutterstock/photos/2481925549/display_1500/stock-photo-bulding-development-with-black-cloth-over-it-hiding-it-in-secret-thumbnail-2481925549.jpg" 
                 alt="Perfect Builders">
        </div>
    </div>
</div>

        
<div class="image-container">
    <h3>Take A Tour</h3>
    <div class="image-row">
    <p> Here is a visual representation of a modern 2 BHK apartment layout. Let me elaborate on the features of each room:
    Bedrooms (2):

Master Bedroom: Spacious with a large bed, side tables, a wardrobe, and an attached bathroom for privacy.
Secondary Bedroom: Equally well-furnished with a bed, storage units, and a simple, clean design.
Living Room:

Comfortable seating arrangement with sofas, a coffee table, and a TV unit. This is the central space for relaxation and entertainment.
Dining Area:

Positioned near the kitchen, it includes a dining table and chairs for four people, enhancing accessibility.
Kitchen:

A modular design with ample storage cabinets, a sleek countertop, and necessary appliances like a stove and refrigerator.
Bathrooms (2):

One attached to the master bedroom, the other common for guests, both with modern fixtures and tiling.
Balcony:

A cozy outdoor space with seating and potted plants for relaxation or small gatherings.
Windows and Lighting:

Large windows provide natural light, making the apartment feel airy and vibrant.
If you'd like further customization or additional details, let me know!</p>
        <div class="image-box">
            <img src="https://www.shutterstock.com/shutterstock/photos/797259073/display_1500/stock-photo-floor-plan-of-a-house-top-view-d-illustration-open-concept-living-apartment-layout-797259073.jpg" alt="Zinc">
        </div>
        <div class="image-box">
            <img src="https://www.shutterstock.com/image-illustration/floor-plan-house-top-view-260nw-797259076.jpg" alt="Zika">
        </div>
    </div>
</div>

<footer class="footer">
    <div class="footer-left">
        
        <ul class="footer-links">
            <li><a href="https://policies.google.com/terms?hl=en-IN&fg=1">Terms & Conditions</a></li>
            <li><a href="https://policies.google.com/privacy?hl=en-IN&fg=1">Privacy Policy</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
        <p>&copy; 2024 Perfect Builders. All rights reserved.</p>
    </div>
    <div class="footer-right">
        <p>Follow us:</p>
        <a href="https://facebook.com" target="_blank" class="social-icon">
            <i class="fab fa-facebook"></i>
        </a>
        <a href="https://twitter.com" target="_blank" class="social-icon">
            <i class="fab fa-twitter"></i>
        </a>
        <a href="https://instagram.com" target="_blank" class="social-icon">
            <i class="fab fa-instagram"></i>
        </a>
        <a href="https://linkedin.com" target="_blank" class="social-icon">
            <i class="fab fa-linkedin"></i>
        </a>
        
    </div>
</footer>


</body>
</html>
