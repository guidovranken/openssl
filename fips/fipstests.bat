@echo off
rem Test vector run script
rem Auto generated by mkfipsscr.pl script
rem Do not edit


echo dsa tests
if exist testvectors\dsa\rsp rd /s /q testvectors\dsa\rsp
md testvectors\dsa\rsp
.\fips_dssvs pqg < testvectors\dsa\req\PQGGen.req > testvectors\dsa\rsp\PQGGen.rsp
.\fips_dssvs keypair < testvectors\dsa\req\KeyPair.req > testvectors\dsa\rsp\KeyPair.rsp
.\fips_dssvs siggen < testvectors\dsa\req\SigGen.req > testvectors\dsa\rsp\SigGen.rsp
.\fips_dssvs sigver < testvectors\dsa\req\SigVer.req > testvectors\dsa\rsp\SigVer.rsp

echo sha tests
if exist testvectors\sha\rsp rd /s /q testvectors\sha\rsp
md testvectors\sha\rsp
.\fips_shatest < testvectors\sha\req\SHA1LongMsg.req > testvectors\sha\rsp\SHA1LongMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA1Monte.req > testvectors\sha\rsp\SHA1Monte.rsp
.\fips_shatest < testvectors\sha\req\SHA1ShortMsg.req > testvectors\sha\rsp\SHA1ShortMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA224LongMsg.req > testvectors\sha\rsp\SHA224LongMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA224Monte.req > testvectors\sha\rsp\SHA224Monte.rsp
.\fips_shatest < testvectors\sha\req\SHA224ShortMsg.req > testvectors\sha\rsp\SHA224ShortMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA256LongMsg.req > testvectors\sha\rsp\SHA256LongMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA256Monte.req > testvectors\sha\rsp\SHA256Monte.rsp
.\fips_shatest < testvectors\sha\req\SHA256ShortMsg.req > testvectors\sha\rsp\SHA256ShortMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA384LongMsg.req > testvectors\sha\rsp\SHA384LongMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA384Monte.req > testvectors\sha\rsp\SHA384Monte.rsp
.\fips_shatest < testvectors\sha\req\SHA384ShortMsg.req > testvectors\sha\rsp\SHA384ShortMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA512LongMsg.req > testvectors\sha\rsp\SHA512LongMsg.rsp
.\fips_shatest < testvectors\sha\req\SHA512Monte.req > testvectors\sha\rsp\SHA512Monte.rsp
.\fips_shatest < testvectors\sha\req\SHA512ShortMsg.req > testvectors\sha\rsp\SHA512ShortMsg.rsp

