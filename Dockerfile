FROM dantebarba/steamcmd-rehlds-amx

ADD hlds .

USER root

RUN chown -R steam:steam .

RUN chmod -R 755 .

USER steam

CMD ./hlds_run -game cstrike +port 27015 +maxplayers 12 +map de_dust2 +rcon_password rcon_p4ssw0rd +sv_lan 1 +exec server.cfg
