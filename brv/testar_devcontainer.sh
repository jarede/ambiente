#!/bin/bash

fd -e py | entr -c python3.11 -m unittest tests.asap_tests.views.test_view.TestView.test_update

# s3 bucket
# listar os buckets
aws --endpoint-url=http://localhost:4566 s3 ls
# listar o conteúdo dos buckets
aws --endpoint-url=http://localhost:4566 s3 ls s3://[bucket] --recursive

# select do pewee
c, v = query.sql()
command = c.replace("%s", "'{}'")
print(command.format(*v))
