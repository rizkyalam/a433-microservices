# mengambil image node js versi 14 alpine dari lokal 
# jika tak ada maka akan mengunduhnya dari docker hub
FROM node:14-alpine

# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode 
# dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

# server di jalankan menggunakan perintah "npm start" disaat container diluncurkan
CMD [ "npm", "start" ]
