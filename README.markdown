#OKCjs Website

##How to Update the Site
* pull down the latest code from the repo (git fetch origin master, git merge origin master)
* make sure you are on a new branch after you merge with master: git checkout -b thisMonthsUpdate
* install virtual box and vagrant (to update the website, it is not necessary to update your machine with Ruby. Everything is already included in the Vagrant file.)
* provision a virutal machine to edit the octopress site by typing: vagrant up
* ssh into the virtual box you just created by typing: vagrant ssh
* you have sucessfully ssh'd into the box if you see a welcome text from vagrant. 
* you should see the list of files by typing: ls. if you don't see the files, back out of the directory a few steps then cd back into the folder. 
* Check out the project's structure in your ruby virtual box. You should see all the folders and files. Now, start by typing: ``rake preview``. This iwll handle dependencies and a server will start on port 4000 (localhost:4000). you can stop the preview by typing: ctrl + c in the same command prompt you started running your local server on.
* Check out the okcjs website on your localhost. Type ``http://localhost:4000/`` in your browser. Looks fancy! So far, so good.
* At this point, explore the project directory. You should see two folders of note: ``source`` and ``public``. Source is what we will be editing, and public is the generated folder that reads source and basically creates the static okcjs site. 
* Navigate to the ``source/_posts`` subdirectory. You will see a smattering of .markdown files. There is a way to generate a new markdown file via the octopress command line, but honestly its easier to simply make a copy of one of the existing files and rename it. Go ahead and make the new file, and be careful to follow our file nameing convention [date]-[topic]. This helps keep it organized!
* After creating and renaming a new .markdown file, open the file in your editor. Make sure to edit the metainformation atop. Especially the date, its very important.
```markdown
layout: post 
title: "Meeting: [date] - [topic]"
date: 20yy-m-dd 11:30
comments: true
categories: [tags go here]
```

* Now comes the updating part: Fill out the markdown post, with standard markdown convention. Since you started with an older post, this hsould be very obvous how it needs to be updated.
* There is probably a poster or some art related to this post  These go in the source/images/posters subdirectory. Muck like the markdown post, make certain to follow the existing naming convention. That really helps.
* other images go in the logos, sponsors, and misc directories respectively.
* want to see how its going? The most reliable, albeit slow way is to stop the server, type rake generate and start it back up. You're guaranteed to see all your changes this way. ther is rake watch too, that does the livereload stuff, but ocassionaly it does not work as advertised.
* Now submit a pull request!


