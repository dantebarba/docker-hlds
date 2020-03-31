FROM cm2network/steamcmd

MAINTAINER dantebarba.alerts@gmail.com

USER root

RUN apt-get update

RUN apt-get -y install gdb

USER steam

RUN bash $HOME/steamcmd/steamcmd.sh +login anonymous +force_install_dir ../hlds +app_set_config 90 mod cstrike +app_update 90 validate +app_update 90 validate +app_update 90 validate +quit

WORKDIR "/home/steam/hlds"

CMD ./hlds_run -game cstrike -autoupdate +port 27015 +maxplayers 12 +map de_dust2 +rcon_password rcon_p4ssw0rd +sv_lan 1 +exec server.cfg

