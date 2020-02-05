#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Calculate Profit As The Differences Between Revenue And Expenses
profit_each_month <- (revenue - expenses)

#Calculate profit after deducting tax but first calculate Tax As 30% Of Profit And Round To 2 Decimal Points
profit_after_tax_each_month <- round(profit_each_month - (profit_each_month * 0.30), 2)

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit_margin_each_month <-  round((profit_after_tax_each_month / revenue),2) *100

#Calculate The Mean Profit After Tax For The 12 Months
mean_profit_after_tax_each_month <- mean(profit_after_tax_each_month)

#find the months which were above mean_profit_after_tax_each_month
good_months <- profit_after_tax_each_month > mean_profit_after_tax_each_month
good_months_name <- month.name[good_months]

#find the months which were below mean_profit_after_tax_each_month
bad_months <- !good_months
bad_months_name <- month.name[bad_months]

#where the profit after tax was max for the year
?which()
?month.abb
#the month when the profit after tax was more than any of the  
# or (max) profit_after_tax_each_month across all months
best_month <-  which(profit_after_tax_each_month == max(profit_after_tax_each_month))
best_month_year <- month.name[best_month]

#the month when the profit after tax was less than any of the  
# or (less) profit_after_tax_each_month across all months
worst_month <- which(profit_after_tax_each_month == min(profit_after_tax_each_month))
worst_month_year <- month.name[worst_month]

#Convert All Calculations To Units Of One Thousand Dollars
revenue_1000 <- round(revenue / 1000, 0)
expenses_1000 <- expenses(expenses / 1000, 0)
profit_each_month_1000 <- profit_each_month(profit_each_month / 1000, 0)
profit_after_tax_each_month_1000 <- profit_after_tax_each_month(profit_after_tax_each_month /1000, 0)

#Print Results
revenue_1000
profit_each_month_1000
profit.1000
profit_after_tax_each_month_1000
profit_margin_each_month
print(good_months_name)
print(bad_months_name)
best_month_year
worst_month_year



  
  