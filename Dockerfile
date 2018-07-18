FROM python:3-slim

COPY src/* /src/

RUN pip install records
RUN pip install PyMySQL

ENV PYTHONPATH "${PYTHONPATH}:/src"

#CMD [ "python", "/src/try_records_mysql.py" ] --OR--
CMD python -m src

#
# cd C:\Users\.....\pythonic_records\src>
# docker build -t di_try_records_mysql .
# -- OR --  docker build -t di_try_records_mysql . --build-arg HTTPS_PROXY=https://10.250.5.131:8080
# docker run --rm di_try_records_mysql
#
