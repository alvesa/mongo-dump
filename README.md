## Dump and Restore database Mongo

### Getting Started

- No arquivo **Dockerfile**, modificar os valores das variavéis de ambiente **DUMP_MONGO_USER** e **DUMP_MONGO_PASSWORD** com seu usuário e senha em **@user** e **@password**.

- Executar os commandos abaixo, escolhendo um **@containerName**:
``` docker
docker build --rm -t mongo-container .
docker run -dit --name @containerName -p 27017:27017 mongo-container
docker exec -i @containerName sh -c 'bash mongo.sh'
```
Alternativa para o comando **docker run**, modificando apenas **@user** e **@password**

``` docker
docker run -dit --name mongo-container -p 27017:27017 -e DUMP_MONGO_USER=@user -e DUMP_MONGO_PASSWORD=@password mongo-container
```