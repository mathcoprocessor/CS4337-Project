Web Pages : 
	index.xhtml					Main page.  Lists Movie theaters in Collin County by Zip Code (no zip code validation)
	TheaterMovieList.xhtml		Shows the movies and showtimes for the selected theater
	CheckoutMovie.xhtml			Allows you to select and purchase tickets for a selected showing (a showing is a specific time, movie, and theater)
	ReceiptPage.xhtml			Shows overview of purchase and allows navigation back to main page.

Source Packages: 
	bean:
		CheckoutBean.java		
		MainPageBean.java		
		TheaterBean.java		
	ejb:
		TheaterEJB.java			
	entity:
		Movie.java				
		Showing.java			
		Theater.java			