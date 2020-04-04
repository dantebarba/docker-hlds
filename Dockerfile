FROM dantebarba/steamcmd-rehlds

ADD hlds .

USER root

RUN chown -R steam:steam /home/steam/hlds

RUN chmod -R 755 /home/steam/hlds

USER steam

CMD ./hlds_run -game cstrike +port 27015 +maxplayers 12 +map de_dust2 +rcon_password rcon_p4ssw0rd +sv_lan 1 +exec server.cfg
