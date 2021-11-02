FROM python:3.8.2-slim-buster
RUN apt-get update && \
      apt-get install -y && \
    pip3  --no-cache-dir install jupyter numpy
EXPOSE 8888
WORKDIR /project-home 
VOLUME /project-home
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
