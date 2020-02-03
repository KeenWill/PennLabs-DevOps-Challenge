FROM debian:buster

# Install python3 and pip3
RUN apt-get update -y && apt-get install -y python3-pip

# Add local code to lennpabs dir and set as the working directory
ADD . /lennpabs/
WORKDIR /lennpabs/

# Install pipenv
RUN pip3 install pipenv

# Install Pipfile deps
RUN pipenv install --system --deploy

EXPOSE 5000

# Launch the app
ENTRYPOINT [ "python3" ]
CMD [ "index.py" ]
