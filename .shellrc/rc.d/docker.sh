# Docker helper functions / alias

function dkrh() {
    docker run -it \
    --rm \
    -v ${PWD}:/working \
    $@
}

function dkrhg() {
    docker run -it \
        --rm \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v "${PWD}:/working" \
        $@
}

function dke() {
    docker exec -it $@
}
