# ng-pdfviewer

[ ![Codeship Status for CaseRails/django-ng-pdfviewer](https://www.codeship.io/projects/8c2429f0-5d66-0131-b277-0261d5c39723/status?branch=master)](https://www.codeship.io/projects/11983) 

AngularJS PDF viewer directive using pdf.js.

``` html
<button ng-click="prevPage()">&lt;</button>
<button ng-click="nextPage()">&gt;</button>
<br>
<span>{{currentPage}}/{{totalPages}}</span>
<br>
<pdfviewer src="test.pdf" on-page-load='pageLoaded(page,total)' id="viewer"></pdfviewer>
```

and in your AngularJS code:

``` js

var app = angular.module('testApp', [ 'ngPDFViewer' ]);

app.controller('TestCtrl', [ '$scope', 'PDFViewerService', function($scope, pdf) {
	$scope.viewer = pdf.Instance("viewer");

	$scope.nextPage = function() {
		$scope.viewer.nextPage();
	};

	$scope.prevPage = function() {
		$scope.viewer.prevPage();
	};

	$scope.pageLoaded = function(curPage, totalPages) {
		$scope.currentPage = curPage;
		$scope.totalPages = totalPages;
	};
}]);
```

## Requirements

* AngularJS (http://angularjs.org/)
* PDF.js (http://mozilla.github.io/pdf.js/)

## Usage

Include `ng-pdfviewer.js` as JavaScript file, along with `pdf.js` and `pdf.compat.js`.

Declare `ngPDFViewer` as dependency to your module.

You can now use the `pdfviewer` tag in your HTML source.

## License

MIT. See LICENSE.md for further details.

## Author

Andreas Krennmair <ak@synflood.at>
