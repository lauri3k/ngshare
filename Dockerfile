FROM jupyterhub/jupyterhub:3
COPY . /ngshare/
RUN pip install /ngshare psycopg2-binary
USER 65535:65535
ENTRYPOINT ["python3", "-m", "ngshare"]
