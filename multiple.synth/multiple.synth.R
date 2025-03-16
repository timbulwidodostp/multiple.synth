# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Synthetic controls to multiple treated units Use multiple.synth (SCtools) With (In) R Software
install.packages("SCtools")
library("SCtools")
multiple.synth = read.csv("https://raw.githubusercontent.com/timbulwidodostp/multiple.synth/main/multiple.synth/multiple.synth.csv",sep = ";")
# Estimation Synthetic controls to multiple treated units Use multiple.synth (SCtools) With (In) R Software
multiple.synth <- multiple.synth(foo = multiple.synth, predictors = c("X1"), predictors.op = "mean", dependent = "Y", unit.variable = "unit.num",
time.variable = "year", treatment.time = 1990, special.predictors = list(list("Y", 1991, "mean")), treated.units = c(2,7), control.units = c(29, 13, 17),
time.predictors.prior = c(1984:1989), time.optimize.ssr = c(1984:1990), unit.names.variable = "name", time.plot = 1984:1996, gen.placebos =  FALSE, Sigf.ipop = 2)
multiple.synth$df.plot
multiple.synth$p
# Synthetic controls to multiple treated units Use multiple.synth (SCtools) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished