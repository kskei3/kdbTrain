\l basic.q
sigma:0.25;                             /annualize volatility
num_days: 100;                                /number of days
mu:0.08                                 /average growth of the stock
dt: 2.0%(num_days-1);                         /step size
mc: 10000;                        
result: enlist 0.0 ;
while[0<num_days;
    dS_2_S:(mu*dt) + sigma* sqrt[dt] * basic_transform mc; 
    num_days:num_days-1;
    result ,: dS_2_S + last [result]
    ];
result

 

