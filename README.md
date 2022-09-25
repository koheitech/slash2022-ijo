# IJO 1.0
## Description
`IJO1.0` is Minimum Viable Product(MVP) of our project "IJO" for `//slash 2022`.
This application is build to prove the feasibility of this project.

## Installation
### Prerequisites
- `ruby: 2.6.6`
- `node.js: v14.18.3`

### Installation steps
clone this repo and run;
```
bundle install
```
```
rails s
```

## Usage
This application runs on port #3000.
By sending HTTP POST request to the end point (`http://localhost:3000/energy_usages`) with following JSON object,
We may see that energy usage data is visualized in the form of bar charts.
We may use a tool such as Postman.
```
// send following JSON object for example
// you may change the value to arbitrary floating numbers
{
    "energy_usages":"170.55"
}
```