echo $0
cd `dirname $0`
pwd

year=$(date "+%Y")
mouth=$(date "+%m")
day=$(date "+%d")

file_path="./$year/$mouth"
complete_file_path="$file_path/$day.md"

echo $year $mouth $day
echo $file_path
echo $complete_file_path

if [ ! -d "$file_path" ]
then
	mkdir -p $file_path
fi

touch $complete_file_path

open -a typora $complete_file_path
