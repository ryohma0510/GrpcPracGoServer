readonly OUTPUT_DIR="./generated"
readonly PROTO_DIR="/usr/local/include"
mkdir -p $OUTPUT_DIR

protoc --go_out=plugins=grpc:generated --proto_path=proto ./proto/*.proto
protoc --go_out=plugins=grpc:generated --proto_path=$PROTO_DIR /usr/local/include/google/protobuf/timestamp.proto
protoc --go_out=plugins=grpc:generated --proto_path=$PROTO_DIR /usr/local/include/google/protobuf/empty.proto
