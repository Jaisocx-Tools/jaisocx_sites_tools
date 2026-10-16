#!/bin/bash

echo -e "  ✋  Tarball write starts... \n"

set -a
. "./command/.env"





bundle_src_folder="./MediaAndStyles/${env_src__html_tags__folder_name}"
bundle_dest_folder="${env_dest_foldername}"
bundle_dest_fname="${env_dest__html_tags__filename}"
tarball_name="${env_dest_tarball_foldername}"
tarball_dest_folder="tmp/${env_dest_tarball_foldername}"
tarball_dest_styles_base_filename="${env_dest_tarball__styles_base_filename}"







echo -e "tarball_dest_folder: ${tarball_dest_folder} \n"

if [ ! -e "./${tarball_dest_folder}" ]; then
    mkdir -p "${tarball_dest_folder}";
    echo -e "    ✅  Created folder: \"${tarball_dest_folder}\" \n"
fi

if [ -e "./${tarball_dest_folder}/${tarball_dest_styles_base_filename}" ]; then
    rm "./${tarball_dest_folder}/${tarball_dest_styles_base_filename}"
    echo -e "    ❎  Removed styles file: \"${tarball_dest_folder}/${tarball_dest_styles_base_filename}\" \n"
fi

touch "${tarball_dest_folder}/${tarball_dest_styles_base_filename}"
echo -e "    ✅  Created styles file: \"${tarball_dest_folder}/${tarball_dest_styles_base_filename}\" \n"




cp "./favicon/Icon_Jaisocx.ico"  "./${tarball_dest_folder}/Icon_Jaisocx.ico"

cat "${bundle_dest_folder}/${env_dest__fonts__filename}" >> "./${tarball_dest_folder}/${tarball_dest_styles_base_filename}"
cat "${bundle_dest_folder}/${env_dest__html_tags__filename}" >> "./${tarball_dest_folder}/${tarball_dest_styles_base_filename}"
cat "${bundle_dest_folder}/${env_dest__sites_tools__filename}" >> "./${tarball_dest_folder}/${tarball_dest_styles_base_filename}"



# cp "${bundle_dest_folder}/${env_dest__themes__filename}"  "./${tarball_dest_folder}/clean_start_tiny__theme_base.css"
# cp "${bundle_dest_folder}/${env_dest__responsive__filename}"  "./${tarball_dest_folder}/clean_start_tiny__responsive.css"

# cp "${bundle_dest_folder}/template_clean_start__zero.html"  "./${tarball_dest_folder}/clean_start__zero.html"
cp "${bundle_dest_folder}/clean_start__all_tags.html"  "./${tarball_dest_folder}/clean_start__all_tags.html"



bash -c "cd tmp; tar -cjf "${tarball_name}.tar.xz"  "${tarball_name}"/*"





#; ------------------------------------------------------------------------

if [ ! -e "./tmp/${tarball_name}.tar.xz" ]; then
    echo -e "ERROR: ❌  didn't write tarball. \n-------\n\n"
    exit 4;
fi



ls -la "./${tarball_dest_folder}"

ls -la "./tmp/${tarball_name}.tar.xz"

echo -e "FINISH: ✅  tarball written. \n-------\n\n"

exit 0;




