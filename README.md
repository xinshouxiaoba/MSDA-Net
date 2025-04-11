#MSDA-Net
Enhancing Multi-Scale Learning with Dual-Path Adaptive Feature Fusion for Mixed-Supervised Industrial Defect Detection

## How to run:

### Requirements
Code has been tested to work on:
+ Python 3.8
+ PyTorch 1.6, 1.8
+ CUDA 10.0, 10.1
+ using additional packages as listed in requirements.txt

### Datasets
. For Severstal Steel Defect Dataset you will also need a Kaggle account.
* KolektorSDD2 available [here.](https://www.vicos.si/Downloads/KolektorSDD2)
* Severstal Steel Defect Dataset available [here.](https://www.kaggle.com/c/severstal-steel-defect-detection/data)

### Replicating paper results

To replicate the results published in the paper run:
```bash
./EXPERIMENTS_COMIND.sh
# or by specifying multiple GPU ids 
./EXPERIMENTS_COMIND.sh 0 1 2


### Usage of training/evaluation code
The following python files are used to train/evaluate the model:
+ `train_net.py` Main entry for training and evaluation
+ `models.py` Model file for network
+ `data/dataset_catalog.py` Contains currently supported datasets

In order to train and evaluate a network you can also use `EXPERIMENTS_ROOT.sh`, which contains several functions that will make training and evaluation easier for you.
For more details see the file `EXPERIMENTS_ROOT.sh`.  

#### Running code
Simplest way to train and evaluate a network is to use `EXPERIMENTS_ROOT.sh`, you can see examples of use in `EXPERIMENTS_COMIND.sh`



        


