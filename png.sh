function createpng {
  local d
  local png
  for d in svg/*.svg; do
    png=$(echo "$d" | sed 's/.svg/.png/')
    echo "creating $png ..."
    convert -density "$2" -resize "$1" -background none "$d" "$png"
  done
  mkdir -p "$1"
  mv svg/*.png "$1/"
}

createpng 20x20 160
#createpng 30x30 240
#createpng 40x40 320
#createpng 60x60 480
#createpng 80x80 480
#createpng 120x120 480
