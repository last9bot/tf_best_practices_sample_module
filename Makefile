SEMVER := semver.py

check-semver:
	@which ${SEMVER} > /dev/null

get-version: check-semver
	@echo "----- Getting latest version -----" 
	${SEMVER} -a get-version

git-release:
	@echo "----- Pushing to git -----" 
	git add VERSION
	git commit -m "Bumped version to `cat VERSION`"
	git tag -a v`cat VERSION` -m "v`cat VERSION`"
	git push
	git push --tags

_release-major: check-semver
	@echo "----- Bumping major -----" 
	${SEMVER} -a update-major

release-major: _release-major git-release get-version

_release-minor: check-semver
	@echo "----- Bumping minor -----" 
	${SEMVER} -a update-minor

release-minor: _release-minor git-release get-version

_release-patch: check-semver
	@echo "----- Bumping patch -----" 
	${SEMVER} -a update-patch

release-patch: _release-patch git-release get-version

release: release-patch
