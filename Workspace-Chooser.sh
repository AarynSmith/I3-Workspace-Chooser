shopt -s extglob
declare -A dmenu
WS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/Workspaces/"
for file in ${WS_DIR}*.json
do
    dmenu+=([`basename ${file}`]=${file})
done
workspace=$(echo "$(printf "%s\n" "${!dmenu[@]}")" | rofi -i -dmenu)

if [ ! -z "$workspace" ];
then
    scriptname="${WS_DIR}$(basename ${dmenu[${workspace}]} .json).sh"
    exec sh ${scriptname}
    echo $scriptname
fi

