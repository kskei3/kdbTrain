

d) module
 kskei3
 kskei3 to set up a kskei3 library. 
 q).import.module`kskei3
// functions:

.kskei3.PI: 22%7;

.kskei3.basic_Z0:{sqrt[-2*log[x]]*cos[2*.kskei3.PI*y]};   /z0: random variable; x,y: uniform distributed (0,1)
.kskei3.basic_Z1:{sqrt[-2*log[x]]*sin[2*.kskei3.PI*y]};
.kskei3.basic:{[num].kskei3.basic_Z0[num?1.0;num?1.0]};

d) function
 kskei3
 .kskei3.basic
 generate random normal distributed numbers using basic method
 q) .kskei3.basic 10


.kskei3.get_length:{xexp[x;2] + xexp[y;2]};
.kskei3.polar_z0:{sqrt[(-2*log[y]%y)]*x};
.kskei3.polar_z1:{sqrt[(-2*log[y]%y)]*x};

.kskei3.polar:{[num]  
    u_list:-1+ num?2.0;
    v_list:-1+ num?2.0;
    s:.kskei3.get_length[u_list;v_list];
    invalid_index:where or [(s=0);(s>=1)];           
    while[0<(count [invalid_index]);
        u_list[invalid_index]: -1+(count[invalid_index]?2.0);
        v_list[invalid_index]: -1+(count[invalid_index]?2.0);
        s:.kskei3.get_length[u_list;v_list];
        invalid_index:where or [(s=0);(s>=1)]
    ];
    / 0N!"count invalid index(", .Q.s1[count (where or [(s=0);(s>=1)])], "): ", .Q.s1 invalid_index;
    .kskei3.polar_z0[u_list;s];
    .kskei3.polar_z1[v_list;s]
    };



d) function
 kskei3
 .kskei3.polar
 generate random normal distributed numbers using polar method
 q) .kskei3.polar 10