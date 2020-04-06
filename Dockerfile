FROM rabbitmq:3.8.3-management
ADD scripts/rabbitmq.config /etc/rabbitmq/
ADD scripts/definitions.json /etc/rabbitmq/
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config /etc/rabbitmq/definitions.json
CMD ["rabbitmq-server"]