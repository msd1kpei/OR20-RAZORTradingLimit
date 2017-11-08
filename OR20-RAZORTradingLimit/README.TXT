======================================================
8 April 2015
Version 3.2 by Deddy Nugraha
Perubahan pada  freeCollateralBPEL
- Message Non AvailableMarginSBL dan Non FreeCollateral tidak dikirim ke jms/eclears/eCLEARSPoolLimitResponseQueue. Menambahkan skipCondition true() pada invoke eCLEARSWritePoolLimit.
======================================================