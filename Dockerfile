from python:latest

COPY . .

RUN aptitude install mktorrent flac lame sox
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "orpheusbetter.py"]