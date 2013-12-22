#! /bin/bash

pkill -2 -f conky
fi
cp ~/.conky_test ~/.conky_testbak
cp ~/.conky_test2 ~/.conky_test
mv ~/.conky_testbak ~/.conky_test2
conky -c ~/.conky_test &
