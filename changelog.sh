#!/bin/sh

docker run -it --rm -v "$(pwd)/docker/docker-cosmos/.github":/usr/local/src/your-app ferrarimarco/github-changelog-generator -u RyanHendricks -p docker-cosmos --token $GHTOKEN
docker run -it --rm -v "$(pwd)/docker/docker-irisnet/.github":/usr/local/src/your-app ferrarimarco/github-changelog-generator -u RyanHendricks -p docker-irisnet --token $GHTOKEN
docker run -it --rm -v "$(pwd)/docker/docker-kava/.github":/usr/local/src/your-app ferrarimarco/github-changelog-generator -u RyanHendricks -p docker-kava --token $GHTOKEN
docker run -it --rm -v "$(pwd)/docker/docker-terra/.github":/usr/local/src/your-app ferrarimarco/github-changelog-generator -u RyanHendricks -p docker-terra --token $GHTOKEN
docker run -it --rm -v "$(pwd)/docker/docker-regen/.github":/usr/local/src/your-app ferrarimarco/github-changelog-generator -u RyanHendricks -p docker-regen --token $GHTOKEN
docker run -it --rm -v "$(pwd)/docker/docker-cyberd/.github":/usr/local/src/your-app ferrarimarco/github-changelog-generator -u RyanHendricks -p docker-cyberd --token $GHTOKEN


