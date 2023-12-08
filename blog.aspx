<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

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
		<h1>Our Events</h1>

	</section>
<!-------Blog--------->
<section class="blog-content">
	<div class="blog-left">
		<img src="images/venue-1.jpg">
		<h2>Our Events for 2021</h2>
		<p>
			Event management is the application of project management to the creation and development of small and/or large-scale personal or corporate events such as festivals, conferences, ceremonies, weddings, formal parties, concerts, or conventions. It involves studying the brand, identifying its target audience, devising the event concept, and coordinating the technical aspects before actually launching the event.<br>
		</p>
		<p>The events industry now includes events of all sizes from the Olympics down to business breakfast meetings. Many industries, celebrities, charitable organizations, and interest groups hold events in order to market their label, build business relationships, raise money, or celebrate achievement.<br>
		</p>
		<p>
			The process of planning and coordinating the event is usually referred to as event planning and which can include budgeting, scheduling, site selection, acquiring necessary permits, coordinating transportation and parking, arranging for speakers or entertainers, arranging decor, event security, catering, coordinating with third-party vendors, and emergency plans. Each event is different in its nature so process of planning & execution of each event differs on basis of the type of event.<br>
		</p>
		<p>
			The event manager is the person who plans and executes the event, taking responsibility for the creative, technical, and logistical elements. This includes overall event design, brand building, marketing and communication strategy, audio-visual production, script writing, logistics, budgeting, negotiation, and client service.
		</p>
		<div class="comment-box">
			<h3>Leave a Comment</h3>
			<form class="comment-form">
				<input type="text" placeholder="Enter Name">
				<input type="email" placeholder="Enter Email">
				<textarea rows="5" placeholder="Your Comment"> </textarea>
				<button type="submit" class="hero-btn red-btn">POST COMMENT</button>
	</div>
	<div class="blog-right">
		<h3>Events We Conduct</h3>
		<div>
			<Span>Birthday</Span>
			<span>1</span>
		</div>
		<div>
			<Span>Baby Shower</Span>
			<span>2</span>
		</div>
		<div>
			<Span>Naming Ceremony</Span>
			<span>3</span>
		</div>
		<div>
			<Span>Wedding</Span>
			<span>4</span>
		</div>
		<div>
			<Span>Concerts</Span>
			<span>5</span>
		</div>
		<div>
			<Span>House Warming</Span>
			<span>6</span>
		</div>
		<div>
			<Span>Sangeeth</Span>
			<span>7</span>
		</div>
		<div>
			<Span>Haldi</Span>
			<span>8</span>
		</div>

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