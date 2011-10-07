UtahJS.com
==========

This is the repository for the [utahjs.com](http://utahjs.com) website. All are
welcome to contribute.

How to Contribute
-----------------

Visit #utahjs on freenode for help _any time_.  I'm there most of the day.

Contributing is easy. The website is built on [nanoc][nanoc], a static site
compiler.  Contributing is as easy as adding a member profile yaml file,
and then writing an article in markdown.

1.  Fork the repository, check out a new branch off of master.

2.  Add your member profile to `content/members`. It should look something
    like this:

        name: Ryan Florence
        email: your.email@ddress.com
        location: West Jordan, UT
        github: rpflorence
        twitter: ryanflorence
        website: http://ryanflorence.com
        about: Yadda yadda yadda

    This information will display on  your articles and on the members page.
    The name of your yaml file is a unique identifier for articles you write.
    More on that in a minute.

3.  Write an article in markdown, html, or haml in the
    `content/articles` directory.  The name of the file becomes the url
    of the article.  At the top of the article is some configuration.

        ---
        title: Sample article title
        author: Ryan Florence
        date: 2011-08-17
        ---
        
        Then write your article here.

    Your article extension needs to match the filter you want:
    
        article-name.md -> filtered with markdown
        article-name.haml -> filtered with haml
        article-name.html -> not filtered

4.  Push to your repository and send a pull request.

You can look at `articles/example` to see how to use some of the helpers.

Viewing Locally
---------------

If you want to view the site locally it's a bit more involved. You'll need ruby
installed on your machine.  If you're on Mac OS X, you've already got it.

### Setup

0.  Post to utahjs@googlegroups.com and ask for Push / Pull access
1.  Fork the repository

        UTAHJS_HOME=~/Code
        cd ${UTAHJS_HOME}
        git clone git@github.com:UtahJS/utahjs.com.git

2.  Install rvm, ruby, and [bundler][bundler] (Ubuntu / OS X)

        cd ${UTAHJS_HOME}/utahjs.com
        bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
        rvm install ruby-1.8.7
        echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc
        rvm use 1.8.7@utahjs --create
        # that's just a shortcut for:
        #   rvm use ruby--1.8.7
        #   rvm gemset create utahjs
        #   rvm gemset use utahjs
        rvm gemset list
        gem install bundler

3.  Now, with bundler, install the gem dependencies

        bundle install

    All of the required ruby gems, including nanoc, should be installed locally
    for this project now.

### Commands

Nanoc ships with several commands, but since the site uses bundler you
need to prepend all commands with `bundle exec`.  For example, nanoc
has a static file web server:

    nanoc view
    # with bundler
    bundle exec nanoc view

To compile the site:

    bundle exec nanoc compile

Autocompile compiles the site on each visit, so you don't have to compile after
each change you make:

    bundle exec nanoc autocompile

Check out the [nanoc][nanoc] website to learn more about the platform utahjs.com is built on.

  [nanoc]:http://nanoc.stoneship.org/
  [bundler]:http://gembundler.com/
