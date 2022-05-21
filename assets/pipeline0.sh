#welp I've been editing this file. Gotta go change the actual file.
echo "(1) Build the application"
npm install

if npm run build; then
	echo "Build succeeded"
else
	echo "Build Failed"
	exit
fi

echo "(2) Release (commit and push(?) to repo)"
# Originally was planning to push as well but now I think about it that kinda 
	# doesn't make sense. We don't need (or want) to update the main project
	# every time we run the CICD, but we may want to manually do it later on,
	# so let's just commit.

	#even though I went through all the trouble to set that up.

git commit -a
COMPX341-22A-A3 Commiting from CI/CD Pipeline

echo "(3) Deploy application (on localhost)"
npm run start

echo "FIN"
