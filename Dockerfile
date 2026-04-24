FROM python:3.9

# Ek folder banayein container ke andar
WORKDIR /app

# Files copy karein
COPY . .

RUN pip install django==3.2

# Note: Migrate yahan karne ke bajaye docker-compose mein behtar hai
# Lekin abhi ke liye theek hai
RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]