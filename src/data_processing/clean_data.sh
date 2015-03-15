# TITLE: clean_data.sh
#
# AUTHO: Hobey Kuhn
#
# DESCR: Run this script to clean any downloaded data from EDGAR.
#        Cleaning includes removing all HTML tags (if exists).
#        Cleaning includes retrieving only the Management's Commentary in the file.
#        Once cleaned, the files are exported into an output folder.  At which point
#        the user must make sure the clean was successful.
#
# PARAM: $1 ticker : ticker name for data.  The script will read
#                    all of the files from ~/data/s\&p600/{ticker}
#
#
#

# initialization
PATH_TO_DATA="../../data/sp600"
TICKER="${1}"
PATH_TO_FILES="${PATH_TO_DATA}/${TICKER}"
HELPER_FILES_DIR="helpers"

if [ $# -eq 0 ]
  then
    echo "No argument was supplied. Please write the name of the stock ticker you wish to clean"
    exit
fi
echo "Retrieving data files from: ${PATH_TO_FILES}"


# loop through files
# create dir for output
if [ -d "${PATH_TO_FILES}/out" ]
  then
    read -p "out directory already exists. Would you like to overwrite? y/n: " yn
    case $yn in
        [Yy]* ) rm -r "${PATH_TO_FILES}/out"; break;;
        [Nn]* ) echo "quitting..."; exit;;
        * ) echo "Please answer y or n.";;
    esac
fi
    
mkdir "${PATH_TO_FILES}/out"

for f in ${PATH_TO_FILES}/*.txt
  do
    echo "Processing ${f}"
    echo "    Removing HTML tags..."
    source ${HELPER_FILE_DIR}/remove_html_tags.sh ${f}
    echo "    Retrieving MD&A..."
    source ${HELPER_FILE_DIR}/retrieve_mda.sh ${f}


done
