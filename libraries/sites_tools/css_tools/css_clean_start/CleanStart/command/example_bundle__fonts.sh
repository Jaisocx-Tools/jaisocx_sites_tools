#!/bin/bash

echo -e "  ✋  Bundle css Fonts write starts... \n"

set -a
. "./command/.env"





bundle_src_folder="./MediaAndStyles/${env_src__fonts__folder_name}"
bundle_dest_folder="${env_dest_foldername}"
bundle_dest_fname="${env_dest__fonts__filename}"

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





# -- Fonts themes --
#; Multiplatform tested 4 fonts variables for 4 font families groups

#; the smallest fonts file (526 B)
#;   526 b   |  theme_tiny__fonts_old_good_fonts.css
# cat "${bundle_src_folder}/theme_tiny__fonts_old_good_fonts.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; Old MS fonts
#; 1_600 b   |  theme_fonts_old_good_fonts.css
cat "${bundle_src_folder}/theme_fonts_old_good_fonts.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"



#;   736 b   |  theme_fonts_a.css
cat "${bundle_src_folder}/theme_fonts_a.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   763 b   |  theme_fonts_b.css
cat "${bundle_src_folder}/theme_fonts_b.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#;   715 b   |  theme_fonts_c.css
cat "${bundle_src_folder}/theme_fonts_c.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





# -- Font override --
#; Sets the font family group by the variable with the fallback fonts in the same font family group
#; nearly the same, less flexibility, however has the 3 times smaller size: (780 B)
#;   780 b   |  clean_start_tiny__font_override.css
# cat "${bundle_src_folder}/clean_start_tiny__font_override.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; the flexible selectors version
#; 2_403 b   |  clean_start__font_override.css
cat "${bundle_src_folder}/clean_start__font_override.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; ------------------------------------------------------------------------

if [ ! -e "./${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    echo -e "ERROR: ❌  didn't write Fonts. \n-------\n\n"
    exit 3;
fi



ls -la "./${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "FINISH: ✅  Fonts were written. \n-------\n\n"

exit 0;




