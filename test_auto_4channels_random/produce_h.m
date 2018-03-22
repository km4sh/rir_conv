function audio = produce_h(L,s,r,d_mic,order,beta,n,mtype,dim,orientation,hp_filter,c,fs,channel)
%% auto
% Generate RIR
[h,beta_hat] = rir_generator(c, fs, r, s, L, beta, n, mtype, order, dim, orientation, hp_filter);
% Store 
fname = ['C:\Users\gg\Desktop\±œ“µ…Ëº∆\test_auto_4channels_random\audio_h\' num2str(r(1,1),'%.2f') '_' num2str(r(1,2),'%.2f') '_' num2str(r(1,3),'%.2f') '+' num2str(r(2,1),'%.2f') '_' num2str(r(2,2),'%.2f') '_' num2str(r(2,3),'%.2f') '.wav'];
audiowrite(fname,h',fs); 
txt = procuce_txt( L,s,r,d_mic,order,beta,beta_hat,channel);
audio = 1;              
end

