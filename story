<article $(article_attrs)>
  <header $(article_header_attrs)>
    <a href="$(base_url)/$(urlencode(file_path))"
       rel="bookmark" title="link to this post"
       $(article_header_a_attrs)>
      <h2 $(article_h2_attrs)>
        $(title)
      </h2>
    </a>
  </header>
  $(body)
  <footer $(article_footer_attrs)>
    <nav $(article_footer_nav_attrs)>
      <ul $(article_footer_ul_attrs)>
        <li $(article_time_li_attrs)>
          posted at:
          <time datetime="$(yr)-$(mo_num)-$(da)" $(article_time_attrs)>
            $(date)
          </time>
        </li>
        <li $(article_path_li_attrs)>
          path:
          <a href="$(base_url)/$(urlencode(absolute_path))" title="path"
             $(article_path_a_attrs)>
            $(absolute_path)
          </a>
        </li>
        $(article_footer_lis)
      </ul>
    </nav>
  </footer>
</article>
