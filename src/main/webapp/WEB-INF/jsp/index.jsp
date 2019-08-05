<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
   <meta charset="UTF-8"/>
   <meta name="Author" content="Anil K. Vijendran" />
   <title>JSP Examples</title>
   <style type="text/css">
   img { border: 0; }
   th { text-align: left; }
   tr { vertical-align: top; }
   </style>
</head>
<body>

<h1 align="center">My Contact List</h1>
    <br/>
    <table border="1" cellpadding="10">
        <tr>
            <th>Name</th><th>Email</th><th>Country</th>
        </tr>
        <c:forEach var="contact" items="${contacts}">
        <tr>
            <td>${contact.getName()}</td>
            <td>${contact.getEmail()}</td>
            <td>${contact.getCountry()}</td>
        </tr>     
        </c:forEach>
    </table>

<h1>JSP
Samples</h1>
<p>This is a collection of samples demonstrating the usage of different
parts of the Java Server Pages (JSP) specification.  Both JSP 2.0 and
JSP 1.2 examples are presented below.
<p>These examples will only work when these pages are being served by a
servlet engine; of course, we recommend
<a href="https://tomcat.apache.org/">Tomcat</a>.
They will not work if you are viewing these pages via a
"file://..." URL.
<p>To navigate your way through the examples, the following icons will
help:</p>
<ul style="list-style-type: none; padding-left: 0;">
<li><img src="images/execute.gif" alt=""> Execute the example</li>
<li><img src="images/code.gif" alt=""> Look at the source code for the example</li>
<li><img src="images/return.gif" alt=""> Return to this screen</li>
</ul>

<p>Tip: For session scoped beans to work, the cookies must be enabled.
This can be done using browser options.</p>
<h2>JSP 2.0 Examples</h2>

<table style="width: 85%;">
<tr>
<th colspan="3">Expression Language</th>
</tr>

<tr>
<td>Basic Arithmetic</td>
<td style="width: 30%;"><a href="jsp2/el/basic-arithmetic.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/el/basic-arithmetic.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/el/basic-arithmetic.html"><img src="images/code.gif" alt=""></a><a href="jsp2/el/basic-arithmetic.html">Source</a></td>
</tr>

<tr>
<td>Basic Comparisons</td>
<td style="width: 30%;"><a href="jsp2/el/basic-comparisons.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/el/basic-comparisons.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/el/basic-comparisons.html"><img src="images/code.gif" alt=""></a><a href="jsp2/el/basic-comparisons.html">Source</a></td>
</tr>

<tr>
<td>Implicit Objects</td>
<td style="width: 30%;"><a href="jsp2/el/implicit-objects.jsp?foo=bar"><img src="images/execute.gif" alt=""></a><a href="jsp2/el/implicit-objects.jsp?foo=bar">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/el/implicit-objects.html"><img src="images/code.gif" alt=""></a><a href="jsp2/el/implicit-objects.html">Source</a></td>
</tr>
<tr>

<td>Functions</td>
<td style="width: 30%;"><a href="jsp2/el/functions.jsp?foo=JSP+2.0"><img src="images/execute.gif" alt=""></a><a href="jsp2/el/functions.jsp?foo=JSP+2.0">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/el/functions.html"><img src="images/code.gif" alt=""></a><a href="jsp2/el/functions.html">Source</a></td>
</tr>

<tr>
<td>Composite Expressions</td>
<td style="width: 30%;"><a href="jsp2/el/composite.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/el/composite.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/el/composite.html"><img src="images/code.gif" alt=""></a><a href="jsp2/el/composite.html">Source</a></td>
</tr>


<tr>
<th colspan="3"><br />SimpleTag Handlers and JSP Fragments</th>
</tr>

<tr>
<td>Hello World Tag</td>
<td style="width: 30%;"><a href="jsp2/simpletag/hello.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/simpletag/hello.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/simpletag/hello.html"><img src="images/code.gif" alt=""></a><a href="jsp2/simpletag/hello.html">Source</a></td>
</tr>

<tr>
<td>Repeat Tag</td>
<td style="width: 30%;"><a href="jsp2/simpletag/repeat.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/simpletag/repeat.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/simpletag/repeat.html"><img src="images/code.gif" alt=""></a><a href="jsp2/simpletag/repeat.html">Source</a></td>
</tr>

<tr>
<td>Book Example</td>
<td style="width: 30%;"><a href="jsp2/simpletag/book.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/simpletag/book.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/simpletag/book.html"><img src="images/code.gif" alt=""></a><a href="jsp2/simpletag/book.html">Source</a></td>
</tr>

<tr>
<th colspan="3"><br />Tag Files</th>
</tr>

<tr>
<td>Hello World Tag File</td>
<td style="width: 30%;"><a href="jsp2/tagfiles/hello.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/tagfiles/hello.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/tagfiles/hello.html"><img src="images/code.gif" alt=""></a><a href="jsp2/tagfiles/hello.html">Source</a></td>
</tr>

