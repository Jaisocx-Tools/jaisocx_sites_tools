#!/bin/bash

echo -e "Bundle css Theme base write starts... \n"

set -a
. "./command/.env"


bundle_src_folder="./MediaAndStyles/themes/theme_base/theme_tags"
bundle_dest_fname="clean_start_tiny__theme_base.css"

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


cat "${bundle_src_folder}/theme_base__all_tags.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__site.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__h.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__text.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__anchor.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__marker.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__p.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__pre.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__ol_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__fieldset_legend.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__input.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__textarea.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__select.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__button.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__dl_dt_dd.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
cat "${bundle_src_folder}/theme_base__scrollbar.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"


ls -la "${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "Bundle css Theme base write finish. \n-------\n\n"


exit 0;


