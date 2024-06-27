# Running your own LLM Locally

## Run open-webui using ollama on background

### Simple Docker Run (Running on CPU)

- `docker run -d -p 0.0.0.0:3000:8080 --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama`

If you want use Ollama Locally, add OLLAMA_HOST as ENV
- `docker run -d -p 0.0.0.0:3000:8080 -p 0.0.0.0:11434:11434 -v ./DockerData/Ollama-Data:/root/.ollama -v ./DockerData/Open-webui-Data:/app/backend/data -e OLLAMA_HOST=0.0.0.0 --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama`

### Running on GPU

- `docker run -d -p 0.0.0.0:3000:8080 --gpus=all --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama`

### Running on GPU with Volume to store configs and models

- `docker run -d -p 0.0.0.0:3000:8080 --gpus=all -v ./DockerData/Ollama-Data:/root/.ollama -v ./DockerData/Open-webui-Data:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama`

### Keep in mind that depending which model you trying run you need a lot of RAM or if you running on GPU will need same amount on VRAM

For Example:

- 7b Models -> ~4GB RAM
- 14b Models -> ~7.8GB RAM
- 70b Models -> 40GB RAM

## Docs

- https://github.com/ollama/ollama
- https://docs.openwebui.com/

## Models

Library models from Ollama https://ollama.com/library


Some models that I already use:
- Llama 3 to general purposes
  - https://ollama.com/library/llama3

- Codellama to generate code, tests and comments
  - https://ollama.com/library/codellama

- Llava to identify and understand images
  - https://ollama.com/library/llava
