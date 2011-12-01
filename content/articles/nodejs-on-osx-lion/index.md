--- 
title: NodeJS on OS X Lion
author: AJ
date: 2011-11-30
---

Don't kid yourself into thinking that you should use a [NodeJS pkg](https://sites.google.com/site/nodejsmacosx/).
That's good enough for opening the REPL, but very quickly you'll find that you need to do real development and that means you need real developer tools.

Pull up your britches on and get your Terminal on!

1. Start your Terminal! (I recommend [iTerm][iTerm]) and open the App Store

        open -a "App Store"

2. Install the XCode Installer from the App Store (you'll be waiting a few hours)

3. Install XCode

        ⌘ [space] to bring up Spotlight
        Search for "XCode"
        Select "Install XCode"
        ⏎

        Click Click, blah blah

4. Install and update [Homebrew](http://mxcl.github.com/homebrew/)

        /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
        cd /usr/local
        git checkout master ./
        git pull origin master

5. Install NodeJS

        brew install nodejs
        brew update nodejs

6. Test

        node -e '0.1 + 0.2'

As long as you don't end up with `0.3`, you've probably got NodeJS installed correctly.

7. Code Well

    <%= code 'example.js' %>

[iTerm]: http://iterm2.com
