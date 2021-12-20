# Set the default kube context if present
DEFAULT_KUBE_CONTEXTS="$HOME/.kube/config"
if test -f "${DEFAULT_KUBE_CONTEXTS}"
then
    export KUBECONFIG="$DEFAULT_KUBE_CONTEXTS"
fi

# Additional contexts should be in ~/.kube/custom-contexts/
CUSTOM_KUBE_CONTEXTS="$HOME/.kube/custom-contexts"
mkdir -p "${CUSTOM_KUBE_CONTEXTS}"

while IFS= read -r -d '' contextFile
do
    export KUBECONFIG="$contextFile:$KUBECONFIG"
done < <(find "${CUSTOM_KUBE_CONTEXTS}" -type f -name "*.yaml" -print0)
