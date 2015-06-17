function initializeViz() {
		  var placeholderDiv = document.getElementsByClassName("tableauPlaceholder");
		  var url = "http://public.tableau.com/views/4_Cats_Exploration/Test_a?:embed=y&:loadOrderID=0&:showTabs=y&:display_count=yes";
		  var options = {
		    width: placeholderDiv.offsetWidth,
		    height: placeholderDiv.offsetHeight,
		    hideTabs: false,
		    hideToolbar: false,
		    onFirstInteractive: function () {
		      workbook = viz.getWorkbook();
		      activeSheet = workbook.getActiveSheet();
		    }
		  };
		  viz = new tableau.Viz(placeholderDiv, url, options);
}    