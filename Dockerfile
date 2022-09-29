FROM python:3.9
RUN mkdir /demo
WORKDIR /demo
ADD . /demo
RUN pip install django==3.2
RUN python manage.py migrate
EXPOSE 8000
CMD python manage.py runserver 0:8000
