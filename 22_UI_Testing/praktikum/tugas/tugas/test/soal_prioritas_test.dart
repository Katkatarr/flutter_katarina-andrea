import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas/main.dart';

void main() {
  testWidgets('UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HelloWord());

    // Verify that the app starts with an empty list of contacts.
    expect(find.text('List Contact'), findsOneWidget);
    expect(find.byType(ListTile), findsNothing);

    // Tap on the "Create New Contacts" button and fill in the form.
    await tester.tap(find.text('Submit'));
    await tester.pump();

    // Verify that the form validation works.
    expect(find.text('List Contact'), findsOneWidget);
    expect(find.byType(ListTile), findsNothing);

    // Fill in the form with valid data.
    await tester.enterText(findInputDecoration('Nama'), 'John Doe');
    await tester.enterText(findInputDecoration('Phone Number'), '+123456789');
    await tester.tap(find.text('Submit'));
    await tester.pump();

    // Verify that the new contact appears in the list.
    expect(find.text('List Contact'), findsOneWidget);
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('+123456789'), findsOneWidget);

    // Tap on the edit button for the first contact.
    await tester.tap(find.byIcon(Icons.edit));
    await tester.pump();

    // Verify that the form is populated with the correct data.
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('+123456789'), findsOneWidget);

    // Update the contact and submit.
    await tester.enterText(findInputDecoration('Nama'), 'Jane Doe');
    await tester.tap(find.text('Submit'));
    await tester.pump();

    // Verify that the updated contact appears in the list.
    expect(find.text('List Contact'), findsOneWidget);
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.text('Jane Doe'), findsOneWidget);
    expect(find.text('+123456789'), findsOneWidget);

    // Tap on the delete button for the first contact.
    await tester.tap(find.byIcon(Icons.delete));
    await tester.pump();

    // Verify that the contact is removed from the list.
    expect(find.text('List Contact'), findsOneWidget);
    expect(find.byType(ListTile), findsNothing);
  });
}

Finder findInputDecoration(String labelText) {
  return find.byWidgetPredicate(
    (Widget widget) {
      if (widget is InputDecorator) {
        final InputDecoration decoration = widget.decoration as InputDecoration;
        return decoration.labelText == labelText;
      }
      return false;
    },
    description: 'find InputDecorator with label $labelText',
  );
}