<tr>
<td>Panel Tag File</td>
<td style="width: 30%;"><a href="jsp2/tagfiles/panel.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/tagfiles/panel.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/tagfiles/panel.html"><img src="images/code.gif" alt=""></a><a href="jsp2/tagfiles/panel.html">Source</a></td>
</tr>

<tr>
<td>Display Products Example</td>
<td style="width: 30%;"><a href="jsp2/tagfiles/products.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/tagfiles/products.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/tagfiles/products.html"><img src="images/code.gif" alt=""></a><a href="jsp2/tagfiles/products.html">Source</a></td>
</tr>

<tr>
<th colspan="3"><br />New JSP XML Syntax (.jspx)</th>
</tr>

<tr>
<td>XHTML Basic Example</td>
<td style="width: 30%;"><a href="jsp2/jspx/basic.jspx"><img src="images/execute.gif" alt=""></a><a href="jsp2/jspx/basic.jspx">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/jspx/basic.html"><img src="images/code.gif" alt=""></a><a href="jsp2/jspx/basic.html">Source</a></td>
</tr>

<tr>
<td>SVG (Scalable Vector Graphics)</td>
<td style="width: 30%;"><a href="jsp2/jspx/svgexample.html"><img src="images/execute.gif" alt=""></a><a href="jsp2/jspx/svgexample.html">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/jspx/textRotate.html"><img src="images/code.gif" alt=""></a><a href="jsp2/jspx/textRotate.html">Source</a></td>
</tr>

<tr>
<th colspan="3"><br />Other JSP 2.0 Features</th>
</tr>

<tr>
<td>&lt;jsp:attribute&gt; and &lt;jsp:body&gt;</td>
<td style="width: 30%;"><a href="jsp2/jspattribute/jspattribute.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/jspattribute/jspattribute.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/jspattribute/jspattribute.html"><img src="images/code.gif" alt=""></a><a href="jsp2/jspattribute/jspattribute.html">Source</a></td>
</tr>

<tr>
<td>Shuffle Example</td>
<td style="width: 30%;"><a href="jsp2/jspattribute/shuffle.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/jspattribute/shuffle.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/jspattribute/shuffle.html"><img src="images/code.gif" alt=""></a><a href="jsp2/jspattribute/shuffle.html">Source</a></td>
</tr>

<tr>
<td>Attributes With Dynamic Names</td>
<td style="width: 30%;"><a href="jsp2/misc/dynamicattrs.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/misc/dynamicattrs.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/misc/dynamicattrs.html"><img src="images/code.gif" alt=""></a><a href="jsp2/misc/dynamicattrs.html">Source</a></td>
</tr>

<tr>
<td>JSP Configuration</td>
<td style="width: 30%;"><a href="jsp2/misc/config.jsp"><img src="images/execute.gif" alt=""></a><a href="jsp2/misc/config.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsp2/misc/config.html"><img src="images/code.gif" alt=""></a><a href="jsp2/misc/config.html">Source</a></td>
</tr>

</table>

<h2>JSP 1.2 Examples</h2>
<table style="width: 85%;">
<tr>
<td>Numberguess</td>

<td style="width: 30%;"><a href="num/numguess.jsp"><img src="images/execute.gif" alt=""></a><a href="num/numguess.jsp">Execute</a></td>

<td style="width: 30%;"><a href="num/numguess.html"><img src="images/code.gif" alt=""></a><a href="num/numguess.html">Source</a></td>
</tr>

<tr>
<td>Date</td>

<td style="width: 30%;"><a href="dates/date.jsp"><img src="images/execute.gif" alt=""></a><a href="dates/date.jsp">Execute</a></td>

<td style="width: 30%;"><a href="dates/date.html"><img src="images/code.gif" alt=""></a><a href="dates/date.html">Source</a></td>
</tr>

<tr>
<td>Snoop</td>

<td style="width: 30%;"><a href="snp/snoop.jsp"><img src="images/execute.gif" alt=""></a><a href="snp/snoop.jsp">Execute</a></td>

<td style="width: 30%;"><a href="snp/snoop.html"><img src="images/code.gif" alt=""></a><a href="snp/snoop.html">Source</a></td>
</tr>

<tr>
<td>ErrorPage</td>

<td style="width: 30%;"><a href="error/error.html"><img src="images/execute.gif" alt=""></a><a href="error/error.html">Execute</a></td>

<td style="width: 30%;"><a href="error/er.html"><img src="images/code.gif" alt=""></a><a href="error/er.html">Source</a></td>
</tr>

<tr>
<td>Carts</td>

<td style="width: 30%;"><a href="sessions/carts.html"><img src="images/execute.gif" alt=""></a><a href="sessions/carts.html">Execute</a></td>

<td style="width: 30%;"><a href="sessions/crt.html"><img src="images/code.gif" alt=""></a><a href="sessions/crt.html">Source</a></td>
</tr>

<tr>
<td>Checkbox</td>

<td style="width: 30%;"><a href="checkbox/check.html"><img src="images/execute.gif" alt=""></a><a href="checkbox/check.html">Execute</a></td>

<td style="width: 30%;"><a href="checkbox/cresult.html"><img src="images/code.gif" alt=""></a><a href="checkbox/cresult.html">Source</a></td>
</tr>

