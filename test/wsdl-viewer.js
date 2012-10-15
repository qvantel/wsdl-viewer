function collapse(element) {
    element.attr('class', 'collapsed');
    element.children('path').attr('d', "M0,16V0l8,8L0,16z");
}

function expand(element) {
    element.attr('class', 'expanded');
    element.children('path').attr('d', "M0,8h16l-8,8L0,8z");
    
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




