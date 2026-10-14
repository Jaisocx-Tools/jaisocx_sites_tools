#!/bin/bash

echo -e "  ✋  Bundle css html_tags write starts... \n"

set -a
. "./command/.env"





bundle_src_folder="./MediaAndStyles/${env_src__html_tags__folder_name}"
bundle_dest_folder="${env_dest_foldername}"
bundle_dest_fname="${env_dest__html_tags__filename}"

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





#; Settings for all html tags
#; rem size setting for the browser, font-size in pixels.
bundle_src_folder="./MediaAndStyles/${env_src__html_tags__folder_name}"

#; 2_087 b   |  clean_start__all_tags.css
cat "${bundle_src_folder}/clean_start__all_tags.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; display: inline || block || flex || grid
bundle_src_folder="./MediaAndStyles/${env_src__styles__folder_name}/styles_display"

#; 3_974 b   |  clean_start__display.css
# cat "${bundle_src_folder}/clean_start__display.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 2_463 b   |  clean_start_tiny__display.css
cat "${bundle_src_folder}/clean_start_tiny__display.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_002 b   |  clean_start_tiny_props_hardcoded__display.css
# cat "${bundle_src_folder}/clean_start_tiny_props_hardcoded__display.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; 100% height n width, zero paddings, margins and borders.
#; tags: html, head, body, main||site, style, script.
bundle_src_folder="./MediaAndStyles/${env_src__site__folder_name}"

#; 3_592 b   |  clean_start__site.css
# cat "${bundle_src_folder}/clean_start__site.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 2_228 b   |  clean_start_props_hardcoded__site.css
cat "${bundle_src_folder}/clean_start_props_hardcoded__site.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; scrollbars
bundle_src_folder="./MediaAndStyles/${env_src__styles__folder_name}/styles_scrollbar"

#; 1_188 b   |  clean_start__scrollbar.css
cat "${bundle_src_folder}/clean_start__scrollbar.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   835 b   |  clean_start_props_hardcoded__scrollbar.css
# cat "${bundle_src_folder}/clean_start_props_hardcoded__scrollbar.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#;
bundle_src_folder="./MediaAndStyles/${env_src__html_tags__folder_name}"

#; 5_869 b   |  clean_start__h.css
# cat "${bundle_src_folder}/clean_start__h.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 3_009 b   |  clean_start_tiny__h.css
cat "${bundle_src_folder}/clean_start_tiny__h.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_785 b   |  clean_start_tiny_props_hardcoded__h.css
# cat "${bundle_src_folder}/clean_start_tiny_props_hardcoded__h.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; 2_081 b   |  clean_start__text.css
cat "${bundle_src_folder}/clean_start__text.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; text line-height and font-size dev mode helper
#; 1_745 b   |  clean_start__marker.css
# cat "${bundle_src_folder}/clean_start__marker.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; like an example for styles
#; 1_358 b   |  clean_start__label.css
cat "${bundle_src_folder}/clean_start__label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   587 b   |  clean_start__anchor.css
cat "${bundle_src_folder}/clean_start__anchor.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_161 b   |  clean_start__p.css
cat "${bundle_src_folder}/clean_start__p.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   586 b   |  clean_start__pre.css
cat "${bundle_src_folder}/clean_start__pre.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; 6_394 b   |  clean_start__ol_li.css
# cat "${bundle_src_folder}/clean_start__ol_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 5_465 b   |  clean_start__ul_li.css
# cat "${bundle_src_folder}/clean_start__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 8_951 b   |  clean_start__lists.css
# cat "${bundle_src_folder}/clean_start__lists.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 6_770 b   |  clean_start_tiny__lists.css
cat "${bundle_src_folder}/clean_start_tiny__lists.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 5_562 b   |  clean_start_tiny_props_hardcoded__lists.css
# cat "${bundle_src_folder}/clean_start_tiny_props_hardcoded__lists.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; 3_929 b   |  clean_start__dl_dt_dd.css
# cat "${bundle_src_folder}/clean_start__dl_dt_dd.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; 6_395 b   |  clean_start__table.css
# cat "${bundle_src_folder}/clean_start__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 3_995 b   |  clean_start_tiny__table.css
cat "${bundle_src_folder}/clean_start_tiny__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 2_525 b   |  clean_start_tiny_props_hardcoded__table.css
# cat "${bundle_src_folder}/clean_start_tiny_props_hardcoded__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#;   983 b   |  clean_start__fieldset_legend.css
# cat "${bundle_src_folder}/clean_start__fieldset_legend.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   836 b   |  clean_start__input.css
# cat "${bundle_src_folder}/clean_start__input.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   887 b   |  clean_start__textarea.css
# cat "${bundle_src_folder}/clean_start__textarea.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_603 b   |  clean_start__select.css
# cat "${bundle_src_folder}/clean_start__select.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 1_364 b   |  clean_start__button.css
# cat "${bundle_src_folder}/clean_start__button.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"







