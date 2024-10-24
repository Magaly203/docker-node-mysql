# Utilizamos la imagen oficial de Node.js como base.
FROM node:lts

# Definimos el directorio de trabajo dentro del contenedor.
WORKDIR /app

# Copiamos los archivos package.json y package-lock.json para instalar dependencias.
COPY package*.json ./

# Instalamos las dependencias de Node.js.
RUN npm install

# Copiamos el código de la aplicación al contenedor.
COPY . .

# Exponemos el puerto 8080 donde se ejecutará la aplicación Node.js.
EXPOSE 8080

# Definimos el comando que se ejecutará cuando se inicie el contenedor.
CMD ["node", "server.js"]
