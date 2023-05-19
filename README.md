# GitHub AutoScraper + Change Alerts

Using GitHub Actions and Python, this repo automatically scrapes the content of a news site homepage every four hours and sends the content to me as an attachment in my email **if it has been changed**. You'll want to update the repository secrets with a `SENDGRID_API_KEY`, `TO_EMAIL` and `FROM_EMAIL`.

Based on @simonw's [Git Scraping](https://simonwillison.net/2020/Oct/9/git-scraping/).
