chdir $ARGV[0];  #set the working path
open IN,$ARGV[1] or die; #the chip file
open OUT2,'>',$ARGV[3];  #output file
my $nrep=0;
while(<IN>){
	 my @SNP=split;
	 open IN2,$ARGV[2] or die;  #phenotype file
	 open OUT,">ready.asd";
	 my $i=0;
	 while(<IN2>){
	 	chomp;
	 	print OUT "$_\t$SNP[$i++]\n";
	 }
	 close(IN2);
	 close(OUT);
	 system "asreml -NW32 fGWAS-C.as";
	 open IN2,"fGWAS-C.asr" or die;
	 while(<IN2>){
	 	if(/NumDF/){
	 		last;
	 	}
	 }
	 while(<IN2>){
	 	my @array=split;
	 	$wald=$array[2]*$array[3];
	 	last;
	 }
	 close(IN2);
	 $nrep++;
	 print OUT2 "$nrep\t$wald\n";
}
close(OUT2);
