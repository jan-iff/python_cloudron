FROM cloudron/base:4.0.0@sha256:31b195ed0662bdb06a6e8a5ddbedb6f191ce92e8bee04c03fb02dd4e9d0286df

RUN mkdir -p /app/code
WORKDIR /app/code

COPY start.sh /app/pkg/
COPY app.py requirements.txt /app/code/

EXPOSE 3000

RUN pip install --no-cache-dir -r /app/code/requirements.txt

CMD [ "/app/pkg/start.sh" ]

