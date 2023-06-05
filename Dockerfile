# Utilisez une image de base Ubuntu
FROM ubuntu:latest

# Mise à jour du système et installation des dépendances
RUN apt-get update && apt-get install -y \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers source dans le conteneur
COPY . /app

# Compilez le code source
#RUN g++ -o myapp main.cpp

# Commande par défaut pour exécuter l'application lors du démarrage du conteneur
#CMD ["./myapp"]