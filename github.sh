#!/bin/bash
pull(){
     mkdir aborrar
     cd aborrar
     git init
     echo "Enter github username"
     read username
     echo "Enter repository"
     read repository
     origin_name="https://github.com/"$username"/"$repository".git"
     echo $origin_name
     git remote add origin $origin_name
     git pull origin master
     jupyter notebook
}

push(){
    cd aborrar
    git add *
    echo "Enter commit message"	
    read M
    git commit -m "$M"
    git push -u origin master
    cd ..
    rm -rf aborrar
}

menu(){
    echo
    echo  "\t\t\t Quick GitHub\n"
    echo  "\t1. Pull Repository to temp folder and open jupyter"
    echo  "\t2. Push Repository and delete temp folder"
    echo  "\t0. Exit menu\n\n"
    echo  "\t\tEnter option: "

    read option
    echo
    echo "you pick option $option"
    echo
}

menu_options(){
case $option in

1)
     pull ;;
2)
     push ;;     
*)
     clear;;
esac
}



menu
menu_options

