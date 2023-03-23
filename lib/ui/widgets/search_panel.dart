import 'package:flutter/material.dart';
import 'package:good_first_issue/models/projects.dart';

class SearchPanel extends StatefulWidget {
  const SearchPanel({
    Key? key,
    required this.onSearchChanged,
    required this.initialOrganization,
  }) : super(key: key);

  final ValueChanged<String?> onSearchChanged;
  final String initialOrganization;

  @override
  SearchPanelState createState() {
    return SearchPanelState();
  }
}

class SearchPanelState extends State<SearchPanel> {
  var isExpanded = false;
  var organization = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      organization = widget.initialOrganization;
    });
  }

  void close() {
    setState(() => isExpanded = false);
  }

  void onSubmit(String? newOrganization) {
    setState(() {
      organization = newOrganization ?? '';
      isExpanded = !isExpanded;
    });

    widget.onSearchChanged(newOrganization);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final buttonColor = Theme.of(context).colorScheme.secondary;
    final formKey = GlobalKey<FormState>();

    return ExpansionPanelList(
      expansionCallback: (i, bool val) =>
          setState(() => isExpanded = !isExpanded),
      children: [
        ExpansionPanel(
            body: Form(
              key: formKey,
              child: FormField(
                initialValue: organization,
                onSaved: (String? organization) {
                  onSubmit(organization);
                },
                builder: (FormFieldState<String> field) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 220,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: organizations(field),
                          ),
                        ),
                      ),
                      const Divider(height: 2.0),
                      ButtonBar(
                        children: <Widget>[
                          TextButton(
                            onPressed: close,
                            child: const Text("CANCEL"),
                          ),
                          TextButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStateColor.resolveWith(
                                    (states) => buttonColor,),),
                            onPressed: () {
                              formKey.currentState?.save();
                            },
                            child: const Text("SAVE"),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
            headerBuilder: (BuildContext context, bool val) {
              return panelHeader(
                textTheme: textTheme,
                title: projects[organization]!['name']!,
              );
            },
            isExpanded: isExpanded,),
      ],
    );
  }
}

List<Widget> organizations(FormFieldState<String> field) {
  List<Widget> widgets = [];
  for (var key in projects.keys) {
    var title = projects[key]!['name']!;
    var value = key;

    widgets.add(
      Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 5,
            child: RadioListTile<String>(
              value: value,
              title: Text(title),
              groupValue: field.value,
              onChanged: field.didChange,
            ),
          ),
        ],
      ),
    );
  }

  return widgets;
}

Widget panelHeader({
  required TextTheme textTheme,
  required String title,
}) {
  return Row(
    children: <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(
            'Organization',
            style: textTheme.titleMedium,
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: textTheme.bodySmall
                ?.copyWith(fontSize: textTheme.titleMedium?.fontSize),
          ),
        ),
      ),
    ],
  );
}
