# Docker HLDS Server

HLDS (Half-Life Dedicated Server) es una aplicación que permite montar un servidor para Counter-Strike 1.6. 

Este repositorio incluye un servidor HLDS montado en una arquitectura Docker, lo que permite migrarlo a otros sistemas facilmente, como maquinas Linux, OSX o Windows. Solo se debe tener un minimo conocimiento de Docker.

## Que incluye

- Servidor HLDS preconfigurado con SteamCMD predescargado
- Dependencias para AMX-Mod-X
- Configuracion reHLDS (opcional)
- reHLDS Reunion (no-steam)

## Pre-requisitos

- Docker:
- docker-compose:

## How-to

1. git clone https://github.com/dantebarba/docker-hlds.git
2. docker-compose pull
3. docker-compose up -d
4. rcon password puede ser seteado con la variable de ambiente "RCON_PASSWORD" o mendiante un archivo .env ubicado en la raiz del proyecto






