# Decide App

### Build
`docker build -t name:tag .`

### Run Foreground
`docker run -i -t -p 9090:9090 name:tag`

### Run Background
`docker run -d -p 9090:9090 name:tag`

### Test
`curl localhost:9090`
