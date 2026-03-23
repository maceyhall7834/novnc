FROM ghcr.io/maceyhall7834/limited-machine:main
EXPOSE 80
ENV RESOLUTION=1280x720
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]

# Explanations:
# FROM: Base image to build from.
# EXPOSE 80: Documents that the container listens on port 80.
# ENV RESOLUTION=1280x720: Sets the RESOLUTION environment variable.
# CMD: Runs supervisord with the specified config file; JSON array form avoids shell parsing issues.
