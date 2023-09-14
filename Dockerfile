# Imagem oficial do Python 3.8
FROM python:3.8

# Definir o diretório de trabalho no container
WORKDIR /usr/src/app

# Evita que o Python escreva arquivos .pyc, o que não é necessário em um ambiente de container.
ENV PYTHONDONTWRITEBYTECODE 1

# Desativa o buffer de saída padrão. Isso permite que logs sejam exibidos imediatamente no terminal em vez de serem armazenados em um buffer.
ENV PYTHONUNBUFFERED 1

# Atualizar pip
RUN pip install --upgrade pip

# Copiar o arquivo de requisitos e instalar as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .