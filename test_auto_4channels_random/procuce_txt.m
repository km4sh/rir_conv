function txt = procuce_txt( L,s,r,d_mic,order,beta,beta_hat,channel)
    dizhi = 'C:\Users\gg\Desktop\±œ“µ…Ëº∆\test_auto_4channels_random\audio_h\';
    fileID = fopen([dizhi, num2str(r(1,1),'%.2f') '_' num2str(r(1,2),'%.2f') '_' num2str(r(1,3),'%.2f') '+' num2str(r(2,1),'%.2f') '_' num2str(r(2,2),'%.2f') '_' num2str(r(2,3),'%.2f') '.txt'],'wt');
    fprintf(fileID,'%6s','room information');
    fprintf(fileID,'\n\n%6s','room size(m):');fprintf(fileID,'%6.2f',L);
    fprintf(fileID,'\n%6s','sound source position(m):');fprintf(fileID,'%6.2f',s);
    fprintf(fileID,'\n%6s','mic position(m):');fprintf(fileID,'%6.2f %6.2f %6.2f\t',r(1,:),r(2,:));
    fprintf(fileID,'\n%6s','mic distance(m):');fprintf(fileID,'%6.2f',d_mic);
    fprintf(fileID,'\n%6s','reflection order:');fprintf(fileID,'%6.2f',order);
    fprintf(fileID,'\n%6s','reveberation times(s):');fprintf(fileID,'%6.2f',beta_hat);
    fprintf(fileID,'\n%6s','reflection coefficient:');fprintf(fileID,'%6.2f',beta);
    fprintf(fileID,'\n%6s','channel number:');fprintf(fileID,'%6.2f',channel);
    txt = 1;
    fclose('all');
end

