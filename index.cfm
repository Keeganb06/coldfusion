<cfinclude template="header.cfm">


<!doctype html>
<html>
    <head>
    </head>
    <body>

        <a href="helloWorld.cfm" target="_blank">Hello World!</a><br>

        <cfoutput>Today is #DateFormat(Now(), "ddd dd mmmm, yyyy")#<br></cfoutput>
        
        <cfloop from="1" to="5" index="i">
        <cfoutput>#i#<br></cfoutput>
        </cfloop>
        
        <cfset anArray = ["item1", "item2"]>
        <cfdump var=#anArray#>
        <cfset ArrayAppend(anArray, "item3")>
        <cfdump var=#anArray#>
        <cfoutput>#RandRange(1,20)#</cfoutput>

        <cfchart
            format="png"
            scalefrom="0"
            scaleto="15">
            <cfchartseries
                type="bar"
                serieslabel="Site Traffic '21"
                seriescolor="purple">
                <cfchartdata item="Jan" value="10">
                <cfchartdata item="Feb" value="4">
                <cfchartdata item="Mar" value="7">
            </cfchartseries>
        </cfchart>         
    </body>
</html>


<cfset dateAccessed = "This page was accessed at this time: " & now()>

<cffile action="append"
    file="D:\ColdFusion\cfusion\wwwroot\accessedLog.txt"
    output="#dateAccessed#"
    addNewLine="yes"
        >

<cfinclude template="footer.cfm">

