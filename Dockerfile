FROM node:14.15

# RUN mkdir -p /var/www/nuxt-ecs/nuxt
# WORKDIR /var/www/nuxt-ecs/nuxt
# COPY ./ var/www/nuxt-ecs/nuxt
# RUN npm run build

RUN mkdir /code
WORKDIR /code
COPY ./ /code  
# COPY {COPY元（Dockerfileからの相対パス)}  {COPY先}


RUN npm run build
EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]