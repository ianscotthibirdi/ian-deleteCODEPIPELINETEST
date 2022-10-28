FROM continuumio/miniconda3:4.12.0

COPY . /src
WORKDIR /src

# Create conda environment
RUN conda create -n hello python=3.8.13
RUN echo "source activate hello" > ~/.bashrc
ENV PATH /opt/conda/envs/sr_inference/bin:$PATH

# Set up entry point
CMD ["python", "src/index.py"]