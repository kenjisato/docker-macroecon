# Dockerfile for a book project

ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Kenji Sato <mail@kenjisato.jp>"

RUN rm -r /home/$NB_USER/work

COPY ./notebooks ./notebooks
