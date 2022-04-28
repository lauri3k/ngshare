FROM jupyterhub/jupyterhub:1.4.2
ENV PYTHONUNBUFFERED=1
COPY . /ngshare/
RUN pip install /ngshare
USER 65535:65535
ENTRYPOINT ["python3", "-m", "ngshare"]
