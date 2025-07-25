# استخدم Node 18 الرسمي (حديث ومتوافق مع البوت)
FROM node:18

# تعيين مجلد التشغيل
WORKDIR /app

# نسخ كل ملفات البوت
COPY . .

# تثبيت الباكدچ
RUN npm install

# لو في build script
# RUN npm run build

# البورت اللي البوت بيشتغل عليه (لو بيستخدم بوت API مثلاً)
EXPOSE 3000

# الأمر اللي بيشغل البوت
CMD ["node", "index.js"]
