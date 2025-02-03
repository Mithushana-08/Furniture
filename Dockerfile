# Use official PHP image with Apache
FROM php:8.2-apache
# Install necessary PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
# Enable Apache mod_rewrite (if needed for frameworks like Laravel)
RUN a2enmod rewrite
# Copy application files to the Apache server root directory
COPY . /var/www/html/
# Set permissions for Apache to serve files
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html
# Expose port 80 for web traffic
EXPOSE 80

