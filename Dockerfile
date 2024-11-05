# FROM nginx:1.13.3-alpine
# COPY /nginx/default.conf /etc/nginx/conf.d/
# RUN rm -rf /usr/share/nginx/html/*
# COPY dist/shop /usr/share/nginx/html

FROM docker.io/library/nginx
# 把設置好的nginx配置文件提前放在源碼的目錄裡，COPY到IMAGE裡，覆蓋image裡原有的nginx配置文件
COPY ./nginx.conf /etc/nginx/
# 刪除IMAGE裡靜態文件目錄原本內容，並把編譯後的內容複製進去
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/shop /usr/share/nginx/html