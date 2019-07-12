FROM docker:dind 

RUN mkdir /mngt
COPY script /mngt/script

CMD ["/mngt/script/configure.callback.sh"]