echo aes tests
if exist testvectors\aes\rsp rd /s /q testvectors\aes\rsp
md testvectors\aes\rsp
.\fips_aesavs -f testvectors\aes\req\CBCGFSbox128.req
.\fips_aesavs -f testvectors\aes\req\CBCGFSbox192.req
.\fips_aesavs -f testvectors\aes\req\CBCGFSbox256.req
.\fips_aesavs -f testvectors\aes\req\CBCKeySbox128.req
.\fips_aesavs -f testvectors\aes\req\CBCKeySbox192.req
.\fips_aesavs -f testvectors\aes\req\CBCKeySbox256.req
.\fips_aesavs -f testvectors\aes\req\CBCMCT128.req
.\fips_aesavs -f testvectors\aes\req\CBCMCT192.req
.\fips_aesavs -f testvectors\aes\req\CBCMCT256.req
.\fips_aesavs -f testvectors\aes\req\CBCMMT128.req
.\fips_aesavs -f testvectors\aes\req\CBCMMT192.req
.\fips_aesavs -f testvectors\aes\req\CBCMMT256.req
.\fips_aesavs -f testvectors\aes\req\CBCVarKey128.req
.\fips_aesavs -f testvectors\aes\req\CBCVarKey192.req
.\fips_aesavs -f testvectors\aes\req\CBCVarKey256.req
.\fips_aesavs -f testvectors\aes\req\CBCVarTxt128.req
.\fips_aesavs -f testvectors\aes\req\CBCVarTxt192.req
.\fips_aesavs -f testvectors\aes\req\CBCVarTxt256.req
.\fips_aesavs -f testvectors\aes\req\CFB128GFSbox128.req
.\fips_aesavs -f testvectors\aes\req\CFB128GFSbox192.req
.\fips_aesavs -f testvectors\aes\req\CFB128GFSbox256.req
.\fips_aesavs -f testvectors\aes\req\CFB128KeySbox128.req
.\fips_aesavs -f testvectors\aes\req\CFB128KeySbox192.req
.\fips_aesavs -f testvectors\aes\req\CFB128KeySbox256.req
.\fips_aesavs -f testvectors\aes\req\CFB128MCT128.req
.\fips_aesavs -f testvectors\aes\req\CFB128MCT192.req
.\fips_aesavs -f testvectors\aes\req\CFB128MCT256.req
.\fips_aesavs -f testvectors\aes\req\CFB128MMT128.req
.\fips_aesavs -f testvectors\aes\req\CFB128MMT192.req
.\fips_aesavs -f testvectors\aes\req\CFB128MMT256.req
.\fips_aesavs -f testvectors\aes\req\CFB128VarKey128.req
.\fips_aesavs -f testvectors\aes\req\CFB128VarKey192.req
.\fips_aesavs -f testvectors\aes\req\CFB128VarKey256.req
.\fips_aesavs -f testvectors\aes\req\CFB128VarTxt128.req
.\fips_aesavs -f testvectors\aes\req\CFB128VarTxt192.req
.\fips_aesavs -f testvectors\aes\req\CFB128VarTxt256.req
.\fips_aesavs -f testvectors\aes\req\CFB8GFSbox128.req
.\fips_aesavs -f testvectors\aes\req\CFB8GFSbox192.req
.\fips_aesavs -f testvectors\aes\req\CFB8GFSbox256.req
.\fips_aesavs -f testvectors\aes\req\CFB8KeySbox128.req
.\fips_aesavs -f testvectors\aes\req\CFB8KeySbox192.req
.\fips_aesavs -f testvectors\aes\req\CFB8KeySbox256.req
.\fips_aesavs -f testvectors\aes\req\CFB8MCT128.req
.\fips_aesavs -f testvectors\aes\req\CFB8MCT192.req
.\fips_aesavs -f testvectors\aes\req\CFB8MCT256.req
.\fips_aesavs -f testvectors\aes\req\CFB8MMT128.req
.\fips_aesavs -f testvectors\aes\req\CFB8MMT192.req
.\fips_aesavs -f testvectors\aes\req\CFB8MMT256.req
.\fips_aesavs -f testvectors\aes\req\CFB8VarKey128.req
.\fips_aesavs -f testvectors\aes\req\CFB8VarKey192.req
.\fips_aesavs -f testvectors\aes\req\CFB8VarKey256.req
.\fips_aesavs -f testvectors\aes\req\CFB8VarTxt128.req
.\fips_aesavs -f testvectors\aes\req\CFB8VarTxt192.req
.\fips_aesavs -f testvectors\aes\req\CFB8VarTxt256.req
.\fips_aesavs -f testvectors\aes\req\ECBGFSbox128.req
.\fips_aesavs -f testvectors\aes\req\ECBGFSbox192.req
.\fips_aesavs -f testvectors\aes\req\ECBGFSbox256.req
.\fips_aesavs -f testvectors\aes\req\ECBKeySbox128.req
.\fips_aesavs -f testvectors\aes\req\ECBKeySbox192.req
.\fips_aesavs -f testvectors\aes\req\ECBKeySbox256.req
.\fips_aesavs -f testvectors\aes\req\ECBMCT128.req
.\fips_aesavs -f testvectors\aes\req\ECBMCT192.req
.\fips_aesavs -f testvectors\aes\req\ECBMCT256.req
.\fips_aesavs -f testvectors\aes\req\ECBMMT128.req
.\fips_aesavs -f testvectors\aes\req\ECBMMT192.req
.\fips_aesavs -f testvectors\aes\req\ECBMMT256.req
.\fips_aesavs -f testvectors\aes\req\ECBVarKey128.req
.\fips_aesavs -f testvectors\aes\req\ECBVarKey192.req
.\fips_aesavs -f testvectors\aes\req\ECBVarKey256.req
.\fips_aesavs -f testvectors\aes\req\ECBVarTxt128.req
.\fips_aesavs -f testvectors\aes\req\ECBVarTxt192.req
.\fips_aesavs -f testvectors\aes\req\ECBVarTxt256.req
.\fips_aesavs -f testvectors\aes\req\OFBGFSbox128.req
.\fips_aesavs -f testvectors\aes\req\OFBGFSbox192.req
.\fips_aesavs -f testvectors\aes\req\OFBGFSbox256.req
.\fips_aesavs -f testvectors\aes\req\OFBKeySbox128.req
.\fips_aesavs -f testvectors\aes\req\OFBKeySbox192.req
.\fips_aesavs -f testvectors\aes\req\OFBKeySbox256.req
.\fips_aesavs -f testvectors\aes\req\OFBMCT128.req
.\fips_aesavs -f testvectors\aes\req\OFBMCT192.req
.\fips_aesavs -f testvectors\aes\req\OFBMCT256.req
.\fips_aesavs -f testvectors\aes\req\OFBMMT128.req
.\fips_aesavs -f testvectors\aes\req\OFBMMT192.req
.\fips_aesavs -f testvectors\aes\req\OFBMMT256.req
.\fips_aesavs -f testvectors\aes\req\OFBVarKey128.req
.\fips_aesavs -f testvectors\aes\req\OFBVarKey192.req
.\fips_aesavs -f testvectors\aes\req\OFBVarKey256.req
.\fips_aesavs -f testvectors\aes\req\OFBVarTxt128.req
.\fips_aesavs -f testvectors\aes\req\OFBVarTxt192.req
.\fips_aesavs -f testvectors\aes\req\OFBVarTxt256.req

