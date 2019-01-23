ARG RVM_RUBY_VERSIONS="2.2.6"
FROM msati/docker-rvm
USER ${RVM_USER}
ENV RUBY=2.2.6

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
RUN bash -c 'source $HOME/.nvm/nvm.sh \
    && nvm install 10'
