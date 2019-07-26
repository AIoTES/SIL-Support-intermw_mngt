FROM docker:dind 

RUN mkdir /mngt
COPY script /mngt/script
RUN chmod +x /mngt/script/*.sh

CMD ["/mngt/script/configure.callback.sh"]
