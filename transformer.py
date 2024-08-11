from lxml import etree

xml_file = 'library.xml'
xsl_file = 'transform.xsl'

dom = etree.parse(xml_file)
xslt = etree.parse(xsl_file)
transform = etree.XSLT(xslt)

newdom = transform(dom)
with open("library_output.html", "w") as f:
    f.write(str(newdom))
