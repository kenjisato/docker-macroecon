# Dockerfile for a book project

ARG BASE_CONTAINER=kenjis/macroecon
FROM $BASE_CONTAINER

LABEL maintainer="Kenji Sato <mail@kenjisato.jp>"

COPY --chown=$NB_USER:$NB_GID ./asset/jupyter_lab_config.py $HOME/.jupyter/jupyter_lab_config.py

CMD ["start.sh", "jupyter", "lab"]
