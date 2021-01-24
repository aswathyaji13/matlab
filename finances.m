function [result] = aa1881finances(account, adjustment, indicator)
if indicator == 't'     % t is the indicator for a transfer function
    result = account + adjustment;
elseif indicator == 'w' % w is the indicator for a withdrawal function
    result = account - adjustment;
elseif indicator == 'i' % i is the indicator for the interest function
    result = account * adjustment;
elseif indicator == 'p' % p is the indicator for the interest payment
    result = account - (account * adjustment);
elseif indicator == 'a' % a is the indicator for interest accruement
    result = account + (account * adjustment);
else 
    result = "Invalid Operation. Try Again."; % will display if an ivalid input is given as indicator
end
    
    