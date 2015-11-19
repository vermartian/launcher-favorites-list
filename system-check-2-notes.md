## System Check Two Notes

### Learning Goals
* Generate a dynamic web page in response to a `GET` request.
* Persist information from a user submitted via a `POST` request.
* Implement code based on acceptance tests.

### Building a Favorites List App

Building a list keeping app with Sinatra with dynamic web pages and saves information to a file.

Our app should satisfy the following requirements:

* Visiting `GET /favorites` should display a list of our favorite things as well as a form for adding a new item to the list.
* Visiting `GET /` should redirect the user to `GET /favorites`.
* The "thing" listed must be in html list element.
* The form requires a favorite thing to be specified.
* The list of favorite things is read from the `favorites_list.csv` file which stores each item on a new line.
* The form submits to `POST /favorites` which saves the new item to the `favorites_list.csv` file.
* Submitting an empty form does not modify the `favorites_list.csv` file.
