function lint
    fd -e py|entr -s 'ruff check app --output-format=concise && pyright app'
end
