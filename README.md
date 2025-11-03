# EhsProxy
O ehs-proxy tem como principal função atuar como um proxy reverso, centralizando e gerenciando o acesso externo aos sistemas internos da aplicação EHS (Environment, Health & Safety).

Ele serve como uma porta de entrada única para os domínios públicos da aplicação, redirecionando o tráfego de acordo com o domínio acessado:

apiehs.apexis.cloud → redireciona para o container ehs-api (porta 8080)

ehs.apexis.cloud → redireciona para o container ehs-smart (porta 80)

⚙️ Funções principais

Gerenciar domínios e roteamento interno

Permite que múltiplos sistemas (frontend, API, etc.) usem o mesmo IP público, diferenciando-se apenas pelo domínio.

Simplifica o acesso externo, evitando o uso de portas na URL (ex: :8080, :80).

Certificados SSL automáticos (HTTPS)

O proxy, baseado no Caddy, gera e renova automaticamente certificados TLS gratuitos via Let’s Encrypt.

Garante conexões seguras (HTTPS) para os usuários.

Segurança e isolamento

Impede o acesso direto aos containers internos (API e frontend).

Filtra e encaminha apenas o tráfego autorizado.

Facilidade de manutenção.

Permite editar e atualizar as configurações facilmente (via Caddyfile e nano).

Pode ser reiniciado ou ajustado sem impactar diretamente os outros containers.
