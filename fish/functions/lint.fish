function lint
    fd -e py|entr -s 'mypy $argv && ruff check $argv --output-format=concise && pyright $argv'
end
