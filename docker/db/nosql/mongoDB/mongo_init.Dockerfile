ARG VERSION latest
FROM mongo:${VERSION}

ARG REPLICATE_NAME replicate
ENV REPLICATE_NAME ${REPLICATE_NAME}

ARG MEMBERS {}
ENV MEMBERS ${MEMBERS}

ARG MONGO_PRIMARY mongo:27017
ENV MONGO_PRIMARY ${MONGO_PRIMARY}

# CMD bash -c 'sleep 10 && mongosh --host mongo1:27017 --eval "rs.initiate({_id:\"replicate\",members:[{_id:0,host:\"mongo1\"},{_id:1,host:\"mongo2\"}]})"'

CMD bash -c 'sleep 10 && mongosh --host ${MONGO_PRIMARY} --eval "rs.initiate({_id:\"${REPLICATE_NAME}\",members:[{_id:0,host:\"${MONGO_PRIMARY}\"},${MEMBERS}]})"'
