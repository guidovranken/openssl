#!/bin/sh -ex
#
# Copyright 2017 The OpenSSL Project Authors. All Rights Reserved.
#
# Licensed under the Apache License 2.0 (the "License").  You may not use
# this file except in compliance with the License.  You can obtain a copy
# in the file LICENSE in the source distribution or at
# https://www.openssl.org/source/license.html

export OPENSSL_INCLUDE_PATH=`pwd`/$BLDTOP/include
export OPENSSL_LIBCRYPTO_A_PATH=`pwd`/$BLDTOP/libcrypto.a

cd $SRCTOP/cryptofuzz

python gen_repository.py

cd modules/openssl
CXXFLAGS="$CXXFLAGS -stdlib=libc++ -D_LIBCPP_ENABLE_CXX17_REMOVED_AUTO_PTR" make -B

cd ../..
CXXFLAGS="$CXXFLAGS -stdlib=libc++ -D_LIBCPP_ENABLE_CXX17_REMOVED_AUTO_PTR -I $OPENSSL_INCLUDE_PATH" LIBFUZZER_LINK="-fsanitize=fuzzer" make -B

# TODO run cryptofuzz against corpus