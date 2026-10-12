# use system ca
# increase node memory limit
#NODE_MAJOR=$(node -p "process.versions.node.split('.')[0]" 2>/dev/null)
export NODE_OPTIONS="${NODE_OPTIONS:+$NODE_OPTIONS }--max-old-space-size=8192"

IS_ALLOWED=$(node -p "process.allowedNodeEnvironmentFlags.has('use-system-ca') ? 'yes' : 'no'" 2>/dev/null)

if [ "$IS_ALLOWED" = "yes" ]; then
    export NODE_OPTIONS="$NODE_OPTIONS --use-system-ca"
else
    # Fallback: Only set NODE_EXTRA_CA_CERTS if the file actually exists
    if [ -f "/etc/ssl/certs/ca-certificates.crt" ]; then
        export NODE_EXTRA_CA_CERTS="/etc/ssl/certs/ca-certificates.crt"
    fi
fi

