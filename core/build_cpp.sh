#! /bin/bash

LIBRARY_PATH=$1

TARGET=$2

OUTPUT_PATH=$3

# EXPANDED_SOURCE_PATH="../temp/expanded.cpp"

shift 3

# ./expand_cpp.sh "$LIBRARY_PATH" "$TARGET" "$EXPANDED_SOURCE_PATH"
# ccache g++ -std=gnu++17 -fdiagnostics-color=always -Wall -Wextra -O2 -I/opt/boost/gcc/include -L/opt/boost/gcc/lib -I"$LIBRARY_PATH/ac-library" -I"$LIBRARY_PATH/original/debugger" -I"$LIBRARY_PATH/original/adapter" -o "$OUTPUT_PATH" "$@" "$EXPANDED_SOURCE_PATH"
# -Wshadow
ccache g++-12 -std=gnu++17 -fdiagnostics-color=always -Wno-misleading-indentation -Wall -Wextra -Wconversion -Wfloat-equal -Wno-char-subscripts -ftrapv -fstack-protector-all -g3 -O2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -I"$HOME/boost" -I"$LIBRARY_PATH/ac-library" -I"$LIBRARY_PATH/original" -I"$LIBRARY_PATH/original/debugger" -I"$LIBRARY_PATH/original/adapter" -o "$OUTPUT_PATH" "$@" "$TARGET"
# g++-12 -S -std=gnu++17 -fdiagnostics-color=always -Wno-misleading-indentation -Wall -Wextra -O2 -I/opt/boost/gcc/include -L/opt/boost/gcc/lib -I"$LIBRARY_PATH/ac-library" -I"$LIBRARY_PATH/original" -I"$LIBRARY_PATH/original/debugger" -I"$LIBRARY_PATH/original/adapter" -o "$OUTPUT_PATH" "$@" "$TARGET"
