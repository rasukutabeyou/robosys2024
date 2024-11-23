#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kouta Sakai
# SPDX-License-Identifier: BSD-3-Clause

wng () {
         echo warnig${1}行目
	 res=1
}

res=0

out=$(./genngou 2005 | tr -d '[:space:]')
[ "${out}" = "2005年は平成17年" ] || wng "$LINENO"

exit $res
