# Dockerfile
FROM nginx:alpine
 
# Remove o conteúdo padrão de exemplo do Nginx
RUN rm -rf /usr/share/nginx/html/*
 
# Copia os arquivos estáticos do sistema de cadastro
COPY index.html /usr/share/nginx/html/
COPY pessoaFisica.js /usr/share/nginx/html/
 
# Porta padrão em que o Nginx serve o conteúdo
EXPOSE 80
 
# Comando padrão da imagem base (Nginx em primeiro plano)
CMD ["nginx", "-g", "daemon off;"]
