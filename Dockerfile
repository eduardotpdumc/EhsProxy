# Imagem base oficial do Caddy (com HTTPS automático)
FROM caddy:latest

# Atualiza pacotes e instala o editor nano
RUN apk update && apk add --no-cache nano

# Copia o arquivo de configuração do Caddy
COPY Caddyfile /etc/caddy/Caddyfile

# Define o diretório de trabalho padrão
WORKDIR /etc/caddy

# Expondo as portas HTTP e HTTPS
EXPOSE 80 443

# Volumes para armazenar certificados e configurações
VOLUME ["/data", "/config"]

# Comando padrão do container (executa o Caddy)
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
