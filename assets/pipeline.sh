
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

echo "(2) Release (commit to repo)"

git commit -a -m "$1"

#vi makes -a and -m invisible (at least in powershell oof), which sucks, but they're still there so we good

echo "(3) Deploy application (on localhost)"
npm run start

echo "FIN"
