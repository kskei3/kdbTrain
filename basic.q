PI: 22%7;

basic_Z0:{sqrt[-2*log[x]]*cos[2*PI*y]};   /z0: random variable; x,y: uniform distributed (0,1)
basic_Z1:{sqrt[-2*log[x]]*sin[2*PI*y]};
basic_transform:{[num]basic_Z0[num?1.0;num?1.0]};