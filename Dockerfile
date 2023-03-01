# Vamos começar indicando qual imagem base vamos utilizar

FROM node:13-alpine

# Definir as variáveis de ambiente

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# Criando o diretório da aplicação dentro da imagem

RUN mkdir -p /home/app

# Copiar os contúdos da nossa pasta local para a imagem

COPY ./app /home/app

# Entrar no diretório de trabalho /home/app dentro da imagem

WORKDIR /home/app

# Instalar as dependências dentro do /app

RUN npm install

#Executar o comando de inicialização 

CMD ["node", "server.js"] 











