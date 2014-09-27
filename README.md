appium-project
==============

This is the repository of learning appium for native app and mobile web. Will document notes in this repository.

## Appium Ruby Console
It's really useful for development and debug. To open the ARC, just create a `appium.txt` with the following contents
```
[caps]
platformName = "ios"
app = "./UICatalog.app.zip"
deviceName = "iPhone Simulator"
versionNumber = "7.1"
```
Then in the terminal run `arc` (make sure you have appium running in another terminal), you should get it run.

## Appium commands
- `page` command prints a list of elements that are of interest.
- `find` command in the appium ruby gem will search for a partial case insensitive match on a visible element with name, hint, label, or value containing the target value.
- `text 'UICatalog'` finds a static text that contains UICatalog.
- `text_exact 'UICatalog'` is looking for an exact match.
  + The difference between text and find is the class restriction. Find will match on any class while text will only match on a UIAStaticText element
- `id` command will look for the text that the id resolves to, regardless of class.
- To use an id with a class restriction, resolve it first: `text(resolve_id('ButtonsExplain')).name`.
- The `page_class` command will give you an overview of what classes exist on the current page.
- To view all possible elements, there’s a source command