FROM fluent/fluentd-kubernetes-daemonset:v0.12.33-debian-elasticsearch
RUN echo 'gem: --no-document' >> /etc/gemrc \
    && gem install fluent-plugin-google-cloud \
    && gem sources --clear-all \
    && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
