## Table of Contents
<details>
    <summary>Table of Contents</summary>
    <ul>
        <li><a href="#installation">Installation</a></li>
        <li>
            <a href="#documentation">Documentation</a>
            <ul>
                <li><a href="#finding-best-route-cost">Finding best route cost</a></li>
                <li><a href="#finding-best-route">Finding best route</a></li>
            </ul>
      </li>
        <li><a href="#contributing">Contributing</a></li>

</details>

## Installation

Installation is pretty standard:

```sh
$ gem install travel_salesman
```

or with using Bundler, add this line to your Gemfile

```rb
gem 'travel_salesman'
```
  
  ## Documentation

### Finding best route cost

Route start and end at first index of the 2D array. This 2D array is your distance matrix
  
```rb
  distance_matrix = [
    [0, 10, 15, 20],
    [5, 0, 9, 10],
    [6, 13, 0, 12],
    [8, 8, 9, 0]
]

TravelSalesman.new(distance_matrix).get_tour_distance
# => 35 
```
  
### Finding best route
 
Route start and end at first index of the 2D array. This 2D array is your distance matrix
  
  ```rb
  distance_matrix = [
    [0, 10, 15, 20],
    [5, 0, 9, 10],
    [6, 13, 0, 12],
    [8, 8, 9, 0]
]

puts TravelSalesman.new(distance_matrix).get_tour_route
# => [0, 1, 3, 2, 0]

```
  
## Contributing

People behind the 💻
<table>
  <tr>
    <td align="center"><a href="https://www.linkedin.com/in/atagunay/"><img src="https://avatars.githubusercontent.com/u/69992550?s=400&u=86cfe8b995883b055b76cf335cc5427f2525bdd1&v=4" width="100px;" alt=""/><br /><sub><b>Ata Günay</b></sub></a><br /></td>
  </tr>
</table>
  
