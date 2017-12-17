#!/bin/sh

passwords="080035080035080035 Sz080035080035080035 SzSz080035080035080035"
find . -iname '*.pdf' | while read pdf; do
  if qpdf --show-encryption "$pdf" 2>&1 | grep -q "not encrypted"; then
    continue;
  fi
  for password in $passwords; do
    if qpdf --show-encryption --password=$password "$pdf" 2>&1 |grep -q "encryption method"; then
      qpdf --password=$password --decrypt "$pdf" "$pdf.decrypted"
      mv "$pdf.decrypted" "$pdf"
      echo "Decrypted $pdf with password $password"
      continue 2
    fi
  done
  echo "Failed to decrypt pdf: $pdf"
done
