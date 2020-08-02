export CUSTOM_OMZ=$(dirname $(readlink $0))

for file in $CUSTOM_OMZ/custom/*; do
  source "$file"
done
