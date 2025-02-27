
```meta-bind-button
style: primary
label: <name>
actions:
  - type: inlineJS
    code: |-
      let urls = [
        ``,
        ``
      ];
      urls.forEach(url => {
        window.open(url, '_blank');
      });
```