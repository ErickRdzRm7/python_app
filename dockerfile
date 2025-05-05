# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo requirements.txt si existe
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos del proyecto
COPY . .

# Expone el puerto (si tu aplicación lo requiere)
EXPOSE 8000

# Comando para ejecutar la aplicación (ajústalo según tu proyecto)
CMD ["python", "app.py"]
