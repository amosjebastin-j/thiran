#!/usr/bin/env bash
# Thiran PoC — one-command setup and run on Ubuntu
set -e
cd "$(dirname "$0")"
sudo apt-get update -qq && sudo apt-get install -y -qq python3-venv python3-pip git
[ -d .venv ] || python3 -m venv .venv
source .venv/bin/activate
pip install -q --upgrade pip
pip install -q torch --index-url https://download.pytorch.org/whl/cpu
pip install -q numpy scipy scikit-learn matplotlib librosa soundfile jupyter nbconvert ipykernel
jupyter nbconvert --to notebook --execute --inplace --ExecutePreprocessor.timeout=-1 thiran_poc.ipynb
echo; echo "===== RESULTS ====="; cat results/summary.md
