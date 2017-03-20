# canary
A simple dockerised canary web app.

## Getting started

Make sure you have Bash and Netcat installed to run the following command.

```shell
$> PORT=3000 ECHO=hello ./serve
```

### Docker

```shell
$> docker run -d -p 3000:3000 -e PORT=3000 -e ECHO="Hello world" everydayhero/canary
```

