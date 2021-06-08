#Pull from base Image
FROM  python:3.9

#Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Set working directory 
WORKDIR /work

#Install dependencies
COPY Pipfile Pipfile.lock /work/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /work/