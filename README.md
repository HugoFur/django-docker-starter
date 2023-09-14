
## Template Docker para Projetos Django

Este template facilita a configuração rápida de projetos Django em um ambiente Dockerizado, proporcionando um ambiente de desenvolvimento rápido e fácil de configurar.

### Conteúdo
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Passos Iniciais](#passos-iniciais)
  - [Clone o Repositório](#clone-o-repositório)
  - [Navegue até o Diretório do Projeto](#navegue-até-o-diretório-do-projeto)
  - [Construa e Inicialize os Containers](#construa-e-inicialize-os-containers)
  - [Crie o Projeto Django](#crie-o-projeto-django)
  - [Configuração do Banco de Dados](#configuração-do-banco-de-dados)
  - [Aplique as Migrações](#aplique-as-migrações)
  - [Verifique a Instalação](#verifique-a-instalação)
- [Contribuição](#contribuição)
- [Links Úteis](#links-úteis)
- [Contato](#contato)

### Estrutura do Repositório

A estrutura básica do repositório está organizada da seguinte forma:

- [Dockerfile](https://github.com/HugoFur/django-docker-starter/blob/main/Dockerfile): Define a imagem Docker que será construída. Utiliza a imagem oficial do Python 3.8 e instala as dependências listadas no arquivo `requirements.txt`.

- [docker-compose.yml](https://github.com/HugoFur/django-docker-starter/blob/main/docker-compose.yml): Define os serviços `web` e `db`, configurando o ambiente Docker com Django e PostgreSQL.

- [manage.py](https://github.com/HugoFur/django-docker-starter/blob/main/manage.py): Script de utilidade administrativa do Django para gerenciar o projeto.

- myproject/
  - [asgi.py](https://github.com/HugoFur/django-docker-starter/blob/main/myproject/asgi.py): Configura o ASGI para suportar comunicações assíncronas.
  - [settings.py](https://github.com/HugoFur/django-docker-starter/blob/main/myproject/settings.py): Contém as configurações do projeto Django, incluindo configurações de banco de dados, aplicativos instalados, middleware, etc.
  - [urls.py](https://github.com/HugoFur/django-docker-starter/blob/main/myproject/urls.py): Define as configurações de URL para o projeto.
  - [wsgi.py](https://github.com/HugoFur/django-docker-starter/blob/main/myproject/wsgi.py): Configura o WSGI para comunicação com servidores web.

- [requirements.txt](https://github.com/HugoFur/django-docker-starter/blob/main/requirements.txt): Lista as dependências do Python necessárias para o projeto.



### Passos Iniciais

#### Clone o Repositório

Inicie clonando este repositório para ter seu próprio local de trabalho:

```sh
git clone https://github.com/HugoFur/django-docker-starter.git myproject
```

#### Navegue até o Diretório do Projeto

Vá para o diretório do projeto:

```sh
cd myproject
```

#### Construa e Inicialize os Containers

Agora, construa e inicialize os containers usando Docker Compose:

```sh
docker-compose up --build -d
```

#### Crie o Projeto Django

Crie um novo projeto Django usando o seguinte comando:

```sh 
docker-compose run web django-admin startproject myproject .
```

#### Configuração do Banco de Dados

Configure o PostgreSQL modificando as configurações adequadas no arquivo `myproject/settings.py`.

#### Aplique as Migrações

Aplique as migrações iniciais com o seguinte comando:

```sh
docker-compose run web python manage.py migrate
```

#### Verifique a Instalação

Abra o navegador e acesse [http://localhost:8000](http://localhost:8000) para verificar se a instalação foi bem-sucedida.

### Contribuição

Para contribuir com este projeto, por favor, faça um fork do repositório e crie um Pull Request com suas alterações.

### Links Úteis

- [Documentação do Django](https://docs.djangoproject.com/)
- [Documentação do Docker](https://docs.docker.com/)

### Contato

Para dúvidas ou sugestões, por favor, abra uma [issue](https://github.com/HugoFur/django-docker-starter/issues) no GitHub.

---

_Feel free to contribute and make this template better!_
