#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Kouta Sakai
# SPDX-License-Identifier: BSD-3-Clause

wng () {
         echo warnig${1}行目
	 res=1
}

res=0

#正常動作

out=$(./genngou 2024 | tr -d '[:space:]')
[ "${out}" = "2024年は令和6年" ] || wng "$LINENO"

out=$(./genngou 2005 | tr -d '[:space:]')
[ "${out}" = "2005年は平成17年" ] || wng "$LINENO"

out=$(./genngou 1980 | tr -d '[:space:]')
[ "${out}" = "1980年は昭和55年" ] || wng "$LINENO"

out=$(./genngou 2019 | tr -d '[:space:]')
[ "${out}" = "2019年は令和元年（平成31年)" ] || wng "$LINENO"

out=$(./genngou 1989 | tr -d '[:space:]')
[ "${out}" = "1989年は平成元年(昭和64年)" ] || wng "$LINENO"

out=$(./genngou 1926 | tr -d '[:space:]')
[ "${out}" = "1926年は昭和元年(大正15年)" ] || wng "$LINENO"

#異常動作

out=$(./genngou あ)
[ "$?" = 1 ] || wng "$LINENO"
[ "${out}" = "" ] || wng "$LINENO"

out=$(./genngou )
[ "$?" = 1 ] || wng "$LINENO"
[ "${out}" = "" ] || wng "$LINENO"

[ "$res" = 0 ] && echo OK

exit $res
