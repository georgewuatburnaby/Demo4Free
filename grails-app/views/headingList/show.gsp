<html ng-app>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.5/angular.min.js"></script>

<script type="text/javascript">
	//initial google feed loading api
	google.load("feeds", "1");

	var newsFeedUrl = "https://news.google.com/news/feeds?output=rss";
	function NewsListControl($scope, $http) {

		// the following code will run into Access allow problems, going to instead load with google api
		/*
		$http.post("https://news.google.com/news/feeds?output=rss").success(
				function(data, status, headers, config) {
					$scope.data = data;
				}).error(function(data, status, headers, config) {
			$scope.status = status;
		}); */

		// loads google news rss feed with google api
		var feed = new google.feeds.Feed(newsFeedUrl);
		feed.setNumEntries(12);
		feed.load(function(result) {
			$scope.$apply(function() {
				$scope.newsList = result.feed.entries;
				console.log($scope.newsList);
			});
		});

	}
</script>
</head>
<body>
	<div ng-controller="NewsListControl">
		<li ng-repeat="news in newsList"><a href="{{news.link}}">{{news.title}}</a></li>
	</div>

</body>
</html>