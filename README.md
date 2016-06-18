[ ![Codeship Status for charlesskariah/url-shortner](https://codeship.com/projects/71a90000-17b9-0134-c8ca-2a776fb5d411/status?branch=master)](https://codeship.com/projects/158585)

This is a test application for shortening url's without using any gems in Ruby On Rails.

Also have complete test coverage as well using rspec.

Also you can find the number of clicks on this shortened url with this application dashboard.


## Service is hosted at http://shorteningurl.herokuapp.com/

Also we have exposed an api for testing the functionality


Api For shortening url

BASE_URL: http://shorteningurl.herokuapp.com

REQUEST TYPE : POST

REQUEST FORMAT : 'JSON(application/json)'

REQUEST URL : BASE_URL/links.json

Request body :

{
    "link" :
        {
          "outgoing_url" : "https://github.com"
        }
}

Request Response:

{
  "original_url": "https://github.com",
  "shortened_url": "shorteningurl.herokuapp.com/a53eb18aa5"
}
