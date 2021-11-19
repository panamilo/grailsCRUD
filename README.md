# grailsCRUD
A simple aproach on the grails CRUD functionalities w/ postgresql (not using spring security plugin). The particular Project is about songs, artists and more. A user can log into the app and then he can browse around his songlist. Add/delete/edit songs etc.

Datatables functionality is on. GSP's and UI improvements made in this version. Also tested pagination and show number of entries 


NEXT TASK: **GORM vs PLAIN SQL** . Steadily building GORM features in the project

This is the landing page. Also serves as the login page.

![image](https://user-images.githubusercontent.com/91724132/139435307-839512e2-5d44-453b-ae80-8995babfa40e.png)

This is the register page. 

![image](https://user-images.githubusercontent.com/91724132/139430677-d3537daa-09c1-4095-8a3e-9c221914fdfc.png) 

This is the main page the user get redirected to after he is validated. The user can see his current songlist on this page. ( **You can see the comparison between before and after datatable**)


**BEFORE**
![image](https://user-images.githubusercontent.com/91724132/139430902-a4a7ca55-12a0-4e63-b662-f1fe70eefe48.png)

**AFTER**
![image](https://user-images.githubusercontent.com/91724132/141472139-868abff9-f145-45ed-8cab-3279cae5d717.png)


DataTables ordering on work (example shows ordering by song title ).

![image](https://user-images.githubusercontent.com/91724132/141472276-4b5eca81-c72d-4a7c-88df-37e89595dfd7.png)

DataTables search functionality example.

![image](https://user-images.githubusercontent.com/91724132/141472397-e60d7313-78a2-4dfb-a5e6-e554578c76fe.png)


This is the page where the user can add a new song to his songlist.

![image](https://user-images.githubusercontent.com/91724132/139430923-eec61d6e-43f5-41ea-8a3a-856e2f0a7d6d.png)

This is the page where the user can view the details of a specific song on his songlist. Currently containing the base elements + genre. (more will be added in future versions)

![image](https://user-images.githubusercontent.com/91724132/139432512-41a6cb7f-d9c6-454b-8d12-723899b4537a.png)


The user similarly can browse to the songs edit page where he can edit the elements of a specific song he chose.

![image](https://user-images.githubusercontent.com/91724132/139432569-e51f8013-93e4-4371-830d-dbe3655dbff7.png)

The user can drop a song from his songlist using this action. (Keep in mind the song is not actually dropped from the DB entirelly. )

![image](https://user-images.githubusercontent.com/91724132/141472907-47575686-fbda-4241-8c8a-356f914a5ba4.png)
![image](https://user-images.githubusercontent.com/91724132/142633522-2bb5d67b-740b-4d9c-8534-9dab171b2f4e.png)


The user can check his recently deleted songs using this option

![image](https://user-images.githubusercontent.com/91724132/139432704-aaace869-87de-46d1-a236-787a5301c432.png)

And last but not least the user can change his credentials through this page.

![image](https://user-images.githubusercontent.com/91724132/139432744-ce3f375b-9ab6-450c-81e0-bd6bc58ea9a6.png)
