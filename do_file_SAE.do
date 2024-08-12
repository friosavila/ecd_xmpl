** SETUP

net install sae, from("https://raw.githubusercontent.com/pcorralrodas/SAE-Stata-Package/master/") replace


** Ecuador Full Country data 2010
use fast_ec_n2010.dta, clear 

sae model h3 log_cons var* [aw=fexph], area(id_area)
sae model reml log_cons var* , area(id_area)

** Ecuador Single Province, Data 2022
** Very slow. Notice sample size and variables are comparable

use slow_ec_pr17_2022.dta, clear

sae model reml log_cons var* , area(id_area)
sae model h3 log_cons var* [aw=fexph], area(id_area)

** Ecuador Single State Data 2022
** Negative Sigma Eta

use  Not_working_prov_12_2022.dta, clear

sae model reml log_cons var* , area(id_area)
sae model h3 log_cons var* [aw=fexph], area(id_area)
