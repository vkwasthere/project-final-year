# pull the official base image
FROM python:3.8-slim-buster
# set work directory
WORKDIR /usr/src/app


# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# copy project
COPY . .

# Entry Point
ENTRYPOINT ["sh", "./entrypoint.sh"]

# We want to on Gunicorn, Not using runserver

#EXPOSE 8000
#RUN python manage.py migrate
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]