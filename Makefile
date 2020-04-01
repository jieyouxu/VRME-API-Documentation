.PHONY: deploy
deploy: book
    @echo "====> deploying to github"
    git worktree add /tmp/vrme_api_docs gh-pages
    rm -rf /tmp/vrme_api_docs/*
    cp -rp book/* /tmp/vrme_api_docs/
    cd /tmp/vrme_api_docs && \
        git add -A && \
        git commit -m "deployed on $(shell date) by ${USER}" && \
        git push origin gh-pages
