# IJO 1.0
## Description
`IJO1.0` is Minimum Viable Product(MVP) of our project "IJO" for `//slash 2022`.
This application is build to prove the feasibility of this project.
This app is running at: https://slash2022ijo.herokuapp.com/energy_usages

<img width="1356" alt="Screen Shot 2022-09-25 at 11 10 36" src="https://user-images.githubusercontent.com/91676145/192136624-0cdeccfb-d58c-48a3-9a38-754d7ce39756.png">


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
![ezgif com-gif-maker](https://user-images.githubusercontent.com/91676145/192136643-107f3e79-66d2-45fa-981c-ae4e6c1c71aa.gif)
