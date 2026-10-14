#!/bin/bash

echo -e "  ✋  Clean start sites tools write starts... \n"

set -a
. "./command/.env"





bundle_src_folder="./MediaAndStyles/${env_src__sites_tools__folder_name}"
bundle_dest_folder="${env_dest_foldername}"
bundle_dest_fname="${env_dest__sites_tools__filename}"

echo -e "bundle_dest_folder: ${bundle_dest_folder} \n"

if [ ! -e "./${bundle_dest_folder}" ]; then
    mkdir -p "${bundle_dest_folder}";
    echo -e "    ✅  Created folder: \"${bundle_dest_folder}\" \n"
fi

if [ -e "./${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    rm "./${bundle_dest_folder}/${bundle_dest_fname}"
    echo -e "    ❎  Removed styles file: \"${bundle_dest_folder}/${bundle_dest_fname}\" \n"
fi

touch "${bundle_dest_folder}/${bundle_dest_fname}"
echo -e "    ✅  Created styles file: \"${bundle_dest_folder}/${bundle_dest_fname}\" \n"





#; 1_065 b   |  theme_li_i_label.css
cat "${bundle_src_folder}/tiny_sites_label/theme_li_i_label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_216 b   |  tiny_sites_tools__li_i_label.css
cat "${bundle_src_folder}/tiny_sites_label/tiny_sites_tools__li_i_label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"



#;   786 b   |  tiny_sites_tools__scrolls.css
cat "${bundle_src_folder}/tiny_sites_scrolls/tiny_sites_tools__scrolls.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"



#; 1_136 b   |  theme__tiny_sites_tools__table.css
cat "${bundle_src_folder}/tiny_sites_table/theme__tiny_sites_tools__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 2_405 b   |  tiny_sites_tools__table.css
cat "${bundle_src_folder}/tiny_sites_table/tiny_sites_tools__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"



#; 3_503 b   |  theme__tiny_sites_tools__ul_li.css
cat "${bundle_src_folder}/tiny_sites_ul_li/theme__tiny_sites_tools__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_330 b   |  tiny_sites_tools__ul_li.css
cat "${bundle_src_folder}/tiny_sites_ul_li/tiny_sites_tools__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"







#; ------------------------------------------------------------------------

if [ ! -e "./${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    echo -e "ERROR: ❌  didn't write Clean start sites tools. \n-------\n\n"
    exit 3;
fi



ls -la "./${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "FINISH: ✅  Clean start sites tools were written. \n-------\n\n"

exit 0;




