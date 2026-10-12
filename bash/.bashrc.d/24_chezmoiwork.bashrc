
if command -v chezmoi &> /dev/null; then
    source <(chezmoi completion bash)
    alias chezwork="chezmoi -S ~/.local/share/chezmoi_work"
fi


