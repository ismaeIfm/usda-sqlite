#!/bin/bash

if [ $# -ne 1 ]
then
  echo "You must specify a sqlite file as an argument."
  exit 1
fi

echo "Normalizing data..."
# Remove tildas
perl -pi -e s,~,,g data/*.txt
# Replace micro symbol to ASCII
perl -C1 -i -pe 's/\x{00B5}/mc/' data/NUTR_DEF.txt

echo "Loading food group..."
sqlite3 $1 < load_food_group.sql

echo "Loading food..."
sqlite3 $1 < load_food.sql

echo "Loading nutrient..."
sqlite3 $1 < load_nutrient.sql
sqlite3 $1 < load_common_nutrient.sql

echo "Loading derivation code..."
sqlite3 $1 < load_derivation_code.sql

echo "Loading factor..."
sqlite3 $1 < load_factor.sql

echo "Loading factor link..."
sqlite3 $1 < load_factor_link.sql

echo "Loading data source..."
sqlite3 $1 < load_data_source.sql

echo "Loading data source link..."
sqlite3 $1 < load_data_source_link.sql

echo "Loading footnote..."
sqlite3 $1 < load_footnote.sql

echo "Loading source code..."
sqlite3 $1 < load_source_code.sql

echo "Loading nutrition..."
sqlite3 $1 < load_nutrition.sql

echo "Loading weight..."
sqlite3 $1 < load_weight.sql

echo "Done."
