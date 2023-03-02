## Impletação de um banco de dados para uma aplicação web de python

Para o database vamos utilizar uma imagem do mysql (https://hub.docker.com/_/mysql) na versão 5.7.23.

Para iniciar o banco dados na imagem precisamos copiar o script database.sql para o caminho /docker-entrypoint-initdb.d/ da nossa imagem.

O primeiro passo então é criar a imagem customizada que tenha instruções.

Então buildamos a imagem. 

A segunda etapa é criar a imegem customizada do nosso web app que rodará em cima de uma imagem base de python 3.9.

O app ficará dentro de uma pasta chama /app. Logo, precisamos criar essa pasta dentro da nossa imagem.

Precisamos também copiar os arquivos index.htlm, requirements.txt e server.py para dentro da pasta /app

Depois precisamos realizar a instação das depedências. O seguinte comando deve ser executado dentro da imagem:

```pip install -r /app/requirements.txt```

Vamos realizar um passo especial que é expor a porta 80. No dockerfile isso pode ser feito da segiunte forma:

```EXPOSE 80```

Agora, alteramos o nosso diretório de trabalho para a pasta /app

E passamos o comando de entrada ```python server.py```


docker run -d --name database --net network_example -e MYSQL_ROOT_PASSWORD=movie123 database_bootcamp

docker run -d --name webapp --net network_example -p 8080:80 webpp_bootcamp





