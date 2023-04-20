# openai-whisper-docker
openai whisper docker

## build

```sh
sudo docker build . -t fanlia/openai-whisper-docker
```

## test

```sh
sudo docker run --rm -it --volume ./media:/media fanlia/openai-whisper-docker whisper /media/16k.wav --model base
#=> [00:00.000 --> 00:02.000] 北京科技館
```

## supported models

- base
- large


### how to add other models

please edit Dockerfile

## license

mit
