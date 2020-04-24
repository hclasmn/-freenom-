FROM alpine:latest  

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories && \
        apk update && \
        apk add git tzdata php php-json php-openssl && \
	git clone https://github.com/luolongfei/freenom.git && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	apk del tzdata git && \
	echo '00 09 * * * /usr/bin/php /freenom/run > /dev/null 2>&1'>>/var/spool/cron/crontabs/root && \
        rm -rf /var/cache/apk/*
RUN mkdir -p /var/log/cron \
 && touch /var/log/cron/cron.log
ENTRYPOINT ["/usr/sbin/crond","-f","-L","/var/log/cron/cron.log"]
