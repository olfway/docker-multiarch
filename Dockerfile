FROM arm64v8/busybox

COPY qemu-*-static /usr/bin

RUN uname -a

RUN env | sort

CMD [ "/bin/sh" ]
