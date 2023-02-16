# pyrite
Python and Playwright

![example workflow](https://github.com/jasonmci/pyrite/actions/workflows/playwright.yml/badge.svg)

## The Daily Routine
- [ ] Run the following command
```
ptw -- --last-failed --new-first
```


## Pytest watch mode
One of my favorite things about automated test is in watch mode

https://johnfraney.ca/blog/pytest-watched-failed-tests/

The fastest way to focus on the testing that needs to be written

```
ptw -- --last-failed --new-first
```

Where the -- separator denotes where pytest-watch args stop and pytest arguments start.
