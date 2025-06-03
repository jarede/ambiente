function brv_test
    fd -e py|entr -s "mypy asap && ruff check asap && python -m unittest $argv"
end
