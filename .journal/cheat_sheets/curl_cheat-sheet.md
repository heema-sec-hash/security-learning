* GET request			curl http://httpbin.org/get
* POST request			curl -X POST http://httpbin.org/post -d "data=value"
* POST with JSON		curl -X POST -H "Content-Type: application/json" -d '{"key":"value"}' http://httpbin.org/post
* Add headers			curl -H "Authorization: Bearer token" http://httpbin.org/get
* Follow redirects		curl -L http://httpbin.org/redirect/1
* Show headers only		curl -I http://httpbin.org/get
* Save output to file		curl http://httpbin.org/get -o response.json
* Show response headers	curl -v http://httpbin.org/get

