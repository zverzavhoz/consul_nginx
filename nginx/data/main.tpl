<!DOCTYPE html>
<html>
<head>
<title>CONSUL + NGINX in DOCKER</title>
<link rel="stylesheet" href="style.css" type="text/css"  />
</head>
<body>
<h1>Wow! Fucking shit!!! ))) Yeeea</h1>
<p>If you see this page, the nginx + consul is successfully fucked and sucked.</p>
<table class="simple-little-table" cellspacing='0'>
	<tr>
		<th>DATACENTERS</th>
		<th></th>
	</tr><!-- Table Header -->
{{ range datacenters }}
	<tr>
		<td>{{ . }}</td>
		<td></td>
	</tr><!-- Table Row -->
{{ end }}
	<tr>
		<th>SERVICES</th>
		<th></th>
	</tr><!-- Table Header -->
{{range services}}
	<tr>
		<td>{{.Name}}</td>
		<td>{{range service .Name}}{{.Address}}<br>{{end}}</td>
	</tr><!-- Table Row -->
{{ end }}
	<tr>
		<th>KEY</th>
		<th>VALUE</th>
	</tr><!-- Table Header -->
{{ range tree "/"}}
	<tr>
		<td>{{ .Key }}</td>
		<td>{{ .Value }}</td>
	</tr><!-- Table Row -->
{{ end }}
</body>
</html>

