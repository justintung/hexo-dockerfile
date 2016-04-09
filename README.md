[hexo](https://hexo.io) + [maupassant-hexo](https://github.com/tufu9441/maupassant-hexo.git)

step 1:   
```shell
git clone https://github.com/justintung/hexo-dockerfile.git
```
step 2:  
```shell
cd hexo-dockerfile
```
step 3:  
```shell
docker build -t hexo ./
```
step 4:  
```shell
docker run -itd -v <hexo source dir>:/usr/share/nginx/html/source -p 8082:80 --name hexo.itmotu.com hexo
```
step 5:  
```shell
docker exec -it hexo.itmotu.com hexo new "hello-hexo"
```
step 6:  
```shell
docker exec -it hexo.itmotu.com hexo generate
```
step 6:  
visit [http://ip:8082](http://ip:8082)