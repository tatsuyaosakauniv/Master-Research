FROM python:3.10

WORKDIR /workspace

RUN pip install numpy matplotlib jupyter gymnasium torch

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]