# voxgraph

Original repository: https://github.com/ethz-asl/voxgraph


## Build
```bash
cd voxgraph/docker
./build.sh
```

## Run

### On host:
```bash
roscore
```

### On docker image:
```bash
cd voxgraph/docker
./run.sh -v arche_flight1_2ms_indoor-outdoor-figure-8.bag:/tmp/arche_flight1_2ms_indoor-outdoor-figure-8.bag

roslaunch roslaunch voxgraph arche_demo.launch rosbag_path:=/tmp/arche_flight1_2ms_indoor-outdoor-figure-8.bag
```

arche_flight1_2ms_indoor-outdoor-figure-8.bag: http://robotics.ethz.ch/~asl-datasets/2020_voxgraph_arche
