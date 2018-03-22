%% 
tic;                     
clc;
    data_number = input('please input data_number:');
    for i = 1:1:data_number
        [L,s,d_mic,step,order,beta,n,mtype,dim,orientation,hp_filter,c,fs,channel] = set_room_informaton_random();
        audio = produce_h(L,s,d_mic,step,order,beta,n,mtype,dim,orientation,hp_filter,c,fs,channel);%automatically generate audios
    end 
%%
toc;           

