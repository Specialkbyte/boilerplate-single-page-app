# Boilerplate Static
A single-page backbone static app that is easily deployable. The project is built using CoffeeScript, SASS and Jade instead of JavaScript, CSS and HTML respectively. 

## Motivation
To allow developers skip the often long and complex setup of a static app that is easily deployable

## Development
#### Setup & Dependencies
You will need to install the following dependencies:

* node
* npm
* bower

Once you have those dependencies installed execute the following script, found in the root of the project, to install the build dependencies and the front-end dependencies like Foundation and Backbone.

```
./setup.sh
```

#### Developing

##### What files do I edit?
You should only edit the files inside the `/static/src/` directory. This is where the coffeescript, SASS and jade files are located. You do **not** want to edit the files inside the `/static/build/` directory. These files are automatically generated by the grunt task runner.

You can install front-end dependencies using bower. These are installed into the `/static/components/` directory. You shouldn't edit code in here either. As this directory is build with a clean set of packages on every deploy build.

##### Grunt Task Runner
This project is setupt to run grunt to build the intermediary languages like coffeescript and SASS into javascript and CSS. In a terminal window run and leave running while developing:

```
grunt watch
```

This starts the grunt filewatcher that will generate the output of the coffeescript, sass, and jade files whenever you change them. Otherwise when you change source files they will have no affect.

In local mode grunt compiles each coffeescript individually and then allows requirejs to import them as needed. This is great for development as you aren't trying to deal with one large concatted javascript file. In a deployed environment grunt compiles all the javascript into one minified javascript blob. To simulate that mode locally you can run 

```
grunt deploy
```

to simulate the QA deployment environment.

##### Serving the files locally
I suggest that you then run a simple http server to serve the static files while in development. Since you have installed node already you can use the node http server by running this command in the `/static/` directory of the project.

```
http-server -c-1
```

Runs a simple http server at http://localhost:8080 without any caching enabled (useful when developing)