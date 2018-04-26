FROM olfway/qemu-user-static as qemu-user-static
FROM arm64v8/busybox

COPY --from qemu-user-static /qemu-arm-static /usr/bin/qemu-arm-static
COPY --from qemu-user-static /qemu-aarch64-static /usr/bin/qemu-aarch64-static

RUN /usr/bin/qemu-aarch64-static -version
RUN /usr/bin/qemu-arm-static -version

RUN uname -a

RUN env | sort

CMD [ "/bin/sh" ]
