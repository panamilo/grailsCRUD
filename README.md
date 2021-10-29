# grailsCRUD
A simple aproach on the grails CRUD functionalities w/ postgresql (not using spring security plugin). The particular Project is about songs, artists and more. A user can log into the app and then he can browse around his songlist. Add/delete/edit songs etc.


Currently working on the Search fields functionality and converting the main table to Datatable. Also the credentials section is still under work.


This is the landing page. Also servers as the login page.

![image](https://user-images.githubusercontent.com/91724132/139430584-3a600afd-d8e0-4f38-a1b2-85f39361e9a8.png) 

This is the register page. 

![image](https://user-images.githubusercontent.com/91724132/139430677-d3537daa-09c1-4095-8a3e-9c221914fdfc.png) 

This is the main page the user get redirected to after he is validated. The user can see his current songlist on this page.

![image](https://user-images.githubusercontent.com/91724132/139430902-a4a7ca55-12a0-4e63-b662-f1fe70eefe48.png)

This is the page where the user can add a new song to his songlist.

![image](https://user-images.githubusercontent.com/91724132/139430923-eec61d6e-43f5-41ea-8a3a-856e2f0a7d6d.png)

This is the page where the user can view the details of a specific song on his songlist. Currently containing the base elements + genre. (more will be added in future versions)

![image](https://user-images.githubusercontent.com/91724132/139430981-2d9ad5ed-05ef-4d33-9632-5f327475334f.png)
![image](https://user-images.githubusercontent.com/91724132/139432512-41a6cb7f-d9c6-454b-8d12-723899b4537a.png)


The user similarly can browse to the songs edit page where he can edit the elements of a specific song he chose.

![image](https://user-images.githubusercontent.com/91724132/139432569-e51f8013-93e4-4371-830d-dbe3655dbff7.png)

The user can drop a song from his songlist using this action. (Keep in mind the song is not actually dropped from the DB entirelly. )

![image](https://user-images.githubusercontent.com/91724132/139432605-9922127b-0c13-43be-8c65-980cd77f57a7.png)

The user can check his recently deleted songs using this option

![image](https://user-images.githubusercontent.com/91724132/139432704-aaace869-87de-46d1-a236-787a5301c432.png)

And last but not least the user can change his credentials(currently setting up the password change) through this page

![image](https://user-images.githubusercontent.com/91724132/139432744-ce3f375b-9ab6-450c-81e0-bd6bc58ea9a6.png)
