FROM alpine:latest

MAINTAINER peron <per.junel@gmail.com>

RUN apk --no-cache add curl git nano tmux

WORKDIR /root/version-control/reflections

RUN curl -sL https://storage.googleapis.com/supplemental_media/udacityu/2997518619/lesson_1_reflection_prompts.txt >> lesson_1_reflection_prompts.txt

VOLUME /root/version-control

ENTRYPOINT ["/bin/sh"]
