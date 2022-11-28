PI:22%7;
get_length:{xexp[x;2] + xexp[y;2]};
polar_z0:{sqrt[(-2*log[y]%y)]*x};
polar_z1:{sqrt[(-2*log[y]%y)]*x};

polar_transform:{[num]  
    u_list:-1+ num?2.0;
    v_list:-1+ num?2.0;
    s:get_length[u_list;v_list];
    invalid_index:where or [(s=0);(s>=1)];           
    while[0<(count [invalid_index]);
        u_list[invalid_index]: -1+(count[invalid_index]?2.0);
        v_list[invalid_index]: -1+(count[invalid_index]?2.0);
        s:get_length[u_list;v_list];
        invalid_index:where or [(s=0);(s>=1)]
    ];
    / 0N!"count invalid index(", .Q.s1[count (where or [(s=0);(s>=1)])], "): ", .Q.s1 invalid_index;
    polar_z0[u_list;s];
    polar_z1[v_list;s]
    };