echo tdes tests
if exist testvectors\tdes\rsp rd /s /q testvectors\tdes\rsp
md testvectors\tdes\rsp
.\fips_desmovs -f testvectors\tdes\req\TCBCinvperm.req
.\fips_desmovs -f testvectors\tdes\req\TCBCMMT1.req
.\fips_desmovs -f testvectors\tdes\req\TCBCMMT2.req
.\fips_desmovs -f testvectors\tdes\req\TCBCMMT3.req
.\fips_desmovs -f testvectors\tdes\req\TCBCMonte1.req
.\fips_desmovs -f testvectors\tdes\req\TCBCMonte2.req
.\fips_desmovs -f testvectors\tdes\req\TCBCMonte3.req
.\fips_desmovs -f testvectors\tdes\req\TCBCpermop.req
.\fips_desmovs -f testvectors\tdes\req\TCBCsubtab.req
.\fips_desmovs -f testvectors\tdes\req\TCBCvarkey.req
.\fips_desmovs -f testvectors\tdes\req\TCBCvartext.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64invperm.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64MMT1.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64MMT2.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64MMT3.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64Monte1.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64Monte2.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64Monte3.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64permop.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64subtab.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64varkey.req
.\fips_desmovs -f testvectors\tdes\req\TCFB64vartext.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8invperm.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8MMT1.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8MMT2.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8MMT3.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8Monte1.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8Monte2.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8Monte3.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8permop.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8subtab.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8varkey.req
.\fips_desmovs -f testvectors\tdes\req\TCFB8vartext.req
.\fips_desmovs -f testvectors\tdes\req\TECBinvperm.req
.\fips_desmovs -f testvectors\tdes\req\TECBMMT1.req
.\fips_desmovs -f testvectors\tdes\req\TECBMMT2.req
.\fips_desmovs -f testvectors\tdes\req\TECBMMT3.req
.\fips_desmovs -f testvectors\tdes\req\TECBMonte1.req
.\fips_desmovs -f testvectors\tdes\req\TECBMonte2.req
.\fips_desmovs -f testvectors\tdes\req\TECBMonte3.req
.\fips_desmovs -f testvectors\tdes\req\TECBpermop.req
.\fips_desmovs -f testvectors\tdes\req\TECBsubtab.req
.\fips_desmovs -f testvectors\tdes\req\TECBvarkey.req
.\fips_desmovs -f testvectors\tdes\req\TECBvartext.req
.\fips_desmovs -f testvectors\tdes\req\TOFBinvperm.req
.\fips_desmovs -f testvectors\tdes\req\TOFBMMT1.req
.\fips_desmovs -f testvectors\tdes\req\TOFBMMT2.req
.\fips_desmovs -f testvectors\tdes\req\TOFBMMT3.req
.\fips_desmovs -f testvectors\tdes\req\TOFBMonte1.req
.\fips_desmovs -f testvectors\tdes\req\TOFBMonte2.req
.\fips_desmovs -f testvectors\tdes\req\TOFBMonte3.req
.\fips_desmovs -f testvectors\tdes\req\TOFBpermop.req
.\fips_desmovs -f testvectors\tdes\req\TOFBsubtab.req
.\fips_desmovs -f testvectors\tdes\req\TOFBvarkey.req
.\fips_desmovs -f testvectors\tdes\req\TOFBvartext.req

