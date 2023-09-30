FROM networkboot/dhcpd:1.2.0

# WORKDIR /code

# ENV PORT 80

COPY ./data /data
# RUN mkdir /nfs

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]