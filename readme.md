<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Thanks for visiting me, follow the steps to install my voting system

RUN THE FOLLOWING COMMANDS AS LISTED

1- git clone https://github.com/aalejandromr/systemTelusVoting.git

2- cd systemTelusVoting

3- query the script called system_voting_schema.sql in your mysql manager or console

4- Change your database credentials, DB_DATABASE = online_voting_site, DB_USERNAME = your_databaseUser, DB_PASSWORD = your_userPassword in .env.example

5- rename .env.example to .env

6- run the command, composer install

7- run the command, php artisan migrate

8- query the script called system_voting_data.sql

9- run the command, php artisan key:generate

10- run the command, php artisan serve
 to run the system

11- Enjoy the system :)

-------------------------------------------------------------------------------

SYSTEM REQUIREDMENTS AND OUTPUTS

1- You can request the webservice with this link http://127.0.0.1:8000/services the system must be running and the port must be 8000 otherwise you can change to the port where the system is running

2- The report to view the data in the applications is in the link "How votes goes?"

3- The entity diagram is https://github.com/aalejandromr/systemTelusVoting/blob/master/database/17015179_786570588158145_1388516740_o.png

4- The data base scripts are called system_voting_schema.sql and system_voting_data.sql and are located in the root system

5- The visitor count file will be created after your sign in, and you can see it in /public/visitors.txt