FROM joengenduvel/docker-development-tools

ENV INTELLIJ_URL=https://download.jetbrains.com/idea/ideaIU-2016.3.tar.gz

RUN curl -L -o /tmp/intellij.tar.gz $INTELLIJ_URL \
 && tar -xzf /tmp/intellij.tar.gz -C /bin \
 && rm -rf /tmp/*

ADD ./intellij /bin

RUN chmod +x /bin/intellij

USER $USER

WORKDIR /home/dev

ENTRYPOINT exec intellij
