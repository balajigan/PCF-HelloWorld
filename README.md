
## FLY CLI Commands ... .

fly -t local login -c http://PRIVATE_IP:8080

fly -t local set-pipeline --pipeline PCFHelloWorldPipeline --config pipeline_PCF.yml
