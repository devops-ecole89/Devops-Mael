FROM python

# Set the working directory to /home/ubuntu.
# Every command after this will be executed in this directory.
WORKDIR /home/ubuntu

# Install SSH
RUN apt update

# Install python3
RUN apt install -y python3-full python3-pip python3-dev  build-essential libssl-dev libffi-dev python3-setuptools python3-venv

# Install Flask
RUN pip install --no-cache-dir flask

# Open port 22 to allow SSH into the container
EXPOSE 5000

# Copier les fichiers de l'application dans le conteneur
COPY flaskApp/ .

CMD ["python3", "myproject.py"]

