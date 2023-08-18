FROM python:3.10-alpine
RUN adduser -D runner
USER runner
ENV HOME=/home/runner
ENV PATH="$PATH:$HOME/.local/bin"
WORKDIR "$HOME/code"
COPY --chown=runner . .
RUN pip install -r requirements.txt
CMD [ "flask", "--app", "main", "run", "--host=0.0.0.0" ]