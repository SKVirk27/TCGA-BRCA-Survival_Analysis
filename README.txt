
# TCGA-BRCA Analysis Docker Environment
# Please look at both options before staring the analysis.

## Requirements
- Docker installed on your machine

## Setup Instructions

### Option 1: Build the Docker Image

1. Extract the Archive:
   Unzip the `Rayca.zip` file (or extract `Rayca.tar.gz`) to your preferred directory.

   ```sh
   unzip Rayca.zip
   # Or for tar.gz
   tar -xzvf Rayca.tar.gz
   ```

2. Navigate to the Directory:
   Open a terminal and navigate to the `Rayca` directory.

   ```sh
   cd /path/to/Rayca
   ```

3. Build the Docker Image:
   Build the Docker image using the provided `Dockerfile`.

   ```sh
   docker build -t <username>/tcga-brca-analysis .
   ```

4. Run the Docker Container:
   Start a Docker container from the image and map port 8888.

   ```sh
   docker run -p 8888:8888 -v $(pwd):/app <username>/tcga-brca-analysis
   ```

5.Access the Jupyter Notebook:
   After running the container, you will see a URL in the terminal output. Open that URL in your web browser to access the Jupyter notebook.

   Example URL:
   ```
   http://127.0.0.1:8888/?token=<token>
   ```

   Use the token provided in the terminal output.

### Option 2: Pull the Docker Image

1. Open Terminal:
   Open a terminal on your computer.

2. Pull the Docker Image:
   Pull the Docker image from Docker Hub.

   ```sh
   docker pull simranjit27/tcga-brca-analysis
   ```

3. Run the Docker Container:
   Start a Docker container from the image and map port 8888.

   ```sh
   docker run -p 8888:8888 docker pull simranjit27/tcga-brca-analysis
   ```

4. Access the Jupyter Notebook:
   After running the container, you will see a URL in the terminal output. Open that URL in your web browser to access the Jupyter notebook.

   Example URL:
   ```
   http://127.0.0.1:8888/?token=<token>
   ```

   Use the token provided in the terminal output.

## Files
- `Dockerfile`: Dockerfile to build the image
- `requirements.txt`: List of Python dependencies
- `Survival_gene_expression.ipynb`: Jupyter notebook for the analysis
- `data_clinical_patient.txt`: Clinical data file
- `data_mrna_seq_v2_rsem.txt`: Gene expression data file
