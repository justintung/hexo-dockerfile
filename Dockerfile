FROM node:latest
MAINTAINER justin "276887367@qq.com"

RUN apt-get update && apt-get install -y git-core nodejs npm
#RUN echo 'registry = https://registry.npm.taobao.org' > ~/.npmrc
RUN npm install -g hexo-cli
WORKDIR /blog
RUN git clone https://github.com/justintung/hexo.git .
RUN npm install
EXPOSE 4000

#CMD ["hexo","server","-i","0.0.0.0"]
CMD ["hexo","server"]
