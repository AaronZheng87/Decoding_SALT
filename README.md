#  Decoding Same-Different Judgement across Stimuli Presentation and Valence within Observers

## Logistic regression
![logistic regression](https://1394217531-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-LvBP1svpACTB1R1x_U4%2F-Lw70vAIGPfRR1AjprLi%2F-LwAVc1EdfmPMge5dlYC%2Fimage.png?alt=media&token=d72e3231-0d64-4bb7-9e4c-20577940763d)

Source: https://machine-learning.paperspace.com/wiki/logistic-regression

## Random forest

![random forest](https://1394217531-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-LvBP1svpACTB1R1x_U4%2F-LwB40Jf1mcyqLP27qb3%2F-LwB8NgwITY4LMRiQ0Sp%2Fimage.png?alt=media&token=0421c8c6-04d6-4524-bd2d-f0bb4fe76ade)

Source: https://machine-learning.paperspace.com/wiki/random-forest

## Result

### The cross condition(stimuli presentation) result
#### Cross condition in experiment 1
- The roc_auc score result of logistic regression: cross stimuli presentation within subjects in experiment 1
  ![Exp1 cross condition lr](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_con.png)

- The roc_auc score result of logistic regression: cross stimuli presentation within subjects in experiment 1 using 7 trials back features
  ![Exp1 cross condition lr trials back](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_con_tb.png)
- The roc_auc score result of random forest: cross stimuli presentation within subjects in experiment 1
  ![Exp1 cross condition rf](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_con_rf.png)


#### Cross condition in experiment 2
- The roc_auc score result of logistic regression: cross stimuli presentation within subjects in experiment 2
  ![Exp2 cross condition lr](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_con2.png)
  
- The roc_auc score result of logistic regression: cross stimuli presentation within subjects in experiment 2 using 7 trials back features
  ![Exp2 cross condition lr trials back](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_con2_tb.png)

- The roc_auc score result of random forest: cross stimuli presentation within subjects in experiment 2
  ![Exp2 cross condition rf](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_con2_rf.png)

### The result of cross condition and cross experiment

- The roc_auc score result of logistic regression: cross stimuli presentation cross experiment within subjects

  ![Cross condition cross experiment lr](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_exp.png)
  
- The roc_auc score result of logistic regression: cross stimuli presentation cross experiment within subjects with 7 trials back features

  ![Cross condition cross experiment lr 7 trials back](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_exp_tb.png)
  
- The roc_auc score result of random forest: cross stimuli presentation cross experiment within subjects

  ![Cross condition cross experiment rf](https://github.com/AaronZheng87/Decoding_SALT/blob/main/barplot_cro_exp_rf.png)
