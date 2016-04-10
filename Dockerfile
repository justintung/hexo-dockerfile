FROM nginx
MAINTAINER justin "276887367@qq.com"


RUN apt-get update && apt-get install -y curl git-core
RUN curl https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN nvm install 4
RUN npm install -g hexo-cli

WORKDIR /usr/local/nginx/html


CMD ["nginx"]
