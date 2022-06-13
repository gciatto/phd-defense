#!bash

NEW_NAME=$1

if [[ -z "$NEW_NAME" ]]; then
    echo "Must provide a new name as argument" 1>&2
    exit 1
fi

for EXT in tex sty bib; do
    mv ise-lab-template.$EXT ise-lab-$NEW_NAME.$EXT 
done

for FILE in `ls ise-lab-$NEW_NAME.{tex,sty,bib} .gitignore .github/workflows/*.yml`; do
    sed -i '.bak' -e "s/ise-lab-template/ise-lab-$NEW_NAME/g" $FILE
done

rm *.bak .github/workflows/*.bak *.sh
