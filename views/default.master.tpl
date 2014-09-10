<!DOCTYPE html>
<html lang="en" class="sticky-footer-html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {asset name="Head"}
    <style type="text/css">
    {literal}
      .navbar-brand img {
        margin-top: -10px;
        max-height: 32px;
      }
      .page-content h1.H,
      .page-content .HomepageTitle,
      .page-content .page-header,
      .page-content .PageTitle {
        margin-top: 10px;
      }
      
      .well.search-form {
        margin-top: 15px;
      }
      
      .CategoryFilter {
        color: transparent;
        font-size: 0.1em;
      }
      
      .CategoryFilterTitle {
        color: #777;
        font-size: 14px;
        border-bottom: 1px solid #ddd;
        margin-bottom: 4px;
      }
      
      .CategoryFilterOptions span + span {
        color: #777;
        font-size: 14px;
        display: block;
      }
      
      .CategoryFilterOptions span + span a {
        color: #777;
      }
      
      .CategoryFilterOptions span + span a:before {
        content: "\f0c8";
        display: inline-block;
        min-width: 1em;
        font-family: FontAwesome;
        font-style: normal;
        font-weight: 400;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        line-height: 1;
        text-align: center;
        cursor: pointer;
        margin-right: 0.5em;
      }
      
      .CategoryFilterOptions span + span.CurrentFilter:before {
        content: "\f14a";
        color: #428bca;
        display: inline-block;
        min-width: 1em;
        font-family: FontAwesome;
        font-style: normal;
        font-weight: 400;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        line-height: 1;
        text-align: center;
        margin-right: 0.5em;
      }
      
      .page-content .MItem.RSS {
        display: none;
      }
    {/literal}
    </style>
  </head>
  <body id="{$BodyID}" class="{$BodyClass} sticky-footer-body">

    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">{t c="Toggle navigation"}</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{link path="home"}">{logo}</a>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            {categories_link}
            {discussions_link}
            {activity_link}
          </ul>
          {if $User.SignedIn}
            <ul class="nav navbar-nav navbar-right hidden-xs">
              {module name="MeModule"}
            </ul>
            <ul class="nav navbar-nav navbar-right visible-xs">
              {profile_link}
              {inbox_link}
              {bookmarks_link}
              {dashboard_link}
              {signinout_link}
            </ul>
          {else}
            <ul class="nav navbar-nav navbar-right">
              {signin_link}
            </ul>
          {/if}
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <section class="container">
      <div class="row">

        <main class="page-content" role="main">
          {asset name="Content"}
        </main>

        <aside class="page-sidebar" role="complementary">
          {asset name="Panel"}
          {if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList"))}
            <div class="well search-form">{searchbox}</div>
          {/if}
        </aside>

      </div>
    </section>

    <footer class="page-footer sticky-footer">
      <div class="container">
        <div class="clearfix">
          <p class="pull-left">{t c="Copyright"} &copy; {$smarty.now|date_format:"%Y"} <a href="http://arkowl.com/">ArkOwl LLC.</a></p>
        </div>
        {asset name="Foot"}
      </div>
    </footer>

    {event name="AfterBody"}

  </body>
</html>
