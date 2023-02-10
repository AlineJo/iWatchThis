

 >1. **Users** 
	* **id  [ Primary-Key ]**
	* fullName
	* username
	* email
	* password
##

>2. **Content**
	* **id  [ Primary-Key ]**
	* title
	*  **category [ Foreign-Key -> ( ContentCategories ) ]**
	* websiteName
	* **status  [ Foreign-Key -> ( ContentStatus ) ]**
	* websiteLink
	* imgSrc
##

>3. **ContentStatus**
	* **status  [ Primary-Key ]**
##

>4. **ContentCategories**
	* **category  [ Primary-Key ]**
##

>5. **ContentSeason**
	* **id  [ Primary-Key ]**
	* **contentId [ Foreign-Key -> ( Content ) ]**
	* episodeCurrent
	* episodeCount
	* seasonCurrent
	* seasonCount