#  clean_start__anchor.css
#  clean_start__button.css
#  clean_start__code_tt.css
#  clean_start__dl_dt_dd.css
#  clean_start__fieldset_legend.css
#  clean_start__h.css
#  clean_start__input.css
#  clean_start__label.css
#  clean_start__marker.css
#  clean_start__ol_li.css
#  clean_start__p.css
#  clean_start__pre.css
#  clean_start__select.css
#  clean_start__site.css
#  clean_start__table.css
#  clean_start__text.css
#  clean_start__textarea.css
#  clean_start__ul_li.css



#  bundle_src_folder="./MediaAndStyles/${env_src__html_tags__folder_name}"
#
#  #;   587 b   |  clean_start__anchor.css
#  cat "${bundle_src_folder}/clean_start__anchor.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 1_364 b   |  clean_start__button.css
#  cat "${bundle_src_folder}/clean_start__button.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 3_929 b   |  clean_start__dl_dt_dd.css
#  cat "${bundle_src_folder}/clean_start__dl_dt_dd.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #;   983 b   |  clean_start__fieldset_legend.css
#  cat "${bundle_src_folder}/clean_start__fieldset_legend.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 1_286 b   |  clean_start__h.css
#  cat "${bundle_src_folder}/clean_start__h.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #;   836 b   |  clean_start__input.css
#  cat "${bundle_src_folder}/clean_start__input.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 1_358 b   |  clean_start__label.css
#  cat "${bundle_src_folder}/clean_start__label.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 1_745 b   |  clean_start__marker.css
#  cat "${bundle_src_folder}/clean_start__marker.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 6_394 b   |  clean_start__ol_li.css
#  cat "${bundle_src_folder}/clean_start__ol_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 1_161 b   |  clean_start__p.css
#  cat "${bundle_src_folder}/clean_start__p.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #;   586 b   |  clean_start__pre.css
#  cat "${bundle_src_folder}/clean_start__pre.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 1_603 b   |  clean_start__select.css
#  cat "${bundle_src_folder}/clean_start__select.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 5_320 b   |  clean_start__table.css
#  cat "${bundle_src_folder}/clean_start__table.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 2_081 b   |  clean_start__text.css
#  cat "${bundle_src_folder}/clean_start__text.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #;   887 b   |  clean_start__textarea.css
#  cat "${bundle_src_folder}/clean_start__textarea.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#
#  #; 5_465 b   |  clean_start__ul_li.css
#  cat "${bundle_src_folder}/clean_start__ul_li.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"
#



#; ------------------------------------------------------------------------

if [ ! -e "./${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    echo -e "ERROR: ❌  didn't write Html tags. \n-------\n\n"
    exit 3;
fi



ls -la "./${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "FINISH: ✅  Html tags were written. \n-------\n\n"

exit 0;




