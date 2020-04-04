FROM dantebarba/steamcmd-hlds

ADD hlds .

CMD ./hlds_run -game cstrike +port 27015 +maxplayers 12 +map de_dust2 +rcon_password rcon_p4ssw0rd +sv_lan 1 +exec server.cfg

