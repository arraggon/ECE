vsim -gui work.lab5
add wave *
force Clock50MHz 0 0, 1 2 -r 4
force ResetActiveLow 0 0, 1 2
force add 0 0, 1 2 -r 10
force minus 0 0, 1 2 -r 5
force C[2] 0 0, 1 8 -r 16 
force C[1] 0 0, 1 8 -r 16
force C[0] 0 0, 1 8 -r 16
force switch[3] 0 0, 1 16 -r 32
force switch[2] 0 0, 1 16 -r 32
force switch[1] 0 0, 1 16 -r 32
force switch[0] 0 0, 1 16 -r 32
run 100000