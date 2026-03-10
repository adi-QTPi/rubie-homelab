{ pkgs, ... }: {
  home.packages = with pkgs; [
    git
    lazygit   # TUI for git (makes staging/rebasing 10x faster)
    go
    docker
    docker-compose
    opencode
    nil
    neofetch
    eza                  # Modern 'ls' (matches your Starship/Alacritty vibe)
    ripgrep              # Blazing fast 'grep' replacement
    bat                  # 'cat' with syntax highlighting
    bottom               # A much cooler, graphical 'top' (process monitor)
    curlie               # curl but with a much better UI (like HTTPie)
    jq
  ];
}