# Utilisation de l'image officielle Node.js
FROM node:14  

# Définir le répertoire de travail
WORKDIR /app  

# Copier les fichiers package.json et package-lock.json  
COPY package.json .  

# Installer les dépendances  
RUN npm install  

# Copier tout le contenu du projet  
COPY . .  

# Commande de lancement de l'application  
CMD ["node", "src/index.js"]
