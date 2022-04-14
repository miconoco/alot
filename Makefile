
install: .venv

.venv:
	@printf 'requires: apt install python3-gpg python3-notmuch2 libnotmuch-dev notmuch'
	@python3 -m venv --system-site-packages $@
	@$@/bin/python3 -m pip install --upgrade pip
	@$@/bin/pip install -e .

clean:
	@rm -rf -- .venv

.PHONY: clean install
