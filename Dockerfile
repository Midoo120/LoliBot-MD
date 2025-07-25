FROM node:18
WORKDIR /app
COPY . .

# تحديث npm لأول إصدار ثابت
RUN npm install -g npm@latest

# تثبيت الباكدجات
RUN npm install

# لو في build script
# RUN npm run build

EXPOSE 3000

CMD ["node", "index.js"]
