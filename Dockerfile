FROM python:3.10

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0

RUN pip install \
    numpy matplotlib jupyter gymnasium torch \
    deepface opencv-python gaze-tracking \
    tensorflow==2.15.0 keras==2.15.0

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]