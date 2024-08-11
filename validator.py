from lxml import etree

xml_file = 'library.xml'
xsd_file = 'librdef.xsd'

xml_doc = etree.parse(xml_file)
xsd_doc = etree.parse(xsd_file)
xmlschema = etree.XMLSchema(xsd_doc)

is_valid = xmlschema.validate(xml_doc)

if is_valid:
    print("XML is valid.")
else:
    print("XML is invalid.")
    print(xmlschema.error_log)
