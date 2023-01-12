## Docker Build

```bash
docker build -t myapp:latest
```

## Docker Run

```bash
docker run -d --rm -p 8080:8080 myapp:latest
```

##### OR

```bash
docker run -d --rm -P myapp:latest
```

## How to display
If you use the first command, then the web address is: *localhost:8080*

If you used the second command then you will first need to
execute:

```bash
docker ps
```

and then find the assigned port number to the container.
