# Use an existing base image
FROM mcr.microsoft.com/devcontainers/universal:2

# Update package lists using apt-get
RUN apt-get update && apt-get install -y \
    apt-transport-https ca-certificates gnupg curl gnupg software-properties-common wget

RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates gnupg software-properties-common wget
RUN wget -qO - https://apt.kitware.com/keys/kitware-archive-latest.asc | sudo apt-key add -
RUN sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main'
RUN apt-get update
RUN apt-get install -y cmake ninja-build



#RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

# RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

#RUN sudo apt-get update

#RUN sudo apt-get install -y google-cloud-cli

# RUN sudo apt-get install -y google-cloud-cli-firestore-emulator

# RUN sudo sudo apt-get install -y google-cloud-cli-datastore-emulator
RUN ls -r > lookit.txt
RUN rm -rf /var/lib/apt/lists/*


# RUN sudo gcloud init
# RUN echo "$GCP_SERVICE_ACCOUNT_KEY"
# RUN echo "$GCP_SERVICE_ACCOUNT_KEY" > /tmp/gcp_key.json
# RUN gcloud auth activate-service-account --key-file=/tmp/gcp_key.json
# RUN rm /tmp/gcp_key.json


# RUN npm install -g nodemon
# RUN sudo gcloud init

# RUN sudo gcloud config set project jomof-sandbox
# RUN sudo gcloud config set compute/region us-west2

# ENV DATASTORE_DATASET=jomof-sandbox
# ENV DATASTORE_EMULATOR_HOST=127.0.0.1:3002
# ENV DATASTORE_EMULATOR_HOST_PATH=127.0.0.1:3002/datastore
# ENV DATASTORE_HOST=http://127.0.0.1:3002
# ENV DATASTORE_PROJECT_ID=jomof-sandbox

# Set default command to run when container starts
CMD ["/bin/bash"]