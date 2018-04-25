FROM arm64v8/busybox

RUN uname -a

RUN env | sort

CMD [ "/bin/sh" ]
