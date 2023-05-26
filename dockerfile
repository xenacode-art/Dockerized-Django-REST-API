#Use an offical Python runtime as a parent image

FROM python:3.9-slim-buster


#Set env variable

ENV PYTHONWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

# Set THE Working dir in the container to /app

WORKDIR /app


# Add the current dir files (on your machine) to the container

ADD . /app/

# Install any needed packages specified in requirement.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


#Expose the port server is running  on 

EXPOSE 8000

#Start the server

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]