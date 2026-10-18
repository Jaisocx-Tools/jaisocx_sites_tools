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





#; 7_106 b   |  theme_tiny_sites_tools__html_forms.css
cat "${bundle_src_folder}/tiny_html_forms/theme_tiny_sites_tools__html_forms.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 7_733 b   |  tiny_sites_tools__html_forms.css
cat "${bundle_src_folder}/tiny_html_forms/tiny_sites_tools__html_forms.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; 2_503 b   |  theme_ul_li_label.css
cat "${bundle_src_folder}/tiny_sites_label/theme_ul_li_label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_025 b   |  tiny_sites_tools_ul_li_label.css
cat "${bundle_src_folder}/tiny_sites_label/tiny_sites_tools_ul_li_label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#;   786 b   |  tiny_sites_tools__scrolls.css
cat "${bundle_src_folder}/tiny_sites_scrolls/tiny_sites_tools__scrolls.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"







#; ------------------------------------------------------------------------

if [ ! -e "./${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    echo -e "ERROR: ❌  didn't write Clean start sites tools. \n-------\n\n"
    exit 3;
fi



ls -la "./${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "FINISH: ✅  Clean start sites tools were written. \n-------\n\n"

exit 0;




