FROM debian:buster

# Install python3 and pip3
RUN apt-get update -y && apt-get install -y python3-pip

ADD . /lennpabs/
WORKDIR /lennpabs/

# Install pipenv
RUN pip3 install pipenv

# Install Pipfile deps
RUN pipenv install --system --deploy
#RUN pipenv shell

EXPOSE 5000

ENTRYPOINT [ "python3" ]

CMD [ "index.py" ]

#CMD [ "gunicorn", "test:create_app()"]
