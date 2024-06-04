# Run open-webui using ollama on background

docker run -d -p 0.0.0.0:3000:8080 --gpus=all -v DockerData/Ollama-Data:/root/.ollama -v DockerData/Open-webui-Data:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama