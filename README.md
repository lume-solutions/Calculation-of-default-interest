<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

# Install the book store "local"

### Required

* PHPUnit 7.X
* GIT
* WAMP, MAMP, XAMP, Vagrant, Valet, Docker ....

___

#### Let's start

* Clone a repo in local folder
* Start your server (XAMP, WAMP, ...)

#### Open .env.example file in root
Set your DB configuration:

> DB_CONNECTION=mysql<br>
> DB_HOST=127.0.0.1<br>
> DB_PORT=3306<br>
> DB_DATABASE=laravel<br>
> DB_USERNAME=root<br>
> DB_PASSWORD=<br>


##### Save file to .env (!)

___

Create a database named the same like in .env => DB_DATABASE<br>
Add user permission to a database the same like in .env =>  DB_USERNAME | DB_PASSWORD

Download composer: https://getcomposer.org/download/
* Install composer

Run the following command on your terminal:

> composer install<br>
> php artisan migrate<br>
> php artisan db:sees<br>
> php artisan key:generate<br>
> php artisan serve<br>

#### Laravel development server started: <http://127.0.0.1:8000>

> Administrator login

* admin@book-store.si
* laravel

> Guest login

* frederic.parker@nolan.org
* laravel

> For API
* api token: ecd27b516a83f152142a391fe044e7a09bec306900074713879f887a8a38

> For API test:

* Run in root curl_test.php file on localhost (script is "GET" all book data)

> Modify for all other methods:

Uncomment POST data (change book data array[]) and CURL options CURLOPT_POSTFIELDS for insert or update the book)

> Possible routes for API:

* Route::get('book-store', 'BookController@index');<br>
* Route::get('book-store/{book}', 'BookController@show');<br>
* Route::post('book-store/store', 'BookController@store');  // curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");<br>
* Route::post('book-store/{book}', 'BookController@update'); // curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");<br>
* Route::delete('book-store/{book}', 'BookController@destroy'); // curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "DELETE");<br>



## License

The Laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).
