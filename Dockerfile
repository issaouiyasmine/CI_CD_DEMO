FROM node:18-alpine

WORKDIR /CI_CD_Demo

# Copier seulement les dépendances d'abord (cache optimisé)
COPY package.json yarn.lock ./

RUN yarn install

# Copier le reste du projet
COPY . .

EXPOSE 3000

CMD ["node", "src/index.js"]