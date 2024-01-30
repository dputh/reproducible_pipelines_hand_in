## How to run the Pipeline

- Clone the repository:
  git clone git@github.com:dputh/reproducible_pipelines_hand_in.git
- Build the docker file (in the cloned repository):
  docker build -t pipe .
- Run the docker image (change /absolute/path/ to the path of the cloned repository):
  docker run --rm --name container -v /absolute/path/fig:/home/graphs/shared_folder:rw pipe

You should obtain a figure in the /fig directory.

## GitHub Actions

This whole process is done on every push of this repository. The output figure can be seen as an artifact
of the last GitHub Actions run.
