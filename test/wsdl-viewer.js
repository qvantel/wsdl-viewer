function collapse(element) {
    element.attr('class', 'collapsed');
    element.attr('height', "16px");
    element.attr('width', "8px");
    element.attr('enable-background', "new 0 0 8 16");
    element.each(function(index,node) {
        node.viewBox.baseVal.x = 0;
        node.viewBox.baseVal.y = 0;
        node.viewBox.baseVal.width = 8;
        node.viewBox.baseVal.height = 16;
    });
    element.children('path').attr('d', "M0,16V0l8,8L0,16z");
}

function expand(element) {
    element.attr('class', 'expanded');
    element.attr('height', "8px");
    element.attr('width', "16px");
    element.attr('enable-background', "new 0 0 16 8");
    element.each(function(index,node) {
        node.viewBox.baseVal.x = 0;
        node.viewBox.baseVal.y = 0;
        node.viewBox.baseVal.width = 16;
        node.viewBox.baseVal.height = 8;
    });
    element.children('path').attr('d', "M0,0h16L8,8L0,0z");
    
}

$(document).ready(function() {
    $(".porttitle").click(function() {
        var portid = "#port-" + $(this).attr('id').match(/(\w+)$/gm);
        var svg = $(this).children('svg').first();
        console.log(svg);
        if (svg.is(".expanded")) {
            collapse(svg);
        } else {
            expand(svg);
        }
        $(this).next(".portcontent").slideToggle(100);
        $(portid).slideToggle(100);
    });
});



function pagingInit()
{
	var nav = document.getElementById("nav");
	var tabs = nav.getElementsByTagName("li");
	for(ii = 0; ii < nav.length; ++ii) {
		tabs[ii].className = "close";
		aa = nav[ii].getElementsByTagName("a")
//		aa.onclick = function() { activate(this.href); return false; }
		if ( ii = 0 ) {
			aa.className = "current";
		}
	}
	print("DONE!");
}

function pagingActivate(name)
{
// 	var page
//   if (curHeader.className=="close")
//   {
//     curHeader.className="";
//     curHeader.firstChild.className="";
//   }
//   else if (curHeader.className=="")
//   {
//     curHeader.className="close";
//     curHeader.firstChild.className="close";
//   }
}




