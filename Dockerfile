FROM ubuntu:24.04

RUN apt-get update && apt-get install --no-install-recommends -y python3.12 python3-venv python3-tk && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

RUN python3.12 -m venv /usr/app/venv
ENV PATH="/usr/app/venv/bin:$PATH"

WORKDIR /usr/src/sttk

COPY ./sttk .
COPY requirements.txt .
RUN pip3 install --no-cache-dir wheel
RUN pip3 install --no-cache-dir -r requirements.txt