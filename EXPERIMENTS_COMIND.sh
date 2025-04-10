#!/usr/bin/env bash

source EXPERIMENTS_ROOT.sh

run_COMIND_EXPERIMENTS()
{
    RESULTS_PATH=$1; shift
    SAVE_IMAGES=$1; shift
    GPUS=($@)



    train_single $SAVE_IMAGES KSDD2 $KSDD2_PATH N_0   $RESULTS_PATH 15 -1 0   80 0.01 1 1 True  2 3 False True  True  ${GPUS[@]} # Figure 9, Table 4-Row 13
    train_single $SAVE_IMAGES KSDD2 $KSDD2_PATH N_16  $RESULTS_PATH 15 -1 16  70 0.01 1 1 True  2 3 True  True  True  ${GPUS[@]} # Figure 9, Table 4-Row 12
    train_single $SAVE_IMAGES KSDD2 $KSDD2_PATH N_53  $RESULTS_PATH 15 -1 53  50 0.01 1 1 True  2 3 True  True  True  ${GPUS[@]} # Figure 9
    train_single $SAVE_IMAGES KSDD2 $KSDD2_PATH N_126 $RESULTS_PATH 15 -1 126 50 0.01 1 1 True  2 3 True  True  True  ${GPUS[@]} # Figure 9
    train_single $SAVE_IMAGES KSDD2 $KSDD2_PATH N_246 $RESULTS_PATH 15 -1 246 50 0.01 1 1 True  2 3 True  True  True  ${GPUS[@]} # Figure 9


    #train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_300_N_0     $RESULTS_PATH 1 300  0    120 0.1 0.1 10 True  2 1 False True  True  ${GPUS[0]} # Figure 12
    #train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_300_N_10    $RESULTS_PATH 1 300  10   120 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[0]} # Figure 12
    #train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_300_N_50    $RESULTS_PATH 1 300  50   120 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[0]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_300_N_150   $RESULTS_PATH 1 300  150  100 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[0]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_300_N_300   $RESULTS_PATH 1 300  300  90 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[0]} # Figure 12

    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_750_N_0     $RESULTS_PATH 1 750  0    120 0.1 0.1 10 True  2 1 False True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_750_N_10    $RESULTS_PATH 1 750  10   120 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_750_N_50    $RESULTS_PATH 1 750  50   120 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_750_N_150   $RESULTS_PATH 1 750  150  100 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_750_N_300   $RESULTS_PATH 1 750  300  80 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_750_N_750   $RESULTS_PATH 1 750  750  80 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12

    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_0    $RESULTS_PATH 1 1500 0    60 0.1 0.1 10 True  2 1 False True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_10   $RESULTS_PATH 1 1500 10   60 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_50   $RESULTS_PATH 1 1500 50   60 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_150  $RESULTS_PATH 1 1500 150  60 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_300  $RESULTS_PATH 1 1500 300  60 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_750  $RESULTS_PATH 1 1500 750  60 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12
    train_single $SAVE_IMAGES STEEL $STEEL_PATH ALL_1500_N_1500 $RESULTS_PATH 1 1500 1500 60 0.1 0.1 10 True  2 1 True  True  True  ${GPUS[@]} # Figure 12

  



}


# Space delimited list of GPU IDs which will be used for training
GPUS=(0 1)
if [ "${#GPUS[@]}" -eq 0 ]; then
  GPUS=(0)
  GPUS=(0 1 2) # if more GPUs available
fi

run_COMIND_EXPERIMENTS ./results-comind True "${GPUS[@]}"


