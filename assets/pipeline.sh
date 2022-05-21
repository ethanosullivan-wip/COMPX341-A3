echo "(1) Build the application"
npm install

if npm run build; then
	echo "Build Succeeded"
else
	echo "Build Failed"
	exit
fi

echo "(2) Release (commit to repo)"

git commit -a
#vi was making -a invisible, kinda concerned, so I put it in quotes
COMPX341-22A-A3 Committing from CI/CD Pipeline

echo "(3) Deploy application (on localhost)"
npm run start

echo "FIN"
