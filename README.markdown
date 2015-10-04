A customizable HTML5 flavour for Pyblosxom.

### Features

* Minimal, valid HTML5.

* [Semantic HTML5 elements](http://diveinto.html5doctor.com/semantics.html)
  including `<header>` and `<hgroup>`, `<nav>`, `<article>`, `<footer>` and
  `<time>`.

* `rel="alternate"` links to the Atom and RSS feeds.

* A `rel="author"` link in the site `<footer>`. This uses your
  `py["blog_author"]` `config.py` setting and a `py["author_link"]` `config.py`
  setting for the `href`. For example:

  ```python
  py["blog_author"] = "Sean Hammond"
  py["author_link"] = "http://seanh.cc/"
  ```

* A `rel="license"` link in the site `<footer>`. Uses your `py["blog_rights"]`
  `config.py` setting.

* Favicon support, add a line to your `config.py` file like:

  ```python
  py["favicon"] = "http://static.example.com/favicon.ico"
  ```

* Customization support, in your `config.py` file you can specify custom
  elements and attributes to be inserted into the templates. See below.


### Installation

`git clone` or download this repo into an `html5.flav` directory in your
`flavours` directory, then set:

```python
py["default_flavour"] = "html5"
```

in your `config.py` file.


### Customization

There are lots of optional config file settings that can be used to insert
HTML elements and attributes into the templates, for example to insert links
to CSS files or to add CSS classes.

For now, to find all the settings search the template files for `$(`.

For example, here are some `config.py` settings that include some CSS and
JavaScript files from [Bootstrap](http://getbootstrap.com/) and add a few CSS
classes, to create a simple Bootstrap theme:

```python
py["head_elements"] = """
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" />
  <link rel="stylesheet" href="http://static.seanh.cc/circa.seanh.cc.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
"""
py["body_attrs"] = 'class="page"'
py["header_attrs"] = 'class="main-header"'
py["header_nav_ul_attrs"] = 'class="list-unstyled list-inline"'
py["article_attrs"] = 'class="post"'
py["article_footer_attrs"] = 'class="text-muted post-footer"'
py["article_footer_ul_attrs"] = 'class="list-unstyled list-inline"'
py["footer_attrs"] = 'class="text-muted"'
py["footer_ul_attrs"] = 'class="list-unstyled list-inline"'
```

With these settings `http://static.seanh.cc/circa.seanh.cc.css` would be a link
to a CSS file containing custom CSS rules to be applied on top of Bootstrap's,
for example:

```css
.page {
  margin-top:2em;
  margin-left:2em;
}

.main-header {
  margin-bottom:3em;
}

.post {
  margin-bottom:3em;
}

.post-footer {
  margin-top:2em;
}
```
