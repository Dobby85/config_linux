if [[ $1 == '' ]];
then
    grep -i '**' | wc -l
else
    grep -i $1 | wc -l
fi
