GWAS for Milk Yield
 ID !P
 htd 1083
 fReg 23
 testday 1
 MY 1
 SNP 3 !M<-1
myped.ped !SORT
ready.asd !BLUP


MY ~ leg(testday,5).SNP !r us(leg(testday,5)).ide(ID) us(leg(testday,3)).nrm(ID) !f leg(testday,5).fReg htd 

1 1 2 
0 0 IDV 12.8492 !S2==1

us(leg(testday,5)).ide(ID) 2 
# 3 0 US !GFFFFFF 
leg(testday,5) 0 US !GFFFFFF 
24.87	0.359	4.969	-1.909	-0.1478	1.954	1.144	-0.1045	-0.5528	1.1	-0.8042	-0.1539	3.84E-02	-0.4417	0.8396	0.4198	-0.2471	-4.55E-02	-5.52E-02	-0.2115	0.4926
ide(ID) 

us(leg(testday,3)).nrm(ID) 2 
# 3 0 US !GFFFFFF 
leg(testday,3) 0 US !GFFFFFF 
8.553	1.893	1.892	-1.115	-0.8066	1.356	-0.3963	0.1202	-0.1094	0.2837
ID 0 AINV 
