#! /bin/bash

set -euo pipefail

if [ "${1:-}" == "p" ]; then
    shift
    source //172.29.230.62/monkey_data/photodiode_test/run_new.sh "$@"
    exit
fi

if [ "${1:-}" == "clean" ]; then
    rm -r venv 2> /dev/null || true
    rm -rf Behavioral-Control-Programs 2> /dev/null || true
    rm *.whl 2> /dev/null || true
    exit
fi

if [ "${1:-}" == "bootstrap" ]; then
    script="bash $0"
    $script venv
    $script clone
    $script install-py311-32
    $script install
    exit
fi

if [ "${1:-}" == "venv" ]; then
    python -m venv venv
    exit
fi
if [ "${1:-}" == "clone" ]; then
    # git clone 'git@github.com:NeuralStorm/Behavioral-Control-Programs.git'
    git clone 'https://github.com/NeuralStorm/Behavioral-Control-Programs.git'
    cd 'Behavioral-Control-Programs'
    git checkout ryan
    exit
fi

source './venv/Scripts/activate' || exit 1

if [ "${1:-}" == "shell" ]; then
    bash
    exit
fi

if [ "${1:-}" == "pull" ]; then
    cd 'Behavioral-Control-Programs'
    git pull
    cd ..
    # set $1 to install so install will run after pull
    set "install"
fi

if [ "${1:-}" == "install" ]; then
    mkdir output || true
    
    PACKAGE_PATH='./Behavioral-Control-Programs/Primate_Joystick_Pull'
    
    pip install --only-binary :all: --no-binary PyDAQmx "$PACKAGE_PATH[plotting,hw]"
    
    pip list
    
    exit
fi

cleanup_files=()
function _cleanup_files {
    for p in "${cleanup_files[@]}"; do
        if test -f $p; then
            rm $p
        fi
    done
}
trap _cleanup_files EXIT
trap _cleanup_files SIGINT
# install compiled libraries for 32-bit python
if [ "${1:-}" == "install-py311-32" ]; then
    url_base="https://raw.githubusercontent.com/NeuralStorm/docs/main/joystick_task"
    install_wheel () {
        local f="$1"
        if test ! -f "$f"; then
            cleanup_files+=( "./$f" )
            curl "$url_base/$f" --output "./$f"
        fi
        pip install --quiet "./$f"
    }
    install_wheel SciPy-1.8.1-cp311-cp311-win32.whl
    pip install --quiet --only-binary :all: pandas
    install_wheel statsmodels-0.13.2-cp311-cp311-win32.whl
    
    exit
fi

if [ "${1:-}" == "gen" ]; then
    shift
    if [ "$#" == 0 ]; then
        js-gen-output gen output/*.json.gz
    else
        js-gen-output gen "$@"
    fi
    exit
fi

args=()

if [ "$#" == 0 ]; then
    function finish {
        read -p 'press enter to exit'
    }
    trap finish EXIT
elif [ "${1:-}" == "run" ]; then
    shift
elif [ "${1:-}" == "test" ]; then
    echo test
    shift
    args+=( nw noinfo )
    args+=( "$@" )
    export config_path="./config.csv"
elif [ "$#" != 0 ]; then
    echo unknown command
    exit 2
fi

export skip_template_gen=1
export no_partial=1

# export log=1
# export trace=1
export photodiode_channel=1

export photodiode_flash_duration=0.018
# export photodiode_flash_duration=0.1
# export photodiode_flash_duration=0.5
# export photodiode_flash_duration=2

# python -c 'import sys;print(sys.argv)' "${args[@]}"
winpty js-game "${args[@]}"

winpty js-gen-output gen --skip-failed output/*.json.gz