echo hmac tests
if exist testvectors\hmac\rsp rd /s /q testvectors\hmac\rsp
md testvectors\hmac\rsp
.\fips_hmactest < testvectors\hmac\req\HMAC.req > testvectors\hmac\rsp\HMAC.rsp

echo rng tests
if exist testvectors\rng\rsp rd /s /q testvectors\rng\rsp
md testvectors\rng\rsp
.\fips_rngvs mct < testvectors\rng\req\ANSI931_TDES2MCT.req > testvectors\rng\rsp\ANSI931_TDES2MCT.rsp
.\fips_rngvs vst < testvectors\rng\req\ANSI931_TDES2VST.req > testvectors\rng\rsp\ANSI931_TDES2VST.rsp

echo rsa tests
if exist testvectors\rsa\rsp rd /s /q testvectors\rsa\rsp
md testvectors\rsa\rsp
.\fips_rsastest < testvectors\rsa\req\SigGen15.req > testvectors\rsa\rsp\SigGen15.rsp
.\fips_rsavtest < testvectors\rsa\req\SigVer15.req > testvectors\rsa\rsp\SigVer15.rsp
.\fips_rsastest -saltlen 0 < testvectors\rsa\req\SigGenPSS.req > testvectors\rsa\rsp\SigGenPSS.rsp
.\fips_rsavtest -saltlen 0 < testvectors\rsa\req\SigVerPSS.req > testvectors\rsa\rsp\SigVerPSS.rsp
.\fips_rsastest -x931 < testvectors\rsa\req\SigGenRSA.req > testvectors\rsa\rsp\SigGenRSA.rsp
.\fips_rsavtest -x931 < testvectors\rsa\req\SigVerRSA.req > testvectors\rsa\rsp\SigVerRSA.rsp
.\fips_rsagtest < testvectors\rsa\req\KeyGenRSA.req > testvectors\rsa\rsp\KeyGenRSA.rsp

echo rsa_salt_62 tests
if exist testvectors\rsa_salt_62\rsp rd /s /q testvectors\rsa_salt_62\rsp
md testvectors\rsa_salt_62\rsp
.\fips_rsastest -saltlen 62 < testvectors\rsa_salt_62\req\SigGenPSS.req > testvectors\rsa_salt_62\rsp\SigGenPSS.rsp
.\fips_rsavtest -saltlen 62 < testvectors\rsa_salt_62\req\SigVerPSS.req > testvectors\rsa_salt_62\rsp\SigVerPSS.rsp
