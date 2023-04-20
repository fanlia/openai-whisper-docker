FROM python:3.10-slim

COPY ./apt/sources.list /etc/apt/sources.list
RUN apt update && apt install -y ffmpeg
RUN pip install --no-cache-dir openai-whisper -i https://pypi.tuna.tsinghua.edu.cn/simple

WORKDIR /app
COPY ./load_models.py .
RUN python load_models.py base
RUN python load_models.py large

CMD ['python']
