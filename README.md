# Jenkins CI



## Fonts

https://www.youtube.com/watch?v=FX322RVNGj4

https://www.jenkins.io/doc/

https://www.jenkins.io/doc/book/using/using-agents/


## Desafio

Construir uma prova de conceito utilizando Jenkins + Maven e Java



## Solução Proposta

Configuração do Cluster Jenkins com 2 agentes utilizando Maven, de forma a realizar o ciclo completo de CI/CD 

Descrita em Docker-compose file



## Objetivos

Configurar 1 Master para controle do sistema

Configurar 1 Agente Jenkins + Maven

Configurar os estágios de Compile, Test e Deployment

Rodar código Java para todas as etapas

Escrever docker-compose com a configuração do todo



## Ferramentas

Jenkins, Pipeline Maven (Plugin), Java 8, Maven, Docker e Docker compose



## Como rodar

```bash
./jenkins.docker.sh
```

Entrar na console web

http://localhost:8080

Configuração default

Adicionar o Plugin "Pipeline Maven"



#### Adicionar novo pipeline

Adicionar novo Job

Novo Pipeline

JenkinsFile from SCM

https://github.com/fhgrings/Jenkins-Playground.git


Rodar o Job

