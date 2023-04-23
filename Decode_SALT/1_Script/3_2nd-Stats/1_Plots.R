library(tidyverse)
library(papaja)
source("/Users/zhengyuanrui/Decoding_SALT/Decode_new/1_Script/3_2nd-Stats/0_func.R")
p <- "/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/3_Plots"
###################################################
############### Logistic Regression ##############
###################################################

####### Current trial
ROC_within_c <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/1_Current/LR_withinscore_current.csv")
ROC_cross_c <- read_csv(("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/1_Current/LR_crossscore_current.csv"))
###### trials back
ROC_within_tb <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/2_Trials-Back/LR_withinscore.csv")
ROC_cross_tb <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/2_Trials-Back/LR_crossscore.csv")
roc_within_current_plot <- roc_violin_within(ROC_within_c)
roc_within_tb_plot <- roc_violin_within(ROC_within_tb)

roc_cross_current_plot <- roc_violin_cross(ROC_cross_c)
roc_cross_tb_plot <- roc_violin_cross(ROC_cross_tb)

ggsave("roc_within_current.png", plot = roc_within_current_plot, path = p, width = 10, height = 7)
ggsave("roc_cross_current.png", plot = roc_cross_current_plot, path = p, width = 10, height = 7)
ggsave("roc_within_tb.png", plot = roc_within_tb_plot, path = p, width = 10, height = 7)
ggsave("roc_cross_tb.png", plot = roc_cross_tb_plot, path = p, width = 10, height = 7)

################## feature importance####################
### current trial
within_im_current <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/1_Current/importance_within_current.csv")
cross_im_current <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/1_Current/importance_cross_current.csv")
### Trials back
within_im_tb <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/2_Trials-Back/importance_within.csv")
cross_im_tb <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/1_Logistic/2_Trials-Back/importance_cross.csv")


im_within_current_plot <- fi_within_current(within_im_current)
im_cross_current_plot <- fi_cross_current(cross_im_current)
im_within_tb_plot <- fi_within_tb(within_im_tb)
im_cross_tb_plot <- fi_cross_tb(cross_im_tb)

ggsave("im_within_current.png", plot = im_within_current_plot, path = p, width = 10, height = 7)
ggsave("im_cross_current.png", plot = im_cross_current_plot, path = p, width = 10, height = 7)
ggsave("im_within_tb.png", plot = im_within_tb_plot, path = p, width = 10, height = 7)
ggsave("im_cross_tb.png", plot = im_cross_tb_plot, path = p, width = 10, height = 7)

###################################################
############### Random Forest ####################
###################################################

### Current trial
ROC_within_c_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/1_Current/RF_withinscore_current.csv")
ROC_cross_c_rf <- read_csv(("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/1_Current/RF_crossscore_current.csv"))
ROC_within_tb_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/2_Trials-Back/RF_withinscore.csv")
ROC_cross_tb_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/2_Trials-Back/RF_crossscore.csv")

roc_within_current_rf_plot <- roc_violin_within(ROC_within_c_rf)
roc_cross_current_rf_plot <- roc_violin_cross(ROC_cross_c_rf)
roc_within_tb_rf_plot <- roc_violin_within(ROC_within_tb_rf)
roc_cross_tb_rf_plot <- roc_violin_cross(ROC_cross_tb_rf)

ggsave("roc_within_current_rf.png", plot = roc_within_current_rf_plot, path = p, width = 10, height = 7)
ggsave("roc_cross_current_rf.png", plot = roc_cross_current_rf_plot, path = p, width = 10, height = 7)
ggsave("roc_within_tb_rf.png", plot = roc_within_tb_rf_plot, path = p, width = 10, height = 7)
ggsave("roc_cross_tb_rf.png", plot = roc_cross_tb_rf_plot, path = p, width = 10, height = 7)
######### feature importance
within_im_c_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/1_Current/RF_importance_within_current.csv")
im_ccross_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/1_Current/RF_importance_cross_current.csv")
within_im_tb_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/2_Trials-Back/RF_importance_within.csv")
cross_im_tb_rf <- read_csv("/Users/zhengyuanrui/Decoding_SALT/Decode_new/3_Result/2_Random-forest/2_Trials-Back/RF_importance_cross.csv")

im_within_current_rf_plot <- fi_within_current(within_im_c_rf)
im_cross_current_rf_plot <- fi_cross_current(im_ccross_rf)
im_within_tb_rf_plot <- fi_within_tb(within_im_tb_rf)
im_cross_tb_rf_plot <- fi_cross_tb(cross_im_tb_rf)


ggsave("im_within_current_rf.png", plot = im_within_current_rf_plot, path = p, width = 10, height = 7)
ggsave("im_cross_current_rf.png", plot = im_cross_current_rf_plot, path = p, width = 10, height = 7)
ggsave("im_within_tb_rf.png", plot = im_within_tb_rf_plot, path = p, width = 10, height = 7)
ggsave("im_cross_tb_rf.png", plot = im_cross_tb_rf_plot, path = p, width = 10, height = 7)
