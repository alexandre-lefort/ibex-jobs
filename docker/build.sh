proxy="http://proxy.ensieta.ecole:8080"
docker build --rm -t job \
         --build-arg http_proxy="$proxy" \
         --build-arg https_proxy="$proxy" .


