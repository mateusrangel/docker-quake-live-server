#!/bin/bash
gameport=27960
hostname=${hostname:-"simple quake live server"}
password=${password:-""}

bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${STEAMAPPDIR}" +login anonymous +app_update 349090 +quit 

bash "${STEAMAPPDIR}"/run_server_x86.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname "$hostname" \
+set g_password "$password"
