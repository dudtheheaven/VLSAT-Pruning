#!/bin/bash
run_command() {
    python -m main --mode $1 --exp $2 --part $3 --config $4
}

# Call the function with different sets of arguments

# Run 1
run_command train SGFN_all50 all ./config/mmgnet.json

# Run 2
run_command train SGFN_objenc50 encoder ./config/mmgnet.json

# Run 3
run_command train SGFN_gnn50 gnn ./config/mmgnet.json

# Run 4
run_command train SGFN_classifier50 classifier ./config/mmgnet.json