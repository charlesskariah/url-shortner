
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
