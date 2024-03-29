# stress test

function stest(){
	cwd=$(pwd)
	File1=$cwd'/'mycode.cpp
	File2=$cwd'/'testcode.cpp
	File3=$cwd'/'comparator.cpp
	File4=$cwd'/'generator.cpp
	File5=$cwd'/'data.txt
	Template1=~/template/comparator.cpp
	Template2=~/template/generator.cpp
	if !(test -f "$File1"); then 
		touch $File1
	fi
	if !(test -f "$File2"); then
		touch $File2
	fi
	if !(test -f "$File3"); then 
		touch $File3
        cp $Template1 comparator.cpp
	fi
	if !(test -f "$File4"); then 
		touch $File4
        cp $Template2 generator.cpp
	fi
	if !(test -f "$File5"); then 
		touch $File5
	fi
	cp $1 mycode.cpp
	cp $2 testcode.cpp
}
