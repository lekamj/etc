# tutorial from http://www.elasticsearchtutorial.com/elasticsearch-in-5-minutes.html

#Clear nodes
echo -e "\ncurl -u elastic:changeme -XDELETE 'http://docker-host:9200/*'";
curl -u elastic:changeme -XDELETE 'http://docker-host:9200/*';

echo -e "\ncurl -u elastic:changeme -XPOST 'http://docker-host:9200/_cache/clear';";
curl -u elastic:changeme -XPOST 'http://docker-host:9200/_cache/clear';

#Create Data
echo -e "\ncurl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/user/dilbert' -d '{"name": "Dilbert Brown"}'";
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/user/dilbert' -d '{"name": "Dilbert Brown"}';

echo -e "\ncurl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/1' -d '{"user":"dilbert","postDate":"2011-12-15","body":"Search is hard. Search should be easy.","title":"On search"}';";
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/1' -d '{"user":"dilbert","postDate":"2011-12-15","body":"Search is hard. Search should be easy.","title":"On search"}';

echo -e "\ncurl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/2' -d '{"user":"dilbert", "postDate":"2011-12-12", "body": "Distribution is hard. Distrution should be easy.", "title": "On Distributed search"}'";
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/2' -d '{"user":"dilbert", "postDate":"2011-12-12", "body": "Distribution is hard. Distrution should be easy.", "title": "On Distributed search"}';

echo -e "\ncurl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/3' -d '{"user":"dilbert","postDate":"2011-12-10", "body": "Lorem ipsum dolor sit amet, consectetuer adippiscing elt, sed diam", "title":"Lorem ipsum"}';";
curl -u elastic:changeme -XPUT 'http://docker-host:9200/blog/post/3' -d '{"user":"dilbert","postDate":"2011-12-10", "body": "Lorem ipsum dolor sit amet, consectetuer adippiscing elt, sed diam", "title":"Lorem ipsum"}';

#Check creation
echo -e "\ncurl -u elastic:changeme -XGET 'http://docker-host:9200/blog/user/dilbert?pretty=true';";
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/user/dilbert?pretty=true';

echo -e "\ncurl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/1?pretty=true';";
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/1?pretty=true';

echo -e "\ncurl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/2?pretty=true';";
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/2?pretty=true';

echo -e "\ncurl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/3?pretty=true';";
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/post/3?pretty=true';

echo -e "\ncurl -u elastic:changeme -XGET 'http://docker-host:9200/blog/_search?pretty=true' -d '{ "query": { "range": { "postDate" : { "from" : "2011-12-10", "to" : "2011-12-12"} }}}'";
curl -u elastic:changeme -XGET 'http://docker-host:9200/blog/_search?pretty=true' -d '{ "query": { "range": { "postDate" : { "from" : "2011-12-10", "to" : "2011-12-12"} }}}'
