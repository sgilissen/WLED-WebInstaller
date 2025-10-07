FROM nginx:alpine

# Replace the default nginx.conf with one that recognizes index.htm
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your site files
COPY . /usr/share/nginx/html
