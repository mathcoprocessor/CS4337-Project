CS 4336.0U1 Semester Project
Professor: Dr. Greg Ozbirn
Authors:
Mark Butler
Parth Sutaria
**********************************
Web Pages : 
	index.xhtml					Main page.  Lists Movie theaters in Collin County by Zip Code (no zip code validation)
	TheaterMovieList.xhtml		Shows the movies and showtimes for the selected theater
	CheckoutMovie.xhtml			Allows you to select and purchase tickets for a selected showing (a showing is a specific time, movie, and theater)
	ReceiptPage.xhtml			Shows overview of purchase and allows navigation back to main page.

Source Packages: 
	bean:
		CheckoutBean.java		Keeps track of the selected showing through checkout, as well as storing purchase information.
		MainPageBean.java		Lists theaters in Collin County.
		TheaterBean.java		Keeps track of selected theater, as well as showing movie listings for the specified theater.
	ejb:
		TheaterEJB.java			Contains the business methods for finding the theater, movie, and showtime data depending on selections
	entity:
		Movie.java				Entity mapping for the movie table.  Also contains NamedQueries for use by EJB.
		Showing.java			Entity mapping for the showing join table.  Also contains NamedQueries for use by EJB.
		Theater.java			Entity mapping for the theater table.  Also contains NamedQueries for use by EJB.
		
Hello,

Welcome to our Theater system.  First off, the main page does not allow an 
entry of zipcode for theater lookup, but rather displays theaters and their 
zipcodes.  This was an oversight on our part, but I believe increased 
usability.  

Once a theater is selected, the system will list the movies showing at the
theater, as well as the showtimes for that movie at that theater.

When a showtime is selected, the user is taken to a page to purchase tickets
for the showing.  This page will allow the user to select the number of tickets
they wish to purchase, and enter their credit card details.  To make up for the
lack of zipcode validation, we've put a validator on the CCV value in addition
to the CreditCard value.

After the purchase, a receipt page is shown, showing the information about
their purchase (including order total).