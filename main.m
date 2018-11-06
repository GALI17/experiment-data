filepath='E:\PSOlab\30-26\p\';
for k = 1:100
    input_data = load([filepath 'p' num2str(k)]);

	d = pdist(input_data,'hamming');
	c=linkage(d,'average');
	hc=cluster(c,6);
	hc1=find(hc==1);
	hc2=find(hc==2);
	hc3=find(hc==3);
	hc4=find(hc==4);
	hc5=find(hc==5);
	hc6=find(hc==6);
	
	outpath = strcat(['E:\PSOlab\30-26\hc\hc' num2str(k)]);
	cd(outpath);
	
	fid = fopen('hc1.txt','a');
	fprintf(fid,'%d\n',hc1);
	fid = fopen('hc2.txt','a');
	fprintf(fid,'%d\n',hc2);
	fid = fopen('hc3.txt','a');
	fprintf(fid,'%d\n',hc3);
	fid = fopen('hc4.txt','a');
	fprintf(fid,'%d\n',hc4);
	fid = fopen('hc5.txt','a');
	fprintf(fid,'%d\n',hc5);
	fid = fopen('hc6.txt','a');
	fprintf(fid,'%d\n',hc6);
    
    fclose(fid);
end