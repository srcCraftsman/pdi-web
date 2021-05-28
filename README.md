# Pentaho-server with User Console interface

## Supported tags and respective `Dockerfile` links

- [`latest`][dockerfile]

## Whats in the box

Just a pentaho-server with a tomcat-app as wrapper.

## How to use this image

To run PDIonoV server just start the container:

```bash
docker run -d --name pdi-server -p 8080:8080 tesslime/pdi-web
```

### Connect & Control

If the container is started like mentioned above, connect via one of these options:

- connect via HTTP: http://localhost:8080/, default user: Admin default password: password

[dockerfile]: https://github.com/TessTea/pdi-web/blob/main/Dockerfile
