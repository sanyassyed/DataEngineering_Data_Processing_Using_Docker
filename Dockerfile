FROM python:3.12.7-bullseye
COPY ./question/ ./data/
ENV INPUT_DIR="/data/input"
ENV OUTPUT_DIR="/data/output"
RUN pip install pandas
# to keep the container alive
CMD ["tail", "-f", "/dev/null"]