#### using for plot within domain roc score
roc_violin_within <- function(df){
  ggplot(data = df, aes(x = source, y = score, fill = source)) + 
    geom_violin(trim = TRUE) + 
    stat_summary(
      fun.data = ~ mean_se(., mult = 1.96),
      geom = "pointrange",
      size = 0.2,
      show.legend = F
    ) +
    ylab("ROC AUC") +
    xlab("Training data") +
    scale_fill_discrete(name = "Testing data") +
    ggtitle("Decoding within domain") +
    theme_apa()
}
### cross roc score
roc_violin_cross <- function(df){
  ggplot(data = df, aes(x = source, y = score, fill = target)) + 
    geom_violin(trim = TRUE) + 
    stat_summary(
      fun.data = ~ mean_se(., mult = 1.96),
      geom = "pointrange",
      size = 0.2,
      show.legend = F
    ) +
    ylab("ROC AUC") +
    xlab("Training data") +
    scale_fill_discrete(name = "Testing data") +
    ggtitle("Decoding cross domain") +
    theme_apa()
}

#### within current feature importance
fi_within_current <- function(df){
  ggplot(data = df, aes(x = variable, y = value, fill = variable)) +
    geom_violin(trim = TRUE) +
    stat_summary(
      fun.data = ~ mean_se(., mult = 1.96),
      geom = "pointrange",
      size = 0.2,
      show.legend = F
    ) +
    facet_wrap(~source) +
    ylab("Feature importance") +
    xlab("Feature") +
    ggtitle("Decoding within domain") +
    theme_apa()
}
#### cross current feature importance
fi_cross_current <- function(df){
  df_unite_col <- df %>%
    unite("direct", c("source", "target"), sep = "→")
  
  ggplot(data = df_unite_col, aes(x = variable, y = value, fill = variable)) +
    geom_violin(trim = TRUE) +
    stat_summary(
      fun.data = ~ mean_se(., mult = 1.96),
      geom = "pointrange",
      size = 0.2,
      show.legend = F
    ) +
    facet_wrap(~direct) +
    ylab("Feature importance") +
    xlab("Feature") +
    ggtitle("Decoding cross domain") +
    theme_apa()
}



#### within trials back feature importance
fi_within_tb <- function(df){
  df_sep <- df %>%
    separate(col = variable, into = c("feature", "Trial_back"), sep = -2)
  
  ggplot(df_sep, aes(x = feature, y = value, fill = feature)) +
    geom_violin(trim = TRUE) +
    stat_summary(
      fun.data = ~ mean_se(., mult = 1.96),
      geom = "pointrange",
      size = 0.2,
      show.legend = F
    ) +
    facet_wrap(vars(Trial_back)) +
    ylab("Feature importance") +
    xlab("Feature") +
    ggtitle("Decoding within domain") +
    theme_apa() +
    theme(axis.text.x = element_text(angle = 90))
}

#### cross trials back feature importance
fi_cross_tb <- function(df){
  df_sep <- df %>%
    separate(col = variable, into = c("feature", "Trial_back"), sep = -2)
  df_unite_col <- df_sep %>% 
    unite("direct", c("source", "target"), sep = "→")
  ggplot(df_unite_col, aes(x = feature, y = value, fill = feature)) +
    geom_violin(trim = TRUE) +
    stat_summary(
      fun.data = ~ mean_se(., mult = 1.96),
      geom = "pointrange",
      size = 0.1,
      show.legend = F
    ) +
    facet_wrap(vars(direct, Trial_back)) +
    ylab("Feature importance") +
    xlab("Feature") +
    ggtitle("Decoding cross domain") +
    theme_apa() +
    theme(axis.text.x = element_text(angle = 90))
}

