# استخدم نسخة Node حديثة
FROM node:18

# إنشاء مجلد داخلي
WORKDIR /app

# نسخ ملفات البوت
COPY . .

# تثبيت البكجات
RUN npm install

# تشغيل البوت
CMD ["npm", "start"]
