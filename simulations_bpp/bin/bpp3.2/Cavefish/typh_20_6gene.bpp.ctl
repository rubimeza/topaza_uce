
          seed = -1
       seqfile = ../typh_20_6gene.txt
      Imapfile = ../typh_20_6gene.Imap.txt
       outfile = out.txt
      mcmcfile = mcmc.txt

* speciesdelimitation = 0 * fixed species tree
* speciesdelimitation = 1 0 2    * speciesdelimitation algorithm0(e)
* speciesdelimitation = 1 1 2 0.5 * speciesdelimitation algorithm1(a m)
*         speciestree = 1  0.4 0.2 0.1   * speciestree pSlider ExpandRatio ShrinkRatio
*   speciesmodelprior = 1  * 0: uniform LH; 1:uniform rooted trees; 2: uniformSLH; 3: uniformSRooted

  species&tree = 7  A  B  C  D  E  F  Sp
                    3  2  3  2  2  8  2
                 (((((A, E), B), F), (C, D)), Sp);

       usedata = 1  * 0: no data (prior); 1:seq like
         nloci = 5  * number of data sets in seqfile

         noisy = 3
     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 2 1000   # gamma(a, b) for theta
      tauprior = 2 1000 1  # gamma(a, b) for root tau & Dirichlet(a) for other tau's

*      heredity = 1 4 4
*     locusrate = 1 5

       finetune = 1: 4 0.0007 0.0008 0.0004 0.05 0.33 1   # finetune for GBtj, GBspr, theta, tau, mix, locusrate, seqerr

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 4000
      sampfreq = 1
       nsample = 100000