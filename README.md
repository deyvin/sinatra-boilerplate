# 🚀 Microsserviço Sinatra

Um microsserviço simples baseado em Sinatra com endpoint de verificação de saúde.

## 📋 Pré-requisitos

- Ruby 3.1.6
- Gem Bundler

## 🔧 Instalação

1. Clone o repositório
2. Instale as dependências:
   ```bash
   bundle install
   ```

## 🚀 Iniciando a Aplicação

### Método 1: Usando rackup (Recomendado)

```bash
rackup config.ru
```

### Método 2: Usando rackup com porta específica

```bash
rackup config.ru -p 4567
```

### Método 3: Usando bundle exec

```bash
bundle exec rackup config.ru
```

### Método 4: Usando Puma diretamente

```bash
bundle exec puma config.ru
```

## 📁 Estrutura da Aplicação

```
├── app/
│   ├── app.rb              # Classe principal da aplicação
│   ├── controllers/        # Classes de controle
│   │   └── health_controller.rb
│   ├── models/             # Classes de modelo (vazio)
│   └── views/              # Templates de visualização (vazio)
├── config/
│   ├── routes.rb           # Definições de rotas
│   └── environment.rb      # Configuração do ambiente
├── config.ru               # Arquivo de configuração do Rack
├── Gemfile                 # Dependências das gems
└── Dockerfile              # Configuração do Docker
```

## 🌐 Endpoints Disponíveis

- `GET /health` - Endpoint de verificação de saúde 💚
  - Retorna: `{"status":"ok","service":"my-microservice"}`

## 🧪 Testando a Aplicação

Depois que o servidor estiver rodando, você pode testar o endpoint de saúde:

```bash
curl http://localhost:9292/health
```

Resposta esperada:

```json
{ "status": "ok", "service": "my-microservice" }
```

## 🐳 Suporte ao Docker

A aplicação inclui suporte ao Docker. Para executar com Docker:

```bash
# Construir a imagem
docker build -t sinatra-app .

# Executar o container
docker run -p 4567:4567 sinatra-app
```

Ou use docker-compose:

```bash
docker-compose up
```

## 💻 Desenvolvimento

### Adicionando Novos Controllers

1. Crie um novo controller em `app/controllers/`:

   ```ruby
   require "sinatra/base"

   class SeuController < Sinatra::Base
     get "/sua-rota" do
       # Sua lógica aqui
     end
   end
   ```

2. Adicione-o ao `config/routes.rb`:

   ```ruby
   require_relative "../app/controllers/seu_controller"

   class Routes < Sinatra::Base
     use HealthController
     use SeuController  # Adicione esta linha
   end
   ```

### ⚙️ Configuração

A aplicação usa a seguinte estrutura de configuração:

- `config/environment.rb` - Carrega gems e configuração básica
- `config/routes.rb` - Define o stack de middleware de rotas
- `app/app.rb` - Classe principal da aplicação com configurações

## 🔧 Solução de Problemas

### Problemas Comuns

1. **Conflitos de gems** 💎: Execute `bundle update` para resolver conflitos de versão
2. **Porta já em uso** 🚪: Use uma porta diferente com a flag `-p`
3. **Gems ausentes** 📦: Execute `bundle install`

### 📝 Logs

Os logs da aplicação aparecerão no terminal onde você iniciou o servidor. Procure por:

- Mensagens de inicialização do servidor
- Logs de requisições
- Mensagens de erro

## 🤝 Contribuindo

1. Faça um fork do repositório
2. Crie uma branch para sua feature
3. Faça suas alterações
4. Teste suas alterações
5. Envie um pull request

## 📞 Suporte

Se você encontrar problemas, verifique:

- ✅ Se todas as gems estão instaladas
- ✅ Se não há conflitos de versão
- ✅ Se a porta não está sendo usada por outro processo
- ✅ Se o Ruby está na versão correta (3.1.6)

---

Feito com ❤️ usando Sinatra
