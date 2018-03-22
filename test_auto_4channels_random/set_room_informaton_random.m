function [L,s,r,d_mic,order,beta,n,mtype,dim,orientation,hp_filter,c,fs,channel] = set_room_informaton_random( )

        L_max = 8 ;L_min = 3 ;W_max = 8 ;W_min = 3;H_max = 6 ;H_min = 2.5; %set the size of the room
        d_mic = 0.1;
        L(1,1) = L_min+(L_max-L_min)*rand(1,1);
        L(1,2) = W_min+(W_max-W_min)*rand(1,1);
        L(1,3) = H_min+(H_max-H_min)*rand(1,1);
        
        s(1,1) = L_min+(L_max-L_min)*rand(1,1);
        s(1,2) = W_min+(W_max-W_min)*rand(1,1);
        s(1,3) = H_min+(H_max-H_min)*rand(1,1);
        
%         channel = input('please input the channel number:');
%         if channel == 0;
            channel = 2;
%         end

        r(1,1) = L_min+(L_max-L_min)*rand(1,1);
        r(1,2) = W_min+(W_max-W_min)*rand(1,1);
        r(1,3) = H_min+(H_max-H_min)*rand(1,1);
        r(2,:) =r(1,:) + [d_mic 0 0];

%         order = input('please input reflection order(-1 equals maximum reflection order!):');
%         if order == 0;
            order = 5;
%         end
%         beta = input('please input reflection coefficient:');
%         if beta == 0;
            beta = 0.4;
%         end
        n = 8192;                   % Number of samples
        mtype = 'omnidirectional';  % Type of microphone
        dim = 3;                    % Room dimensio
        orientation = 0;            % Microphone orientation (rad)
        hp_filter = 1;              % Enable high-pass filter
        c = 340;                    % Sound velocity (m/s)
        fs = 16000;                 % Sample frequency (samples/s)
end

