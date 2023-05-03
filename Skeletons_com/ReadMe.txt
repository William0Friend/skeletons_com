AIzaSyB7A7fEyF4N-_8x0VdC9hU7ipzSGN8wH8Q
-<system.web>
		
		<authentication mode="Forms">
			<forms loginUrl="~/Account/Login" timeout="2880" />
		</authentication>
		
	</system.web>

	<location path="MyAccount.aspx">
		<system.web>
			<authorization>
				<deny users="?" />
			</authorization>
		</system.web>
	</location>
	<system.web>



	Due: 	Monday, May 1st 

Description:   Continue to modify and expand your E-commerce website.  In this final increment of the project, we will be adding new functionality (below) to the website.  The site you hand in for this project should be fully functional in terms of what was specified for in Projects 1-5.

1.	Create a secure page (MyAccount) that allows authorized users to review, edit, and update their account profiles.  Profile information should include:  user-ID, name, address, phone, and email address.  In order to access this page, users must login through a login control.   An account profile needs to be set up for at least one user.  
2.	Add a Google Maps page to show the location and contact info for your enterprise.
3.	It must be possible to navigate from one page to another (e.g., from a secure page to a non-secure page) using the Navigation menu.  Likewise, the Navigation bar must reflect the user’s login status (logged in vs. anonymous).
4.	Make use of Ajax on your Inventory page to ensure smooth page updates.


Caveats:
•	Use the ASP.NET Identity tool to set up the web site security and add authorized users (for the secure page).  Like your project #4 database, this database (*.MDF) must be in the App_Data directory of your website.  
•	Due to the complexity of the Inventory page, it may be a good idea to implement page states to ensure the proper controls are on or off.
•	For any form used, be sure to check the integrity of the form through any means necessary.
•	The final project will contain all the functionality previously developed for projects 1-4 that was not superseded by a later project. As such, it will be graded for the Project 5 specific features, as well as, its functionality and styling as a comprehensive site.  Be sure to correct all previously identified problems in this final submission.  You should have a README file that highlights all major items you have corrected (which you lost points for previously).
