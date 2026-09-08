#!/bin/bash

echo -e "Bundle css html_tags write starts... \n"

set -a
. "./command/.env"


bundle_src_folder="./MediaAndStyles/clean_start_tiny__html_tags"
bundle_dest_fname="clean_start_tiny__html_tags_n_styles.css"

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



bundle_src_folder="./MediaAndStyles/clean_start_tiny__html_tags"
cat "${bundle_src_folder}/clean_start_tiny__all_tags.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__site.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

bundle_src_folder="./MediaAndStyles/clean_start_tiny__styles/styles_display"
# cat "${bundle_src_folder}/clean_start_tiny__standard_block_tags__display.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__display.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

bundle_src_folder="./MediaAndStyles/clean_start_tiny__styles"
cat "${bundle_src_folder}/clean_start_tiny__scrollbar.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

bundle_src_folder="./MediaAndStyles/clean_start_tiny__html_tags"
cat "${bundle_src_folder}/clean_start_tiny__h.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__anchor.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__code_tt.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__dl_dt_dd.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__fieldset_legend.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__input.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__marker.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__ol_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__p.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__pre.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__select.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/clean_start_tiny__text.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__textarea.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
# cat "${bundle_src_folder}/clean_start_tiny__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"



ls -la "${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "Bundle css html_tags write finish. \n-------\n\n"


exit 0;


