#Etape 1: Utilise une image officielle Python
FROM python: 3.11.2-slim

#Etape 2: Définir le repertoire de travail dans le conteneur
WORKDIR /app

#Etape 3: Copier les fichiers de l'application dans le conteneur
COPY app.py/app
COPY requirement.txt/app

#Etape 4: Installer les dépendances
RUN pip install -r requirement

#Etape 5: Le port sur lequel l'application fonctionne
EXPOSE 5000

#Etape 6: Démarrer l'application
CMD ["python", "app.py"]
