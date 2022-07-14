# unlocks gnoe kering from cmdline

function unlock-keyring() {
    read -rsp "Password: " pass
    export $(echo -n "$pass" | gnome-keyring-daemon --replace --unlock)
    unset pass
}
