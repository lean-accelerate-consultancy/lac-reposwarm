# Worker Docker image — python:3.12-slim + uv for deps
# No mise, no extra runtimes — just Python and the worker code
FROM python:3.12-slim

# Build arguments
ARG BUILD_ENV=development
ARG GIT_COMMIT=unknown

# Install system dependencies
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        build-essential curl git ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create a non-root user and working directory
RUN useradd --create-home --shell /bin/bash app \
    && mkdir -p /app && chown app:app /app
USER app

# Install uv for fast Python package management
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/home/app/.local/bin:$PATH"

# Set the working directory
WORKDIR /app

# Copy application source
COPY --chown=app:app . .

# Install Python dependencies using uv
RUN uv sync

# Activate the uv venv
ENV VIRTUAL_ENV=/app/.venv
ENV PATH="/app/.venv/bin:$PATH"

# Set Python path to include src
ENV PYTHONPATH=/app/src

# Build metadata
ENV BUILD_ENV=${BUILD_ENV}
ENV GIT_COMMIT=${GIT_COMMIT}

# Runtime defaults (can be overridden by docker-compose env/env_file)
ENV TEMPORAL_SERVER_URL=localhost:7233
ENV TEMPORAL_NAMESPACE=default
ENV TEMPORAL_TASK_QUEUE=investigate-task-queue
ENV TEMPORAL_IDENTITY=investigate-worker
ENV LOCAL_TESTING=false

# Ensure proper logging output
ENV PYTHONUNBUFFERED=1
ENV PYTHONIOENCODING=utf-8

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD python /app/src/health_check.py || exit 1

# Run the worker
WORKDIR /app/src
CMD ["python", "-m", "investigate_worker"]
