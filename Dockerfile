# Dockerfile for Kato and Sato (2020)

ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Kenji Sato <mail@kenjisato.jp>"

WORKDIR .

RUN rm -r /home/$NB_USER/work

COPY ./notebooks .
