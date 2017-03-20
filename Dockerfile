FROM joengenduvel/docker-development-tools

RUN apk add --no-cache libsecret

ENV INTELLIJ_URL=https://download-cf.jetbrains.com/idea/ideaIU-2016.3.5-no-jdk.tar.gz

RUN curl -L -o /tmp/intellij.tar.gz $INTELLIJ_URL \
 && tar -xzf /tmp/intellij.tar.gz -C /bin \
 && rm -rf /tmp/*

ADD ./intellij /bin

RUN chmod +x /bin/intellij

USER $USER

WORKDIR /home/$USER

ENTRYPOINT exec intellij
