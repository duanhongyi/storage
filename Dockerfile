FROM registry.drycc.cc/drycc/base:bullseye

ENV DRYCC_UID=1001 \
  DRYCC_GID=1001 \
  DRYCC_HOME_DIR=/data \
  JQ_VERSION="1.6" \
  TIKV_VERSION="6.1.0" \
  SEAWEEDFS_VERSION="3.14"

RUN groupadd drycc --gid ${DRYCC_GID} \
  && useradd drycc -u ${DRYCC_UID} -g ${DRYCC_GID} -s /bin/bash -m -d ${DRYCC_HOME_DIR} \
  && install-stack jq $JQ_VERSION \
  && install-stack tikv $TIKV_VERSION \
  && install-stack seaweedfs $SEAWEEDFS_VERSION \
  && rm -rf \
      /usr/share/doc \
      /usr/share/man \
      /usr/share/info \
      /usr/share/locale \
      /var/lib/apt/lists/* \
      /var/log/* \
      /var/cache/debconf/* \
      /etc/systemd \
      /lib/lsb \
      /lib/udev \
      /usr/lib/`echo $(uname -m)`-linux-gnu/gconv/IBM* \
      /usr/lib/`echo $(uname -m)`-linux-gnu/gconv/EBC* \
  && mkdir -p /usr/share/man/man{1..8}

USER ${DRYCC_UID}

COPY --chown=${DRYCC_UID}:${DRYCC_GID} rootfs/bin /bin
COPY --chown=${DRYCC_UID}:${DRYCC_GID} rootfs/etc /etc

ENTRYPOINT ["init-stack", "/bin/boot"]
