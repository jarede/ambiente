#!/bin/bash

fd -e py | entr -c python3.11 -m unittest tests.asap_tests.views.test_view.TestView.test_update

