FROM cm2network/steamcmd:root


ENV STEAMAPPID 349090
ENV STEAMAPP qlds
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"


COPY entry.sh "${HOMEDIR}/entry.sh"



RUN mkdir -p "${STEAMAPPDIR}" 
RUN chmod +x "${HOMEDIR}/entry.sh"
RUN chown -R "${USER}:${USER}" "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}"
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install zlib1g:i386 -y


USER ${USER}
WORKDIR ${HOMEDIR}

CMD ["bash", "entry.sh"]

EXPOSE 27960/udp 
