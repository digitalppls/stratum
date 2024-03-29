FROM python:3.10.8-alpine3.17
WORKDIR /stratum
RUN pip install requests
CMD \
echo POOL_ADDRESS: ${POOL_ADDRESS} \
&& echo POOL_PORT: ${POOL_PORT} \
&& echo WORKER_NAME: ${WORKER_NAME} \
&& echo CALLBACK_URL: ${CALLBACK_URL} \
&& python strelay.py -s ${POOL_ADDRESS} -t ${POOL_PORT} -u ${WORKER_NAME} -a x -l 0.0.0.0 -p 3333 -c 0.0.0.0 -x 4444 -cb ${CALLBACK_URL}