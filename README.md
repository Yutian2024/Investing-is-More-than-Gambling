# Investing is More than Gambling

Team solution to MCM/ICM 2022 Problem C - Trading Strategies

## Team members
Yutian Mei UESTC  
Jiayu Wang UESTC
Peisong Zhang UESTC

## Summary
For market traders, investment is one of the fundamental trading strategies. It includes money
income or exchange of any other wealth that can be measured in terms of the value of money in
order to achieve future value increase. Meanwhile, how to maximize the output of the investment
has also been the primary concern in economics.

Faced with two popular financial products — gold and bitcoin, our group aims to build a
mathematical model that integrates financial knowledge and algorithms, which enables us to witness
the birth of a new ’man of wealth’.

Before succeeded in building up a fairly good model, we took a lot of detours by trying
LSTM(Long Short-Term Memory network). We summed up our lessons and expounded why it
does not suit well.

From the very start, with little data to suggest both risk and potential profit, we compared two
distinct choices. One is to hold on for a couple of days, while two is to invest randomly according
to random walk theory.

As time goes by, the amount of historical data for reference keeps increasing. Then we are able
to adopt ARIMA(Autoregressive Integrated Moving Average) model and apriori algorithm. They
are both used to assist the moving average criterion, which has the best effect among them when
working individually.

To examine the effect of our model, besides the three regular control groups, we introduced
two more with different assumptions and matched algorithm. Group one bases on a God-like
perspective, which means we know the whole process from the beginning to make full consideration.
DP(Dynamic Programming) is capable to achieve such global optimum required upon. Group two
suppose that we can forsee the price changes the next day to support our decisions. Greedy
algorithm meets this demand perfectly.

Finally, we changed the transaction commissions of Bitcoin and gold respectively, re-conduct
the investment simulation, compare the simulation results with the previous results, and analyze
the sensitivity of the transaction strategy to the transaction cost.
