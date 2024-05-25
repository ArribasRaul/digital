clear
close all
clc


%save('cic_input.txt','simout','-ascii')

fid = fopen('./hls_cic/solution1/csim/build/out.dat', 'r');
S = fscanf(fid,'%f',[1 inf]);
fclose(fid);
plot(S)

