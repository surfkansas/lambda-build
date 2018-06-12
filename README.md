# surfkansas/lambda-build

This simple Docker container is used to build AWS Lambda deployment ZIP files for Python functions on a Windows machine.  This is due to the OS differences when installing some packages (such as `pandas`).

## Requirements

To run this container, you need the following:

* Docker for Windows running with Linux containers
* An input folder that contains your Lambda function and a `requirements.txt` file
* An output folder to export the results

## Usage

To build a Lambda function, you would run this container with the following command:

```
docker run -v <input-path>:/build/in:ro -v <output-path>:/build/out surfkansas/lambda-build
```

The `<input-path>` value should be the full path to your input folder.

The `<output-path>` value should be the full path to your input folder.

All files in the `<input-path>` folder will be recursively added to the zip file.  Also, a `pip restore` will be run on the `requirements.txt`, with the output folder being the root of the zip.

The resulting zip file will be called `lambda-build.zip` 

## Run Example

For this example, we will assume that out input folder is `c:\lambdabuild\in` and out output folder is `c:\lambdabuild\out`.

```
docker run -v c:\lambdabuild\in:/build/in:ro -v c:\lambdabuild\out:/build/out surfkansas/lambda-build
```

This will produce a deployable Lambda zip file at `c:\lambdabuild\out\lambda-build.zip`.