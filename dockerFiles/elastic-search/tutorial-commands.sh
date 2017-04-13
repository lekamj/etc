# tutorial from http://www.elasticsearchtutorial.com/elasticsearch-in-5-minutes.html

curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/user/dilbert' -d '{"name": "Dilbert Brown"}';
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/1' -d '{"user":"dilblert","postDate":"2011-12-15","body":"Search is hard. Search should be easy.","title":"On search"}';
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/2' -d '{"user":"dilbert", "postDate":"2011-12-12", "body": "Search is hard. Search should be easy.", "title": "On search"}';
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/3' -d '{"user":"dilbert","postDate":"2011-12-10", "body": "Lorem ipsum dolor sit amet, consectetuer adippiscing elt, sed diam", "title":"Lorem ipsum""}';
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/3' -d '{"user":"dilbert","postDate":"2011-12-10", "body": "Lorem ipsum dolor sit amet, consectetuer adippiscing elt, sed diam", "title":"Lorem ipsum"}';
curl -XGET 'http://docker-host:9200/blog/user/diblert?pretty=true';
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/user/diblert?pretty=true';
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/diblert?pretty=true';
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/1?pretty=true';
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/user/dilbert?pretty=true';
