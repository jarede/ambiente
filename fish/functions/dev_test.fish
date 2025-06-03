function dev_test
    fd -e py|entr -s "ruff check --output-format=concise && pyright . && pytest $argv"
end
