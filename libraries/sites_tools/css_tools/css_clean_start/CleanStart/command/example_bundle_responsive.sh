#!/bin/bash

echo -e "  ✋  Bundle Responsive write starts... \n"

set -a
. "./command/.env"





bundle_src_folder="./MediaAndStyles/${env_src__responsive__folder_name}"
bundle_dest_folder="${env_dest_foldername}"
bundle_dest_fname="${env_dest__responsive__filename}"

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





#; 1_966 b   |  clean_start_tiny__mobile_friendly.css
cat "${bundle_src_folder}/clean_start_tiny__mobile_friendly.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"

#; 3_201 b   |  clean_start__mobile_friendly.css
# cat "${bundle_src_folder}/clean_start__mobile_friendly.css" >> "${bundle_dest_folder}/${bundle_dest_fname}"





#; ------------------------------------------------------------------------

if [ ! -e "./${bundle_dest_folder}/${bundle_dest_fname}" ]; then
    echo -e "ERROR: ❌  didn't write Clean start responsive. \n-------\n\n"
    exit 3;
fi



ls -la "./${bundle_dest_folder}/${bundle_dest_fname}"

echo -e "FINISH: ✅  Clean start responsive written. \n-------\n\n"

exit 0;




