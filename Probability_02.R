# Lecture 02 (7/8/26)

library(ggplot2)
set.seed(42)

die<-1:6
n<-5000
rolls<-sample(die,n, replace=TRUE)

# we have to show that the running proportion (empirical probability) approaches
# the theoretical probability

running_prop_even<-cumsum(rolls%%2==0)/seq_len(n)

df <- data.frame(
  trial = seq_len(n),
  empirical = running_prop_even
)

ggplot(data = df, aes(x = trial, y = empirical)) +
  
  geom_line(color = "royalblue", linewidth = 0.5) +
  
  # adding theoretical prob
  geom_hline(yintercept = 0.5, linetype = "dashed", color = "darkred", linewidth = 1) +
  
  
  ylim(0, 1) +
  
  
  labs(
    title = "Law of Large Numbers Simulation",
    subtitle = "Empirical probability converging to the theoretical value (0.5)",
    x = "Number of Flips / Trials (n)",
    y = "Running Proportion of Even Rolls"
  ) 
  


# Try the same for P(rolling 6), P(rolling>4), and P(rolling a prime number)

running_prop_6<-cumsum(rolls==6)/seq_len(n)
running_prop_grt4<-cumsum(rolls==5|rolls==6)/seq_len(n)
running_prop_prime<-cumsum(rolls==2|rolls==3|rolls==5)/seq_len(n)

df1 <- data.frame(
  trial1 = seq_len(n),
  empirical1 = running_prop_6
)

df2 <- data.frame(
  trial2 = seq_len(n),
  empirical2 = running_prop_grt4
)

df3 <- data.frame(
  trial3 = seq_len(n),
  empirical3 = running_prop_prime
)

ggplot(data = df1, aes(x = trial1, y = empirical1)) +
  
  geom_line(color = "royalblue", linewidth = 0.5) +
  
  # adding theoretical prob
  geom_hline(yintercept = 0.167, linetype = "dashed", color = "darkred", linewidth = 1) +
  
  
  ylim(0, 1) +
  
  
  labs(
    title = "Law of Large Numbers Simulation",
    subtitle = "Empirical probability converging to the theoretical value (0.167)",
    x = "Number of Flips / Trials (n)",
    y = "Running Proportion of Rolls with value 6"
  ) 

ggplot(data = df2, aes(x = trial2, y = empirical2)) +
  
  geom_line(color = "royalblue", linewidth = 0.5) +
  
  # adding theoretical prob
  geom_hline(yintercept = 0.34, linetype = "dashed", color = "darkred", linewidth = 1) +
  
  
  ylim(0, 1) +
  
  
  labs(
    title = "Law of Large Numbers Simulation",
    subtitle = "Empirical probability converging to the theoretical value (0.34)",
    x = "Number of Flips / Trials (n)",
    y = "Running Proportion of Rolls with value >4"
  ) 

ggplot(data = df3, aes(x = trial3, y = empirical3)) +
  
  geom_line(color = "royalblue", linewidth = 0.5) +
  
  # adding theoretical prob
  geom_hline(yintercept = 0.5, linetype = "dashed", color = "darkred", linewidth = 1) +
  
  
  ylim(0, 1) +
  
  
  labs(
    title = "Law of Large Numbers Simulation",
    subtitle = "Empirical probability converging to the theoretical value (0.5)",
    x = "Number of Flips / Trials (n)",
    y = "Running Proportion of Rolls with value being prime"
  ) 

# A question on basic probability

n_empl<-200
tablet<-90
laptop<-120
both<-50

# find probability that randomly selected emplyee owns neither

p_tablet<-tablet/n_empl
p_laptop<-laptop/n_empl
p_both<-both/n_empl

p_and<-p_tablet+p_laptop-p_both

p_neither<-1-p_and
print(p_neither)




  


  
  
  
  
  
  
  
  
  
