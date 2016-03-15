#!/bin/sh
set -e
TI_DIR=$HOME"/Projects/macaronic-feature-extraction/training-instances"
FEATS_DIR=$HOME"/Projects/macaronic-feature-extraction/feats"
SIZE="50"
PRE="vocab."$SIZE


python train_mp.py --ti $TI_DIR/ti.$SIZE --end $TI_DIR/$PRE.en.lower --ded $TI_DIR/$PRE.de --phi_pmi_w1 $FEATS_DIR/en-en.$SIZE.pmi.w1.feats.mat.scaled.01 --phi_pmi $FEATS_DIR/en-en.$SIZE.pmi.feats.mat.scaled.01  --phi_ed $FEATS_DIR/en-de.$SIZE.str.norm.mat.scaled.01  --phi_ped $FEATS_DIR/en-de.$SIZE.pron.norm.mat.scaled.01 --cpu 1 --save_params $TI_DIR/outputs/ti.$SIZE.saved.params --history --session_history
echo saved params to $TI_DIR/outputs/ti.$SIZE.saved.params