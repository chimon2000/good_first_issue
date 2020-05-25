import 'package:good_first_issue/models/issue.dart';

List<Issue> getIssues() => [
      Issue(
        title: "title",
        url: 'https://google.com',
        bodyHTML: bodyHtml,
        repository: Repository(nameWithOwner: 'owner'),
      ),
    ];

var bodyHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
     <a href="https://www.w3schools.com/html">w3schools</a> 
</body>
</html>
''';
