# vim: set background=dark:
# vim: set number:

#
#     J E N K I N S

# Image
SERVICE_NAME="jenkins"


echo "Gerando chaves SSH"

ssh-keygen -f ~/.ssh/jenkins_agent_key

echo "priv-key=$(cat ~/.ssh/jenkins_agent_key)" > .env
echo "pub-key=$(cat ~/.ssh/jenkins_agent_key.pub)" >> .env

sudo docker-compose build

sudo docker-compose up

echo "Verifying service ${SERVICE_NAME}"
echo "$(docker node ps $(docker node ls -q) -f name=${SERVICE_NAME} --filter desired-state=Running)"


VARS1="HOME=|USER=|MAIL=|LC_ALL=|LS_COLORS=|LANG="
VARS2="HOSTNAME=|PWD=|TERM=|SHLVL=|LANGUAGE=|_="
docker exec ssh-agent sh -c "env | egrep -v '^(${VARS})' >> /etc/environment"

echo "Configurar na console Jenkins a chave privada e o agent!"
