for file in *:
do
    git add $file
    git commit -m $1
done