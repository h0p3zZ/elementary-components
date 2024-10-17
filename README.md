# Elementary Component Library
> For more information on Elementary click [here](https://github.com/sliemeobn/elementary)

**Combines component libraries for HTML rendering in Swift**

[Libraries](#libraries) | [Motivation](#motivation) | [Discussion](https://github.com/h0p3zZ/elementary-components/discussions)

## Use it

Add the dependency to `Package.swift`
```swift
.package(url: "https://github.com/h0p3zZ/elementary-components.git", from: "0.0.1")
```

## Libraries

**List of component-libraries**
- [Shoelace](#shoelace)

### [Shoelace](https://shoelace.style)

```swift
.product(name: "ElementarySheolace", package: "elementary-shoelace")
```

**🚧 Under Construction 🚧**


### 🚧 Work in progress 🚧

The list of built-in components, libraries, attributes is far from complete, but adding them is really simple (and can be done in external packages as well).

Feel free to open a PR with additional components/libraries/attributes that are missing from the model.

## Motivation 

As creating custom-components with their corresponding attributes can be quite cumbersome,
I created this library/collection of libraries to improve ease of use and to extend [Elementary](https://github.com/sliemeobn/elementary) as a whole

## Future directions

- Add library for all current shoelace components
- Create custom components (Paginator, DataTable, DataTableFilter) using Elementary and [ElemtnaryHTMX](https://github.com/sliemeobn/elementary-htmx)
- Add support for [WebAwesome](https://webawesom.com)
- Include other potential HTML only or HTML+JS libraries
