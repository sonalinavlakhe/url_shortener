# README

# System requirements
* Ruby version : 2.4.0
* Rails version: 5.2.0

We have designed the apis for short url generation

`POST /shortened_urls HTTP/1.1
Host: localhost:3000
Accept: jadsljfkljdasjfjaskld
Content-Type: application/json
Cache-Control: no-cache
Postman-Token: 97c250f4-58ab-762e-a9b0-e62d53b24b29`

Body:
`{
	"original_url" : "https://www.gmail.com"
}`


Response:
`{
    "generated_url": "http://localhost:3000/i0nh84rq"
}`

# You can get the original url by hitting the generated url on browser
http://localhost:3000/i0nh84rq
