FROM anasty17/mltb:latest

WORKDIR /usr/src/app

# Make working directory writable
RUN chmod 777 /usr/src/app

# Create virtual environment
RUN python3 -m venv mltbenv

# Install Python dependencies
COPY requirements.txt .
RUN mltbenv/bin/pip install --no-cache-dir -r requirements.txt

# Copy the rest of the source code
COPY . .

# Start the bot
CMD ["bash", "start.sh"]
