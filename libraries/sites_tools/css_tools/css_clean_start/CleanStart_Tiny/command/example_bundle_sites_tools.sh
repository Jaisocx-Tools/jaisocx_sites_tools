#!/bin/bash

echo -e "Bundle css Theme base write starts... \n"

set -a
. "./command/.env"


bundle_src_folder="./MediaAndStyles/tiny_sites_tools"
bundle_dest_fname="clean_start_tiny__sites_tools.css"

# bundle_dest_folder="tmp/bundle_css"
bundle_dest_folder="${env_bundle_dest_folder}"
echo -e "bundle_dest_folder: ${bundle_dest_folder} \n"


if [ ! -e "./${bundle_dest_folder}" ]; then
  mkdir -p "${bundle_dest_folder}";
fi

if [ -e "${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    rm "${bundle_dest_folder}/${bundle_dest_fname}"
    touch "${bundle_dest_folder}/${bundle_dest_fname}"
fi

ls -la "${bundle_dest_folder}/${bundle_dest_fname}"


# cat "${bundle_src_folder}/tiny_sites_label/theme_li_i_label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#; 1.16 kb
# cat "${bundle_src_folder}/tiny_sites_label/tiny_sites_tools__li_i_label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 553 b
cat "${bundle_src_folder}/tiny_sites_scrolls/tiny_sites_tools__scrolls.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

# cat "${bundle_src_folder}/tiny_sites_table/theme__tiny_sites_tools__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/tiny_sites_table/tiny_sites_tools__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

# cat "${bundle_src_folder}/tiny_sites_ul_li/theme__tiny_sites_tools__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/tiny_sites_ul_li/tiny_sites_tools__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"


ls -la "${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "Bundle css Theme base write finish. \n-------\n\n"


exit 0;


