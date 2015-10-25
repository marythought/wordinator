## WORDINATOR

I made this simple API as a class assignment to take in two words and return JSON results showing whether they are anagrams of each other. The usage directions below show how to do this with the Rails-API structure with no views.

## HOW TO USE WORDINATOR:

* rails s to serve
* navigate to `/anagrams/word_1&word_2`

(ex: http://localhost:3000/anagrams/foo&oof)

* returns JSON with words and result

{"word_1":"foo","word_2":"oof","anagram":true}

## TO-DOS:

* build out anagram method to take in more than 2 words
* user inputs a word, json results return all possible anagrams from a list of words
* more word functions
* add an html view with directions for how to use

## SOURCES:

* We reviewed this assignment in class and so I had guidance from Brook Riggio and Scott MacPherson. I also referenced the Rails-API documentation and initially explored a serializer before deciding not to go down that route. The input is a post request via html parameters that returns a JSON object on the "show" function.

* This [stackoverflow response](http://stackoverflow.com/questions/336716/how-to-test-json-result-from-ruby-on-rails-functional-tests) helped me figure out how to test the JSON content

