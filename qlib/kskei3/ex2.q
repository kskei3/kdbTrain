args:.Q.def[`name`port!("ex1.q";9082);].Q.opt .z.x

/ remove this line when using in production
/ ex1.q:localhost:9082::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 9082"; } @[hopen;`:localhost:9082;0];

\c 10000 10000

\l qlib.q

.import.summary`kskei3
.import.module`kskei3

11 ~ count .kskei3.basic 11 / please fix this 
11 ~ count .kskei3.polar 11 / please fix this

0 = sum null .kskei3.polar 100000 / please fix this

(::)basic: ([] rnn: .kskei3.basic 100000)
select cnt:count i  by 0.1 xbar rnn from basic / this looks good
