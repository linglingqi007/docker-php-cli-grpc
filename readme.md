# php grpc Dockerfile

## use
```bash
git clone git@github.com:tiger-regit/docker-php-cli-grpc.git
cd docker-php-cli-grpc
docker image build -t ${your_iamge_name} .

# or you can use by docker image pull tigerregit/php-cli-grpc

docker container run --rm -v "${host_path}:${docker_path}" tigerregit/php-cli-grpc php ${your_php_srcipt}
```
