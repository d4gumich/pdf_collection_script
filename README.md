# pdf_collection_script
Bash script which is run in the background to download all the PDFs from the target websites

urls - contains a dictionary of the organisation name and its website link.
pdf_download.sh - contains the wget command which is run for each organisation website link.

"nohup sh pdf_download.sh &" - is the command used to run this script in the background. This way the synchronous downloads are wrapped in a asynchronous process.
" tail -f nohup.out" is used for monitoring the background process and "tail -f x-redirect=50" is used to monitor the downloads.
Command to monitor the wget process is - "ps aux | grep wget"

"gdrive upload --parent 10BjB8tejmXxftIK2PMUsg2emi1RM1duL --recursive FOLDER_NAME" - used to upload the command to the chetah-phase-2 google drive.
