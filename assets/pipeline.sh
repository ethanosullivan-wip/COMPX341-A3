echo "(1) Build the application"
npm install

if npm run build; then
	echo "Build Succeeded"
else
	echo "Build Failed"
	exit
fi

echo "(2) Release (commit to repo)"

git commit -a -m "COMPX341-22A-A3 Committing from CI/CD Pipeline"
#vi makes -a and -m invisible, which sucks, but they're still there so we good

echo "(3) Deploy application (on localhost)"
npm run start

echo "FIN"
