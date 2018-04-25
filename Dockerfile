FROM arm64v8/busybox

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN uname -a

RUN env | sort

CMD [ "/bin/sh" ]
