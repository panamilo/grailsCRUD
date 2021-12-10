# grailsCRUD
A simple aproach on the grails CRUD functionalities w/ postgresql (not using spring security plugin). The particular Project is about songs, artists and more. A user can log into the app and then he can browse around his songlist. Add/delete/edit songs etc.

Implemented Gorm vs PSQL functionality. Polishing some minor details.


This is the landing page. Also servers as the login page.

![image](https://user-images.githubusercontent.com/91724132/145575675-64c9ef8d-97ef-4ab5-9c22-743e58920147.png)

**THE USER CAN NOW CHOOSE WHETHER HE PREFERS GORM OR PLAINSQL FOR THE APP.*

This is the register page. 

![image](https://user-images.githubusercontent.com/91724132/145575709-9d62a240-0c9c-4eac-9303-18826e263498.png)


This is the main page the user get redirected to after he is validated. The user can see his current songlist on this page.

![image](https://user-images.githubusercontent.com/91724132/145575888-b7e4290b-f83e-46e3-ac1a-1dffaaa39759.png)

This is the page where the user can add a new song to his songlist.

![image](https://user-images.githubusercontent.com/91724132/145575918-e718e0d7-d15d-42b3-8179-fe238094be19.png)

This is the page where the user can view the details of a specific song on his songlist. Currently containing the base elements + genre. (more will be added in future versions)

![image](https://user-images.githubusercontent.com/91724132/145576030-05dd6412-8cc4-4cf1-8a73-35f27821e9e4.png)

The user similarly can browse to the songs edit page where he can edit the elements of a specific song he chose.

![image](https://user-images.githubusercontent.com/91724132/145576089-04b8ccde-f789-406d-9f3c-eab6e57c0e2f.png)

The user can drop a song from his songlist using this action. (Keep in mind the song is not actually dropped from the DB entirelly. )

![image](https://user-images.githubusercontent.com/91724132/145576157-96929766-60bf-41c3-b1f7-c2f776b6e606.png)
![image](https://user-images.githubusercontent.com/91724132/145576128-8069c07d-0fab-48d4-96e4-0fa454d08daf.png)


The user can check his recently deleted songs using this option

![image](https://user-images.githubusercontent.com/91724132/145576184-9c6fdbd0-9f63-408d-9417-458c3759fb90.png)

And last but not least the user can change his credentials through this page
![image](https://user-images.githubusercontent.com/91724132/145576240-3d6aed4b-4445-40c1-92b8-0507b5d0c761.png)
