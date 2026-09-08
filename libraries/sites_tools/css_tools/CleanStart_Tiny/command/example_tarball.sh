#!/bin/bash

echo -e "Tarball write starts... \n"

set -a
. "./command/.env"

# bundle_dest_folder="tmp/bundle_css"
bundle_dest_folder="${env_bundle_dest_folder}"
echo -e "bundle_dest_folder: ${bundle_dest_folder} \n"

tarball_name="${env_tarball_name}"


if [ -e "./tmp/${tarball_name}" ]; then
  rm "tmp/${tarball_name}"/*.css;
fi

if [ ! -e "./tmp/${tarball_name}" ]; then
  mkdir -p "tmp/${tarball_name}";
fi

cp "./favicon/Icon_Jaisocx.ico"  "./tmp/${tarball_name}/Icon_Jaisocx.ico"

touch "./tmp/${tarball_name}/clean_start_tiny__base.css"
cat "${bundle_dest_folder}/clean_start_tiny__fonts.css" >> "./tmp/${tarball_name}/clean_start_tiny__base.css"
cat "${bundle_dest_folder}/clean_start_tiny__html_tags_n_styles.css" >> "./tmp/${tarball_name}/clean_start_tiny__base.css"

# cp "${bundle_dest_folder}/clean_start_tiny__theme_base.css"  "./tmp/${tarball_name}/clean_start_tiny__theme_base.css"
cp "./template_clean_start__zero.html"  "./tmp/${tarball_name}/clean_start__zero.html"

bash -c "cd tmp; tar -cjf "${tarball_name}.tar.xz"  "${tarball_name}"/*"

if [ -e "tmp/${tarball_name}.tar.xz" ]; then
    echo -e "\n-- tarball written "${tarball_name}.tar.xz" --\n"
  else
    echo -e "No.\n"
    exit 2;
fi

exit 0;


