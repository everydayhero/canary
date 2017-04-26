# canary
A simple Dockerised canary web app.

## Getting started



```shell
$> bundle
$> PORT=3000 ECHO=hello ruby ./server.rb
```

### Docker

```shell
$> docker run -d -p 3000:3000 -e PORT=3000 -e ECHO="Hello world" everydayhero/canary
```
