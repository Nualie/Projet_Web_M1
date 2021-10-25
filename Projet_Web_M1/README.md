
<Install the website : >
Download the .zip file that contains all the code, and pull it out in a file on your desktop.
Open a terminal according the OS you use, and navigate to the new created file with the command : cd 'the road to the file'.
Install all the dependences of the project with the command 'npm install'.
Install pg and bcrypt with the command 'npm install pg bcrypt'.
Download postgreSQL if you don't have it, and open pgadmin.
Create a database by right clicking on “Databases” > Create… > database. Name your database '            ', and save.
By rightclicking on the database, Restore.
In Filename charge the file from the .zip, select the sql form and then find the file bdd.sql. Click on Restore, and the message « Successfully completed » should appears.

IF IT DOESN'T WORK : click on File > Preferences, then fo on Path > Binary paths, and in PostgreSQL Binary Path, add a new path by searching the roat to the PostgreSQL\14\bin file on your computer (normally on Program Files)

On the top of your file server/routes/api.js, find this code : 

const bcrypt = require('bcrypt')
const { Client } = require('pg')
const client = new Client({
user: 'postgres',
host: 'localhost',
password: 'yourpassword',
database: 'postgres'
})

Change the "password" with your own password for pgadmin.
Enter the command 'npm start', and then open your web browser and enter the following URL : 'http://localhost:3000


<Sources : >

All planets are generated with : https://deep-fold.itch.io/pixel-planet-generator