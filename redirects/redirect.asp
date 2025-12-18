<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.xml");
  else 
    Response.Redirect("https://hl7.org/fhir/<%tgt%>.html");
%>

<!DOCTYPE html>
<html>
<body>
Internal Error - redirect failed?
</body>
</html>
