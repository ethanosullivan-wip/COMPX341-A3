
if [ $# -eq 0 ]
then
	echo "No commit message supplied, please enter a message as an argument"
	echo "Usage: bash pipeline.sh [message]"
	exit
#Check if message is empty or too many arguments supplied
#could potentially use another argument as the message after the title
elif [ -z "$1" ] || [ $# -gt 1 ]
then
	echo "Please input exactly one commit message. Either it was empty or more than one were entered."
	echo "Usage: bash pipeline.sh [message]"
	exit
#else all input correct
fi

echo "(1) Build the application"
npm install

if npm run build; then
	echo "Build Succeeded"
else
	echo "Build Failed"
	exit
fi

echo "(2) Release (commit and push to repo)"

git commit -a -m "$1"
git push https://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@github.com/ethanosullivan-wip/COMPX341-A3.git

echo "(3) Deploy application (on localhost)"
npm run start

echo "FIN"