<tr>
<td>Color</td>

<td style="width: 30%;"><a href="colors/colors.html"><img src="images/execute.gif" alt=""></a><a href="colors/colors.html">Execute</a></td>

<td style="width: 30%;"><a href="colors/clr.html"><img src="images/code.gif" alt=""></a><a href="colors/clr.html">Source</a></td>
</tr>

<tr>
<td>Calendar</td>

<td style="width: 30%;"><a href="cal/login.html"><img src="images/execute.gif" alt=""></a><a href="cal/login.html">Execute</a></td>

<td style="width: 30%;"><a href="cal/calendar.html"><img src="images/code.gif" alt=""></a><a href="cal/calendar.html">Source</a></td>
</tr>

<tr>
<td>Include</td>

<td style="width: 30%;"><a href="include/include.jsp"><img src="images/execute.gif" alt=""></a><a href="include/include.jsp">Execute</a></td>

<td style="width: 30%;"><a href="include/inc.html"><img src="images/code.gif" alt=""></a><a href="include/inc.html">Source</a></td>
</tr>

<tr>
<td>Forward</td>

<td style="width: 30%;"><a href="forward/forward.jsp"><img src="images/execute.gif" alt=""></a><a href="forward/forward.jsp">Execute</a></td>

<td style="width: 30%;"><a href="forward/fwd.html"><img src="images/code.gif" alt=""></a><a href="forward/fwd.html">Source</a></td>
</tr>

<tr>
<td>Plugin</td>

<td style="width: 30%;"><a href="plugin/plugin.jsp"><img src="images/execute.gif" alt=""></a><a href="plugin/plugin.jsp">Execute</a></td>

<td style="width: 30%;"><a href="plugin/plugin.html"><img src="images/code.gif" alt=""></a><a href="plugin/plugin.html">Source</a></td>
</tr>

<tr>
<td>JSP-Servlet-JSP</td>

<td style="width: 30%;"><a href="jsptoserv/jsptoservlet.jsp"><img src="images/execute.gif" alt=""></a><a href="jsptoserv/jsptoservlet.jsp">Execute</a></td>

<td style="width: 30%;"><a href="jsptoserv/jts.html"><img src="images/code.gif" alt=""></a><a href="jsptoserv/jts.html">Source</a></td>
</tr>

<tr>
<td>Custom tag example</td>

<td style="width: 30%;"><a href="simpletag/foo.jsp"><img src="images/execute.gif" alt=""></a><a href="simpletag/foo.jsp">Execute</a></td>

<td style="width: 30%;"><a href="simpletag/foo.html"><img src="images/code.gif" alt=""></a><a href="simpletag/foo.html">Source</a></td>
</tr>

<tr>
<td>XML syntax example</td>
<td style="width: 30%;"><a href="xml/xml.jsp"><img src="images/execute.gif" alt=""></a><a href="xml/xml.jsp">Execute</a></td>

<td style="width: 30%;"><a href="xml/xml.html"><img src="images/code.gif" alt=""></a><a href="xml/xml.html">Source</a></td>
</tr>

</table>

<h2>Tag Plugins</h2>
<table style="width: 85%;">

<tr>
  <td>If</td>
  <td style="width: 30%;">
    <a href="tagplugin/if.jsp"><img src="images/execute.gif" alt=""></a>
    <a href="tagplugin/if.jsp">Execute</a>
  </td>
  <td style="width: 30%;">
    <a href="tagplugin/if.html"><img src="images/code.gif" alt=""></a>
    <a href="tagplugin/if.html">Source</a>
  </td>
</tr>

<tr>
  <td>ForEach</td>
  <td style="width: 30%;">
    <a href="tagplugin/foreach.jsp"><img src="images/execute.gif" alt=""></a>
    <a href="tagplugin/foreach.jsp">Execute</a>
  </td>
  <td style="width: 30%;">
    <a href="tagplugin/foreach.html"><img src="images/code.gif" alt=""></a>
    <a href="tagplugin/foreach.html">Source</a>
  </td>
</tr>

<tr>
  <td>Choose</td>
  <td style="width: 30%;">
    <a href="tagplugin/choose.jsp"><img src="images/execute.gif" alt=""></a>
    <a href="tagplugin/choose.jsp">Execute</a>
  </td>
  <td style="width: 30%;">
    <a href="tagplugin/choose.html"><img src="images/code.gif" alt=""></a>
    <a href="tagplugin/choose.html">Source</a>
  </td>
</tr>

</table>

<h2>Other Examples</h2>
<table style="width: 85%;">

<tr>
  <td>FORM Authentication</td>
  <td style="width: 30%;">
    <a href="security/protected/index.jsp"><img src="images/execute.gif" alt=""> Execute</a>
  </td>
  <td style="width: 30%;"></td>
</tr>
<tr>
  <td colspan="3">Example that demonstrates protecting a resource and
    using Form-Based authentication. To access the page the user must
    have role of either "tomcat" or "role1". By default no user
    is configured to have these roles.</td>
</tr>

</table>
</body>
</html>
