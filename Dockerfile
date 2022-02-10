# Jazkal's base image for analyzing php code - https://hub.docker.com/r/jakzal/phpqa
FROM jakzal/phpqa:latest

# Copy all files from current directory to the container
COPY . ./

# Execute run-analyzers.sh shell script
ENTRYPOINT ["/bin/bash", "run-analyzers.sh"]