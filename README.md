# Aplicación HolaMundo en Node.js

## Para instalar nvm usaremos el siguiente comando:
 ```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
 ```
 
 ```
$ export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
```

Podemos ver la versión que instalamos de nvm usando el comando:
```
$ nvm -v
```

## Para instalar la ultima version de Node y npm escribimos en la consola lo siguiente:
```
$ nvm install node --lts
$ nvm install npm --lts
$ nvm install --lts 
  (este último comando instala node y npm a la vez)
```

### El comando para ejecutar nuestra app:
```
$ npm start
```
### Si queremos pararla:
```
$ npm stop
```
