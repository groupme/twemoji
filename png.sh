function createpng {
  local d
  local png
  for d in svg/*.svg; do
    png=$(echo "$d" | sed 's/.svg/.png/')
    echo "creating $png ..."
    convert -density "$2" -resize "$1" -background none -depth 8 "$d" "$png"
  done
  mkdir -p "$1"
  mv svg/*.png "$1/"
}

#inline
#createpng 20x20 160
#createpng 30x30 240
#createpng 40x40 320
#createpng 60x60 480
#keyboard
#createpng 32x32 160
#createpng 48x48 240
#createpng 64x64 320
createpng 96x96 480