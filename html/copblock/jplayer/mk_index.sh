#!/bin/absh

echo "<html><body><table>";
for i in *.html; do
	echo "<tr><td><a href=\"$i\">$i</a></td></tr>" ;
done
echo "</table></body></html>";
