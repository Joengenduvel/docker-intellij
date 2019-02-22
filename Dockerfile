FROM joengenduvel/docker-development-tools

RUN apk add --no-cache libsecret

ENV INTELLIJ_URL=https://download-cf.jetbrains.com/idea/ideaIU-2018.3.4.tar.gz

ADD ./intellij /bin

RUN curl -L -o /tmp/intellij.tar.gz $INTELLIJ_URL \
 && tar -xzf /tmp/intellij.tar.gz -C /bin \
 && rm -rf /tmp/* \
 && chmod +x /bin/intellij \
 && chown -R dev:developers /bin/idea*

USER $USER

WORKDIR /home/$USER

ENTRYPOINT exec intellij
