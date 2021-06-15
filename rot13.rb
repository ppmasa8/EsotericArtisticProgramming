riny f=%(
  chgf ("riny f=%(" + f + ")").ge("N-Mn-m","A-MN-Za-mn-z")
  chgf "ORTVA { cevag $<.ernq.ge('N-Mn-m','A-MN-Za-mn-z'); rkvg }"
  rkvg
)
BEGIN { print $<.read.tr('A-Za-z','N-ZA-Mn-za-m'); exit }
