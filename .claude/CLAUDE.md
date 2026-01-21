## Shared Rules

- Should follow actual latest information.
  - Do not lie and imagine.
  - As much as possible, refer to official documents.

## Natural Language Rules

- If the user ask with English, respond in English.
- If the user ask with Japanese, respond in Japanese.

## Implementation Rules

- If the user ask to install plugins then first implementation should be default setting.
  - Should not be set custtom keymap at first.
- If the user ask to install plugins then add new plugin file and load the plugin.
  - Plugin name shoud be kebuab-case.
  - Plugin additon to `<root>/lua/plugins/{PLUGIN_NAME}.lua`.
  - Load plugin in `<root>/lua/config/lazy.lua`.

## Invastigation Rules

- If the user ask to investigate plugins, should meet the these requirements:
  - Should provide 3 more list of plugins.
  - Should provide 3 more merits and 3 more demerits of the plugin.
  - Should provide to compare with at least 2 similar plugins.
  - Should provide official document link of the plugin.
  - Should provide how many stars the plugin has on GitHub.

