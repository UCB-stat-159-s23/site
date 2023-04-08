html:
	jupyter-book build .

conf.py: _config.yml _toc.yml
	jupyter-book config sphinx .

test:
	@echo "python -m http.server --directory ${PWD}/_build/html"


html-hub: conf.py
	sphinx-build  . _build/html -D html_baseurl=${JUPYTERHUB_SERVICE_PREFIX}proxy/absolute/8000
	@echo
	@echo "To start the Python http server, use:"
	@echo "python -m http.server --directory ${PWD}/_build/html"
	@echo "and visit this link with your browser:"
	@echo "https://stat159.datahub.berkeley.edu/user-redirect/proxy/8000/index.html"

.PHONY: clean
clean:
	rm -rf _build/html/
