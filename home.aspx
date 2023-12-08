<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
<!DOCTYPE>
<html>
<head>
	<meta name="Viewport" content = "with=device-width, initial-scale=1.0">
	<title> Event Management</title>
	<link rel="stylesheet" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href=https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css>
</head>
<body>
	<section class ="header">
		<nav>
			<a href="HomePage.aspx"><img src="images/logo2.png"></a>
			<div class="nav-links" id="navLinks">
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul>
					<li><a href="home.aspx">HOME</a></li>
					<li><a href="about.aspx">ABOUT</a></li>
					<li><a href="userhome.aspx">EVENTS</a></li>
					<li><a href="blog.aspx">BLOG</a></li>
					<li><a href="contact.aspx">CONTACT</a></li>
                    <li><a href="login.aspx">LOGIN</a></li>
					</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>
		<div class="text-box">
			<h1>Phoenix Event Management</h1>
			<p>“Desire is the key to motivation, but it’s determination and commitment to an unrelenting pursuit of your goal -- a commitment to excellence -- that will enable you to attain the success you seek.” <br>-Mario Andretti</p>
			<a href"" class="hero-btn">Visit us to Know more</a>
		</div>
	</section>

<!----Events---->
<section class="events">
	<h1>Events </h1>
	<p>“Productivity is never an accident. It is always the result of a commitment to excellence, intelligent planning, and focused effort.”</p>
	<div class="row">
		<div class="events-col">
			<h3>Birthday</h3>
			<p>A birthday is the anniversary of the birth of a person, or figuratively of an institution. Birthdays of people are celebrated in numerous cultures, often with birthday gifts, birthday cards, a birthday party, or a rite of passage.</p>
		</div>
		
		<div class="events-col">
			<h3>Wedding</h3>
			<p>A wedding is a ceremony where two people are united in marriage. ... Most wedding ceremonies involve an exchange of marriage vows by a couple, presentation of a gift (offering, rings, symbolic item, flowers, money, dress), and a public proclamation of marriage by an authority figure or celebrant.</p>
		</div>
		
		<div class="events-col">
			<h3>Naming Ceremony</h3>
			<p>A naming ceremony is a stage at which a person or persons is officially assigned a name. The methods of the practice differ over cultures and religions. The timing at which a name is assigned can vary from some days after birth to several months or many years.</p>
		</div>
	</div>
</section>
<!-----Venues---->
<section class="venue">
	<h1>Venues We Conduct Events</h1>
	<p>“So much of difference between a triumph and a flop is determined by choice of venue.”</p>
	<div class="row">
		<div class="venue-col">
		<img src="images/birthday.jpg">
		<div class="layer">
			<h3>Birthday</h3>
		</div>
	</div>
		<div class="venue-col">
		<img src="images/venue-8.jpg">
		<div class="layer">
			<h3>Wedding</h3>
		</div>
	</div>
	<div class="venue-col">
		<img src="images/venue-5.jpg">
		<div class="layer">
			<h3>Naming Cermony</h3>
		</div>
	</div>
</div>
</section>
<!----Testimonials------>
<section class="testimonials">
	<h1>What our Clients Says</h1>
	<p>I Can't Change the direction of the wind,But i can adjust my sails to always reach my destination</p>
	<div class="row">
		<div class="testimonials-col">
           <div>
           	<p>
           		"You and your team did an outstanding job making the Annual celebration so spectacular - through all the digging, sorting, problem-solving, and filling-in-the-blanks, you make it all come together into one very memorable Burlington weekend. Not to mention the sunshine - we knew you were good, but that's really good. Our sincerest gratitude for taking on this very special project with such enthusiasm, energy and keen attention to detail. We are lucky to have such a strong partner in the team at Delaney! Thanks Again!"
​				<h3>Katherine Giacobbe & Ryan Daley</h3>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-o"></i>
			</p>
			</div>
		</div>
	<div class="testimonials-col">
           <div>
           	<p>
           		"A big thank you to you and your entire staff on your fantastic work. You have a top notch operation. The Better Buildings by Design Conference could not achieve its success without."
			<h3>Art Sousa</h3>
			<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
           	</p>
           </div>
		</div>
	</div>
	
</section>



<!----Call to Action--->
<section class="cta">
	<h1>Register for Various Events</h1>
	<p>“Never look back unless you are planning on going that way.” </p>
		<a href=""class="hero-btn">CONTACT US</a>
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
	 <div class="footer-border"></div>
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
				<ul><li><a href="HomePage.html">HOME</a></li>
					<li><a href="About Us.html">ABOUT</a></li>
					<li><a href="Event.html">EVENTS</a></li>
					<li><a href="Blog.html">BLOG</a></li>
					<li><a href="Contact.html">CONTACT</a></li>
				</ul>
                   <div class="footer-border"></div>
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