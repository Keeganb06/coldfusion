<cfquery datasource="cfbookclub" name="qBookTitles">
  SELECT title, bookdescription, genre FROM Books
</cfquery>


<html>
  <head>
    <title>Hello World, Keegan</title>
  </head>  
  <body>
    <cfset greeting="Hello World!">
    <cfoutput>#greeting#</cfoutput>

    <table>
      <tr>
          <th>Title</th>
          <th>Description</th>
          <th>Genre</th>
      </tr>
      <cfoutput query="qBookTitles">
          <tr>
              <td>#qBookTitles.title#</td>
              <td>#qBookTitles.bookdescription#</td>
              <td>#qBookTitles.genre#</td>
          </tr>
      </cfoutput>
  </table>
  </body>
</html>