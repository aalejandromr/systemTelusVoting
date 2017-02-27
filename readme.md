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

8- query the script call system_voting_data.sql

9- run the command, php artisan key:generate

10- Enjoy the system :)