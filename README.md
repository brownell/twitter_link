twitter_links.rb is a command line app.

make sure you have the grackle gem installed:

[sudo] gem install grackle

cd to the repo directory and type:

./twitter_links.rb Snowden

or 

ruby twitter_links.rb Snowden

where Snowden is a hashtag.  (Do not include the hash symbol.)

It will output the unique http links in the last 100 most recent tweets using the given hashtag parameter.
