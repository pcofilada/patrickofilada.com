FROM envimate/hugo AS builder
WORKDIR /app
COPY . .
RUN hugo

FROM nginx
EXPOSE 80
COPY --from=builder /app/public /usr/share/nginx/html