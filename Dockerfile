FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update -y && apt-get install -y git wget vim

ENV BASE_DIR /lib/code_environment

WORKDIR $BASE_DIR

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

