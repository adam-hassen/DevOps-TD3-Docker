# Utilisez une image Node.js comme base
FROM node:18-alpine

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste du code de l'application
COPY app.js .

# Exposez le port
EXPOSE 3000

# Commande de démarrage
CMD ["node", "app.js"]
