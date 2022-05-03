# start by pulling the python image
FROM python:latest
RUN pip install flask
# copy the requirements file into the image
# COPY ./requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /home

# install the dependencies and packages in the requirements file
# RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY ./app.py .

CMD ["python", "./app.py" ]
