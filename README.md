WSDL-Viewer
===========

Is a fork of [wsdl-viewer](http://tomi.vanek.sk/index.php?page=wsdl-viewer)

The point of this fork is to make the output of the original a bit more modern
and user friendly.

Usage
-----

The all-in-one xsl transformation file wsdl-viewer.xsl can either be
included as a stylesheet in your wsdl file or an xslt processor can be used to
convert the wsdl file to a static html file. 

### Included in stylesheet ###

Add the <?xml-stylesheet type="text/xsl" href="wsdl-viewer.xsl"?>
After the prolog in your wsdl file. Prolog being the <?xml...> -tag.


### Processed ###

Ubuntu example:
> sudo apt-get install xsltproc
> xsltproc wsdl-viewer.xsl your.wsdl > your.html


Buildin
-------

Use the ant build script in the build directory.

> cd build
> ant

This creates a new all-in-one xslt file for you to use as described in usage.
