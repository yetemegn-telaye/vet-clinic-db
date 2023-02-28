## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [vet-clinic-db] <a name="about-project"></a>


**[vet-clinic-db]** is a database holding data of a vet clinic.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">PostgreSQL</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Create tables in vet_clinic database**
- **Populate data in the tables**
- **Retrieve information using queries**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](https://yourdeployedapplicationlink.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

To Download PostgreSQL 

### Setup

Clone this repository to your desired folder:
  ```
  cd my-folder
  git clone https://github.com/yetemegn-telaye/vet-clinic-db.git
  ```

### Install

Install PostgreSQL to run the queries from the files in this repository:
https://www.postgresql.org/

### Usage

Create a database:
```
  createdb vet_clinic
```
Activate postgres with the database in command line:
```
  psql vet_clinic
```
Connect to the Database:
```
  \c vet_clinic
```

### Run tests

To run tests, run the following command:

```sh
  psql
```


### Deployment
Open the files from the cloned repository:

- Open schema.sql and run the query to create the animals table
- Open data.sql to insert data into the animals table
- Open queries.sql to run different queries on the animals table

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Yetemegn Lemma**

- GitHub: [@githubhandle](https://github.com/yetemegn-telaye)
- Twitter: [@twitterhandle](https://twitter.com/Yetemegn19)
- LinkedIn: [LinkedIn](linkedin.com/in/yetemegn-lemma)


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Usage of transaction to update and delete records**
- [ ] **Usage of aggregate functions to answer analytical questions**
- [ ] **Usage of GROUP BY to answer analytical questions**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project feel free to come up with new functionalities to make the project bigger.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank microverseinc

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
