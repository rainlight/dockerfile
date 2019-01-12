FROM python:36

RUN apt-get update && \
    apt-get install -y python3.6-dev libmysqlclient-dev freetds-bin freetds-common freetds-dev

RUN apt-get install -y mysql-client

RUN pip install django==2.0.4 \
                django-pandas \
                pandas \
                numpy \
                pymssql \
                sqlalchemy \

#COPY  sources /root/sources
#
#WORKDIR /root/sources
#
#CMD ["python","manage.py","runserver","0:8070"]
