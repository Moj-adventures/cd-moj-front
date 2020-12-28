# Imagem de Origem
FROM node:fermium-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /usr/app
# Instalando dependências da aplicação e armazenando em cache.
COPY package.json /usr/app/package.json
RUN npm install
# Copia e copia
COPY . .
# Expõe a porta
EXPOSE 3000
# start app
CMD ["npm", "start"]