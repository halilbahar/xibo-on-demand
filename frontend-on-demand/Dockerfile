FROM nginx:alpine

COPY dist/on-demand/ /usr/share/nginx/html/
COPY nginx-startup.sh /docker-entrypoint.d/
COPY nginx.conf /etc/nginx/conf.d/default.conf

ENV ON_DEMAND_API_URL="http://localhost:8080/api"
