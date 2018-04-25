FROM arm64v8/busybox

COPY qemu-arm-static /usr/bin/qemu-arm-static
COPY qemu-aarch64-static /usr/bin/qemu-aarch64-static

RUN /usr/bin/qemu-aarch64-static -version
RUN /usr/bin/qemu-arm-static -version

RUN uname -a

RUN env | sort

CMD [ "/bin/sh" ]
