# Используем Node.js в качестве базового образа
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json из папки app
COPY app/package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь код приложения из папки app
COPY app ./

# Указываем переменные окружения
ENV PORT=3000
ENV NODE_ENV=production

# Открываем порт
EXPOSE 3000

# Запускаем приложение
CMD ["node", "server.js"]
