#FROM node:20-alpine
FROM mcr.microsoft.com/playwright:v1.56.0-jammy
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx playwright install
EXPOSE 3000
CMD ["sh", "-c", "npx playwright test; npx serve playwright-report -l 3000"]