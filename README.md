# Aplicación HolaMundo en Node.js
## Pasos manuales para instalar NodeJS
## Para instalar nvm usaremos el siguiente comando:
 ```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
 ```
 
 ```
$ export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
```

Podemos ver la versión que instalamos de nvm usando el comando(Si no funciona debes reabrir el terminal):
```
$ nvm -v
```

## Para instalar la ultima version de Node y npm escribimos en la consola lo siguiente:
```
$ nvm install node --lts
$ nvm install npm --lts
Instalar las dos a la vez:
$ nvm install --lts 
```

### El comando para ejecutar nuestra app:
```
$ npm start
```
### Si queremos pararla:
```
$ npm stop
```
