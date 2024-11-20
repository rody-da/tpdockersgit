# Utilise une image de base Python 3
FROM python:3.11.2-slim
# Définit le répertoire de travail
WORKDIR /app
# Copie les fichiers dans le conteneur
COPY app.py /app
COPY requirements.txt /app
# Installe les dépendances
RUN pip install -r requirements.txt
# Expose le port
EXPOSE 5000
# Commande pour lancer l'application
CMD ["python", "app.py"]
