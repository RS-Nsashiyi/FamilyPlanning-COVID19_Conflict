*******************************************************************************
*******************************************************************************
**////////////////////////////// STATA COMMANDS /////////////////////////////**
*******************************************************************************
*******************************************************************************


********************************************************************************
********************************************************************************
**SCENARIO 1:__________Annual change; Provision = 0% ; Utilistation = 0%

//import datafile = mCPR_C19_P00_U00.csv


clear all
set more off
import delimited "C:\Users\Shiyghan\Dropbox\PC (2)\Desktop\BMC_G&P Health\BMC_G&P Health Revisions\Services disruptions & FP projections_data\mCPR_C19_P00_U00.csv", clear

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_00 utilisation_00 c.provision_00#c.utilisation_00 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_00#c.utilisation_00}, normal(0, 100)) ///
	prior({mcpr_archange: provision_00 utilisation_00 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots	
*************************************
bayesmh, saving(mcmc_00.00, replace)	
bayespredict pr_00_00cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_00_00cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 2:__________Annual change; Provision = 0% ; Utilistation = -5%

//import datafile = mCPR_C19_P00_U05.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_00 utilisation_05 c.provision_00#c.utilisation_05 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_00#c.utilisation_05}, normal(0, 100)) ///
	prior({mcpr_archange: provision_00 utilisation_05 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots	
*************************************
bayesmh, saving(mcmc_00.05, replace)	
bayespredict pr_00_05cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_00_05cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 3:__________Annual change; Provision = 0% ; Utilistation = -10%

//import datafile = mCPR_C19_P00_U10.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_00 utilisation_10 c.provision_00#c.utilisation_10 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_00#c.utilisation_10}, normal(0, 100)) ///
	prior({mcpr_archange: provision_00 utilisation_10 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_00.10, replace)	
bayespredict pr_00_10cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_00_10cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 4:__________Annual change; Provision = 0% ; Utilistation = -25%

//import datafile = mCPR_C19_P00_U25.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_00 utilisation_25 c.provision_00#c.utilisation_25 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_00#c.utilisation_25}, normal(0, 100)) ///
	prior({mcpr_archange: provision_00 utilisation_25 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots	
*************************************
bayesmh, saving(mcmc_00.25, replace)	
bayespredict pr_00_25cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_00_25cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 5:__________Annual change; Provision = -5% ; Utilistation = 0%

//import datafile = mCPR_C19_P05_U00.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_05 utilisation_00 c.provision_05#c.utilisation_00 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_05#c.utilisation_00}, normal(0, 100)) ///
	prior({mcpr_archange: provision_05 utilisation_00 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots	
*************************************
bayesmh, saving(mcmc_05.00, replace)	
bayespredict pr_05_00cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_05_00cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 6:__________Annual change; Provision = -5% ; Utilistation = -5%

//import datafile = mCPR_C19_P05_U05.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_05 utilisation_05 c.provision_05#c.utilisation_05 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_05#c.utilisation_05}, normal(0, 100)) ///
	prior({mcpr_archange: provision_05 utilisation_05 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_05.05, replace)	
bayespredict pr_05_05cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_05_05cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 7:__________Annual change; Provision = -5% ; Utilistation = -10%

//import datafile = mCPR_C19_P05_U10.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_05 utilisation_10 c.provision_05#c.utilisation_10 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_05#c.utilisation_10}, normal(0, 100)) ///
	prior({mcpr_archange: provision_05 utilisation_10 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_05.10, replace)	
bayespredict pr_05_10cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_05_10cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 8:__________Annual change; Provision = -5% ; Utilistation = -25%

//import datafile = mCPR_C19_P05_U25.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_05 utilisation_25 c.provision_05#c.utilisation_25 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_05#c.utilisation_25}, normal(0, 100)) ///
	prior({mcpr_archange: provision_05 utilisation_25 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_05.25, replace)	
bayespredict pr_05_25cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_05_25cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 9:__________Annual change; Provision = -10% ; Utilistation = 0%

//import datafile = mCPR_C19_P10_U00.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_10 utilisation_00 c.provision_10#c.utilisation_00 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_10#c.utilisation_00}, normal(0, 100)) ///
	prior({mcpr_archange: provision_10 utilisation_00 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_10.00, replace)	
bayespredict pr_10_00cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_10_00cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 10:__________Annual change; Provision = -10% ; Utilistation = -5%

//import datafile = mCPR_C19_P10_U05.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_10 utilisation_05 c.provision_10#c.utilisation_05 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_10#c.utilisation_05}, normal(0, 100)) ///
	prior({mcpr_archange: provision_10 utilisation_05 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots	
*************************************
bayesmh, saving(mcmc_10.05, replace)	
bayespredict pr_10_05cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_10_05cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 11:__________Annual change; Provision = -10% ; Utilistation = -10%

//import datafile = mCPR_C19_P10_U10.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_10 utilisation_10 c.provision_10#c.utilisation_10 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_10#c.utilisation_10}, normal(0, 100)) ///
	prior({mcpr_archange: provision_10 utilisation_10 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots	
*************************************
bayesmh, saving(mcmc_10.10, replace)	
bayespredict pr_10_10cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_10_10cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 12:__________Annual change; Provision = -10% ; Utilistation = -25%

//import datafile = mCPR_C19_P10_U25.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_10 utilisation_25 c.provision_10#c.utilisation_25 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_10#c.utilisation_25}, normal(0, 100)) ///
	prior({mcpr_archange: provision_10 utilisation_25 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_10.25, replace)	
bayespredict pr_10_25cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_10_25cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 13:__________Annual change; Provision = -25% ; Utilistation = 0%

//import datafile = mCPR_C19_P25_U00.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_25 utilisation_00 c.provision_25#c.utilisation_00 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_25#c.utilisation_00}, normal(0, 100)) ///
	prior({mcpr_archange: provision_25 utilisation_00 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_25.00, replace)	
bayespredict pr_25_00cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_25_00cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 14:__________Annual change; Provision = -25% ; Utilistation = -5%

//import datafile = mCPR_C19_P25_U05.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_25 utilisation_05 c.provision_25#c.utilisation_05 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_25#c.utilisation_05}, normal(0, 100)) ///
	prior({mcpr_archange: provision_25 utilisation_05 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_25.05, replace)	
bayespredict pr_25_05cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_25_05cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 15:__________Annual change; Provision = -25% ; Utilistation = -10%

//import datafile = mCPR_C19_P25_U10.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_25 utilisation_10 c.provision_25#c.utilisation_10 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_25#c.utilisation_10}, normal(0, 100)) ///
	prior({mcpr_archange: provision_25 utilisation_10 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_25.10, replace)	
bayespredict pr_25_10cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_25_10cpr, by(region)

********************************************************************************
********************************************************************************
**SCENARIO 16:__________Annual change; Provision = -25% ; Utilistation = -25%

//import datafile = mCPR_C19_P25_U25.csv

encode province, generate(region)

fvset base none region	
bayesmh mcpr_archange provision_25 utilisation_25 c.provision_25#c.utilisation_25 year i.region, ///
	likelihood(normal({Sigma1})) ///
	prior({mcpr_archange:c.provision_25#c.utilisation_25}, normal(0, 100)) ///
	prior({mcpr_archange: provision_25 utilisation_25 year i.region _cons}, ///
	normal(0, 100)) ///
	prior({Sigma1},  igamma(0.01, 0.01)) ///
	burnin(3000) rseed(80000) mcmcsize(100000) dots		
*************************************
bayesmh, saving(mcmc_25.25, replace)	
bayespredict pr_25_25cpr, mean outcome(mcpr_archange) 

drop if year==2030
collapse (sum) pr_25_25cpr, by(region)

********************************************************************************
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////*** END ***/////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
********************************************************************************
