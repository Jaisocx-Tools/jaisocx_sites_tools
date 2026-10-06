#!/bin/bash

echo -e "Bundle css Fonts write starts... \n"

set -a
. "./command/.env"


bundle_src_folder="./MediaAndStyles/clean_start_tiny__fonts"
bundle_dest_fname="clean_start_tiny__fonts.css"

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


# cat "${bundle_src_folder}/theme_fonts_old_good_fonts.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_fonts_a.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/theme_fonts_b.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/theme_fonts_c.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

cat "${bundle_src_folder}/clean_start_tiny__font_override.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start__font_override.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"


ls -la "${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "Bundle css Fonts write finish. \n-------\n\n"


exit 0;


