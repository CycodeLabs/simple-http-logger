# Simple Python Server Logger

A simple HTTP server that logs all GET and POST requests together with their parameters.
Using default port 8080. The solution was based on [this gist](https://gist.github.com/mdonkers/63e115cc0c79b4f6b8b3a6b797e485c7)


## How to Run

### Python

```bash
./server.py [<port>]
```

### Docker

```bash
sudo docker build -t server .
sudo docker run -it --rm -p <port>:8080 server
```

### Docker (from Docker Hub)

```bash
sudo docker run -it --rm -p 80:8080 cycodelabs/simple-http-logger
```

## Results

Run this on another session:

```bash
curl --data 'foo=bar' localhost:80
```

And watch the request on your server:

```bash
Host: localhost
User-Agent: curl/7.68.0
Accept: */*
Content-Length: 7
Content-Type: application/x-www-form-urlencoded

foo=bar

172.17.0.1 - - [01/Aug/2022 07:07:58] "POST / HTTP/1.1" 200 -
```

