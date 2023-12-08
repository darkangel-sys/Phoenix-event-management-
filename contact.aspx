﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>


<!DOCTYPE>
<html>
<head>
	<meta name="Viewport" content = "with=device-width, initial-scale=1.0">
	<title> About Us</title>
	<link rel="stylesheet" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href=https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css>
</head>
<body>
	<section class ="sub-header">
		<nav>
			<a href="Website.html"><img src="images/logo2.png"></a>
			<div class="nav-links" id="navLinks">
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul>
					<li><a href="home.aspx">HOME</a></li>
					<li><a href="about.aspx">ABOUT</a></li>
					<li><a href="event.aspx">EVENTS</a></li>
					<li><a href="blog.aspx">BLOG</a></li>
					<li><a href="contact.aspx">CONTACT US</a></li>
                    <li><a href="login.aspx">LOGIN</a></li>
					</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>
		<h1>Contact Us</h1>

	</section>
<!-------Contact US--------->
<section class="location">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d497699.9973874144!2d77.35074421903857!3d12.95384772557775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1670c9b44e6d%3A0xf8dfc3e8517e4fe0!2sBengaluru%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1622902644784!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</section>

<section class="contact-us">
	<div class="row">
		<div class="contact-col">
			<div>
				<i class="fa fa-home"></i>
				<span>
					<h5>XYZ Road, ABC Building</h5>
					<p>Bangalore, Karnataka, India</p>
				</span>
			</div>
			<div class="contact-col">
			<div>
				<i class="fa fa-phone"></i>
				<span>
					<h5>+91 7760310557<br>+91 6361360407</h5>
					<p>Monday to Sunday, 10AM to 6PM</p>
				</span>
			</div>
		</div>
			<div class="contact-col">
			<div>
				<i class="fa fa-envelope-o"></i>
				<span>
					<h5>sherleygracia5043@gmail.com</h5>
					<p>Email Us your query</p>
				</span>
			</div>
		</div>
	</div>
	<div class="contact-col">
		<form action="">
			<input type="text" placeholder="Enter your name" required>
			<input type="email" placeholder="Enter Email Address" required>
			<input type="text" placeholder="Enter your event" required>
			<textarea rows="8" placeholder="Message" required></textarea>
			<button type="submit" class="hero-btn red-btn">Send Message</button>
		</form>
	</div>
</section>

<!----Footer--->
<section class="footer-1">
 <h4>About Us</h4>
                <p>“When I looked up at the stars, I saw us"<br>
                     "You were the stars and I was the dark sky behind you”<br>“Without dark sky you couldn’t see the stars”<br>“I knew I was useful” <br> he says “You’re essential”</p>
	        
		<div class="icons">
			<i class="fa fa-facebook"></i>
			<i class="fa fa-twitter"></i>
			<i class="fa fa-instagram"></i>
			<i class="fa fa-linkedin"></i>
			</div>
	</section>
<section class="footer">
        <div class="footer-content-container">
        	<p class="footer-title">Contact Us</p>
				<table class="footer-contact-info">
                    <tr>
                        <td><i class="fa fa-envelope"></i></td>
                        <td>sherleygracia5043@gmail.com</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><i class="fa fa-phone-square"></i></td>
                        <td>6361360407 <br> 7760310557</td>
                    </tr>
                    <tr>
                        <td><i class="fa fa-map-marker"></i></td>
                        <td>39,1st Main Road, <br> Dominic Layout, <br> Seegehalli, Bangalore-560049</td>
                    </tr>
                </table>
            </div>
            <div class="footer-border"></div>
                 	 <div class="footer-nav-container">
                <p class="footer-title">Useful Links</p>
                <div class="nav-links" id="navLinks">
				<ul>
					<li><a href="HomePage.html">HOME</a></li>
					<li><a href="About Us.html">ABOUT</a></li>
					<li><a href="Event.html">EVENTS</a></li>
					<li><a href="Blog.htl">BLOG</a></li>
					<li><a href="Contact.html">CONTACT</a></li>
				</ul>
                                    
                </nav>
            </div>
           </div>
</section>
	

<!-------JavaScript for toggle Menu-------->
	<script>
		var navLinks=document.getElementById("navLinks");
		function showMenu(){
			navLinks.style.right="0";
		}
		function hideMenu(){
			navLinks.style.right="-200px";
		}
	</script>
	</body>
</html>
