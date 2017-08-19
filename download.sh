#!/bin/sh

video(){

youtube-dl -F $URL

echo "Enter the quality code e.g 22"
read QUAL

youtube-dl -f $QUAL $URL

}


menu() {
    echo
    echo  "\t\t\tYoutube Download Menu\n"
    echo  "\t1. Download Audio"
    echo  "\t2. Video"
    echo  "\t3. Audio Playlist"
    echo  "\t0. Exit menu\n\n"
    echo  "\t\tEnter option: "

    read option
    echo
    echo "you pick option ${option}"
    echo
    echo "Enter URL"
    read URL
}





clear
menu

case $option in
1)
    youtube-dl -x --audio-format mp3 $URL ;;
2)
    video ;;
3)
    youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $URL;;
*)
   clear ;;
esac
