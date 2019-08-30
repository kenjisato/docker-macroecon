# Dockerfile for a book project

ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Kenji Sato <mail@kenjisato.jp>"

COPY --chown=$NB_USER:$NB_GID ./python $HOME/python
COPY --chown=$NB_USER:$NB_GID ./julia $HOME/julia
COPY --chown=$NB_USER:$NB_GID ./r $HOME/r

CMD ["start.sh", "jupyter", "lab"]
