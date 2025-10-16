#FROM node:20-alpine
FROM mcr.microsoft.com/playwright:v1.56.0-jammy
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx playwright install
EXPOSE 9323
#RUN npx playwright test --headed
#CMD ["npx", "playwright", "test"]
#CMD ["sh", "-c", "npx playwright test"]
# Run tests and then serve the report
#CMD sh -c "npx playwright test; npx serve playwright-report -l 4000"
CMD ["sh", "-c", "npx playwright test; npx serve playwright-report -l 9323"]
