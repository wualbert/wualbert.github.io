for file in images/*.{jpg,jpeg,png}; do
    [ ! -f "tn/$file" ] && convert "$file"  -thumbnail 160x160 "tn/$file"
done