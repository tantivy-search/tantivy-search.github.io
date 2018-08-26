# Avant Propos

Tantivy is a *search* engine *library* for Rust.
Let's break this down.

- *Search* here means full-text search : fundamentally, tantivy is here to help you
find out for a specific query what are the most relevant documents in your corpus.
But modern search UI are so much more : categories, autocomplete, fuzzy search, good
relevancy, collapsing, highlighting, geosearch.
While some of these features are not available in tantivy yet, Tantivy's objective is
to offer a solid toolbox to make it possible for you to create the best experience.
But keep in mind this is a toolbox. Which bring us to the second keyword.
- *Library* means that tantivy can help you build a great search experience, it
might require you to write code.
