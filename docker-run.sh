# build the image
docker build -t cashman .


# sudo chmod 666 /var/run/docker.sock

# run a new docker container named cashman
docker run --name cashman \
    -d -p 5000:5000 \
    cashman

# fetch incomes from the dockerized instance
curl http://localhost:5000/incomes/