FROM python:3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install dependencies
RUN pip3 install django==3.2

# Set the working directory
RUN git clone https://github.com/Srikanth011199/django-todo1.git
WORKDIR django-todo1

EXPOSE 8001
CMD manage.py
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8001"]
