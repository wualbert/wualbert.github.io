# Albert Wu's Website

This website is adapted from [Leonid Keselman's website](https://leonidk.com), which is a modification of [Jon Barron's website](https://jonbarron.info/) design.

This repo is built on a fork of **Jekyll Now** from [this repository](https://github.com/barryclark/jekyll-now). **Jekyll** is a static site generator that's perfect for GitHub hosted blogs ([Jekyll Repository](https://github.com/jekyll/jekyll))


## Quick Start (from Jekyll Now)

### Fork Jekyll Now to your User Repository

Fork this repo, then rename the repository to yourgithubusername.github.io.

Your Jekyll blog will often be viewable immediately at <https://yourgithubusername.github.io> (if it's not, you can often force it to build by completing step 2)

![Step 1](/images/step1.gif "Step 1")

### Customize and view your site

Enter your site name, description, avatar and many other options by editing the _config.yml file. You can easily turn on Google Analytics tracking, Disqus commenting and social icons here too.

Making a change to _config.yml (or any file in your repository) will force GitHub Pages to rebuild your site with jekyll. Your rebuilt site will be viewable a few seconds later at <https://yourgithubusername.github.io> - if not, give it ten minutes as GitHub suggests and it'll appear soon

> There are 3 different ways that you can make changes to your blog's files:

> 1. Edit files within your new username.github.io repository in the browser at GitHub.com (shown below).
> 2. Use a third party GitHub content editor, like [Prose by Development Seed](http://prose.io). It's optimized for use with Jekyll making markdown editing, writing drafts, and uploading images really easy.
> 3. Clone down your repository and make updates locally, then push them to your GitHub repository.

![_config.yml](/images/config.png "_config.yml")

### Publish your first blog post

Edit `/_posts/2014-3-3-Hello-World.md` to publish your first blog post. This [Markdown Cheatsheet](http://www.jekyllnow.com/Markdown-Style-Guide/) might come in handy.

![First Post](/images/first-post.png "First Post")

> You can add additional posts in the browser on GitHub.com too! Just hit the + icon in `/_posts/` to create new content. Just make sure to include the [front-matter](http://jekyllrb.com/docs/frontmatter/) block at the top of each new blog post and make sure the post's filename is in this format: year-month-day-title.md

> See default.html line 212 for available tags.

## Image thumbnail generation
I use thumbnails, so I can upload arbitrary sized images but then only display small ones. The `_make_thumbnails.sh` script generates them and the html template looks in `tn/` for all images.
Note that the script depends on `convert` from ImageMagick. If you're on MacOS, run
```
brew install imagemagick
```

Here is [one way](https://discussions.apple.com/thread/7768583?sortBy=best) to create a round profile picture on MacOS.


## File structure explained
* `_config.yml` - site configuration
* `_posts/` - blog posts
* `pdfs/` - directory for pdfs such as manuscripts
* `images/` - directory for images. Run `_make_thumbnails.sh` to generate thumbnails (which lives in `tn/`)

You should only need to edit `_config.yml` rarely.
Adding content mostly involves adding posts to `_posts/`, pdfs to `pdfs/`, and images to `images/`.


## Issues
* The way default.html is written, there is an extra `/` at the end of all posts.
* There are 2 categories of post with slightly differerent formatting, so changing sizing requires edits in multiple paces. 

### Issues carried over from Leonid's site
* In general, jekyll will try to build a full page for every post. I skip that by forcing `permalink: /`. This creates multiple entries in sitemap.xml for index.html but is otherwise fine. 
* If you want multiple paragraphs, consider using `excerpt_separator: <!--more-->` in `_config.yml`, for my own use I didn't need this. 
* My own posts have lots of extra stuff left over from my old jekyll design ("author", long descriptions, etc.), feel free to ignore them