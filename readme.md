

 >1. **Users** 
	* **id  [ Primary-Key ]**
	* fullName
	* username
	* email
	* password
##

>2. **Content**
	* **id  [ Primary-Key ]**
	* title (40)
	* websiteName (20)
	* **status  (11)[ Foreign-Key -> ( ContentStatus ) ]**
	* contentLink 
	* imgSrc
##

>3. **ContentStatus**
	* **status (11)  [ Primary-Key ]**
##

>4. **ContentGenra**
	* **genra (20) [ Primary-Key ]**
##

>5. **ContentSeason**
	* **id  [ Primary-Key ]**
	* **contentId [ Foreign-Key -> ( Content ) ]**
	* episode
	* season

========================================================

Views Queries

>1. **ViewContentAll**

`CREATE VIEW ViewContentAll AS SELECT C.* , group_concat(distinct CGM.genra separator ', ') AS genra 
FROM
Content AS C
JOIN 
ContentGenraMap AS CGM
ON CGM.contentId = C.id
GROUP BY C.id`

>2. **ViewContentPlaned**

`CREATE VIEW ViewContentPlaned AS SELECT C.* , 
group_concat(distinct CGM.genra separator ', ') AS genra 
FROM
Content AS C
JOIN 
ContentGenraMap AS CGM
ON CGM.contentId = C.id
GROUP BY C.id
where C.status = 'planed'`


>3. **ViewContentNow**

`CREATE VIEW ViewContentNow AS SELECT C.* , 
group_concat(distinct CGM.genra separator ', ') AS genra 
FROM
Content AS C
JOIN 
ContentGenraMap AS CGM
ON CGM.contentId = C.id
where C.status = 'now'
GROUP BY C.id`


>4. **ViewContentDone**

`CREATE VIEW ViewContentDone AS SELECT C.* , 
group_concat(distinct CGM.genra separator ', ') AS genra 
FROM
Content AS C
JOIN 
ContentGenraMap AS CGM
ON CGM.contentId = C.id
where C.status = 'done'
GROUP BY C.id`